
import pox.openflow.libopenflow_01 as of
from pox.lib.util import dpid_to_str
import heapq
#from numpy.ma.timer_comparison import cur


class Link(object):
	def __init__(self, ssw, sp, dsw):
		self.ssw = ssw
		self.sp = sp
		self.dsw = dsw
	def __str__(self):
		return "%s:%s->%s"%(dpid_to_str(self.ssw), self.sp, dpid_to_str(self.dsw))
	
	def __repr__(self):
		return str(self)

	def __hash__(self):						# Allows linkToFlowMap[Link]
		return hash((self.ssw, self.sp, self.dsw))

	def __eq__(self, other):
		return (self.ssw, self.sp, self.dsw) == (other.ssw, other.sp, other.dsw)

class Path(object):
	def __init__(self, src, dst, prev, first_port):
		self.src = src
		self.dst = dst
		self.prev = prev
		self.first_port = first_port
		
	def get_linkList(self, adj):
		curSw = self.dst
		preSw = self.prev[curSw]
		linkList = []
		while preSw is not None:
			print"\tcurSw = %s \t preSw = %s"%(dpid_to_str(curSw), dpid_to_str(preSw))
			linkObj = Link(preSw, adj[preSw][curSw], curSw)
			linkList.append(linkObj)
			curSw = preSw
			preSw = self.prev[curSw]
		linkList.reverse()	# return list of links from srcSw to dstSw
		#print linkList
		return linkList
	
	def __repr__(self):				# return a printable representation of the object
		ret = dpid_to_str(self.dst)
		u = self.prev[self.dst]
		while(u != None):
			ret = dpid_to_str(u) + "->" + ret
			u = self.prev[u]
		
		return ret

	def __str__(self):
		return repr(self)
	
	def _tuple_me(self):
		
		list = [self.dst,]
		u = self.prev[self.dst]
		while u != None:
			list.append(u)
			u = self.prev[u]
		#log.debug("List path: %s", list)
		#log.debug("Tuple path: %s", tuple(list))
		return tuple(list)
	
	def __hash__(self):
		return hash(self._tuple_me())
	
	def __eq__(self, other):
		return self._tuple_me() == other._tuple_me()

class ofp_match_withHash(of.ofp_match):
	##Our additions to enable indexing by match specifications
	@classmethod
	def from_ofp_match_Superclass(cls, other):	
		match = cls()
		
		match.wildcards = other.wildcards
		match.in_port = other.in_port
		match.dl_src = other.dl_src
		match.dl_dst = other.dl_dst
		match.dl_vlan = other.dl_vlan
		match.dl_vlan_pcp = other.dl_vlan_pcp
		match.dl_type = other.dl_type
		match.nw_tos = other.nw_tos
		match.nw_proto = other.nw_proto
		match.nw_src = other.nw_src
		match.nw_dst = other.nw_dst
		match.tp_src = other.tp_src
		match.tp_dst = other.tp_dst
		return match
		
	def __hash__(self):
		return hash((self.wildcards, self.in_port, self.dl_src, self.dl_dst, self.dl_vlan, self.dl_vlan_pcp, self.dl_type, self.nw_tos, self.nw_proto, self.nw_src, self.nw_dst, self.tp_src, self.tp_dst))

class FlowPath(object):
	def __init__(self, match, path, alocQos, reqQos):
		self.match = match
		self.path = path
		self.reqQos = reqQos
		self.alocQos = alocQos
	def __hash__(self):						# Allows linkToFlowMap[Link]
		return hash((self.match, self.path))

	def __eq__(self, other):
		return (self.match, self.path) == (other.match, other.path)

class PriorityQueue:
	def __init__(self, maxQ=True ):
		self._queue = []
		self._index = 0
		self._maxQ = maxQ
	def __len__(self):
		return len(self._queue)


	def push(self, priority, item):
		if self._maxQ:
			heapq.heappush(self._queue, (-priority, self._index, item))
		else:
			heapq.heappush(self._queue, (priority, self._index, item))
		self._index += 1

	def pop(self):
		#return heapq.heappop(self._queue)[-1]		# [-1] returns fist item from right instead of the left 
		if self._maxQ:
			priority, index, item = heapq.heappop(self._queue)
			return (-priority, item)
		else:
			priority, index, item = heapq.heappop(self._queue)
			return (priority, item)




