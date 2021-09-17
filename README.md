SDN-Based Framework for Infrastructure as a Service Clouds, Published in 2016 IEEE 9th International Conference on Cloud Computing (CLOUD)
Fault-tolerant IaaS management for networked cloud infrastructure with SDN, Published in 2017 IEEE International Conference on Communications (ICC)
Survivable IaaS Management with SDN, Published in 2019 IEEE Transactions on Cloud Computing (Journal)

# SINQRoute


##SINQRouteMan:
  C++ source code that has following components;
  1.  SdnCtrlClient to communicate with SINQRouteCtrl API
  2.  Topology generation file to generate logical copy of substrate topology graph at resource manager level
  2.  Substrate resource information files as inputs for VN embedder
  3.  VN request creation (traffic generator: initial and periodical)
  4.  VN node embedding (initial and periodical)
  5.  VN link embedding (initial and periodical)
  6.  Project main file to combine SINQRouteCtrl data and 
      execute traffic-Generator, node-Embedder and link-embedder sequantially
  7.  Output results of embedding solution
