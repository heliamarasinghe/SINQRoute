cli.py add two new functions to mininet cli to bring-down/up specified number of randomely selected links (inter-switch only).
usage:
	mininet> breaklinks [num]
		Randomly select a sample size of [num] from interswitch links and send "link [src] [dst] down" command to each of them. 
	mininet> fixlinks
		Bring up links broken ONLY through breaklinks command

Edit the file  "mininet/build/linux-x86_64-2.7/mininet/cli.py" or the cli.py file corresponding to OS and;


(i) Put following in import section
from time import sleep
import re


(ii) Put following code in "class CLI( Cmd ):"
  def do_breaklinks( self, line ):	
    args = line.split()
    if len(args) == 1:
	    linkList = []
	    for link in self.mn.links:
	        node1 = link.intf1.node.name
			node2 = link.intf2.node.name
			dev1,num1 = re.match(r"([a-z]+)([0-9]+)", node1, re.I).groups()
			if dev1 != "dc":
		    	dev2,num2 = re.match(r"([a-z]+)([0-9]+)", node2, re.I).groups()
		    	if dev2 != "dc":
					linkList.append((node1, node2))
	    print "Randomly breaking down %s links"%args[0]
        self.breakList = [ linkList[i] for i in sorted(sample(xrange(len(linkList)), int(args[0]))) ]
	    for src,dst in self.breakList:
			self.do_link( line="%s %s down"%(src, dst))
    		sleep(3)
	else:
	    error( 'usage: breaklinks [num of links]\n' )

  def do_fixlinks( self, line ):
	print "Bringing up %s links back"%len(self.breakList)
	for src,dst in self.breakList:
		self.do_link( line="%s %s up"%(src, dst))
      	sleep(1)
	self.breakList[:] = []
