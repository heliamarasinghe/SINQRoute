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
