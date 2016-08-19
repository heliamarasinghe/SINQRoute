/*
 * UpdateNetState.h
 *
 *  Created on: Aug 9, 2016
 *      Author: openstack
 */

#ifndef POXINTERFACE_UPDATENETSTATE_H_
#define POXINTERFACE_UPDATENETSTATE_H_
#include "SdnCtrlClient.h"

class UpdateNetState {

public:
	static void updateVlinks(int currTslot, multimap <string, Path> chngdPathsMmap);
};

#endif /* POXINTERFACE_UPDATENETSTATE_H_ */
