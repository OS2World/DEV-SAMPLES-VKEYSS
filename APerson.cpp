/*******************************************************************************
* FILE NAME: APerson.cpp                                                       *
*                                                                              *
* DESCRIPTION:                                                                 *
*   Class implementation of the class:                                         *
*     APerson                                                                  *
* ---------------------------------------------------------------------------- *
* Warning: This file was generated by the VisualAge C++ Visual Builder.        *
* Modifications to this source file will be lost when the part is regenerated. *
*******************************************************************************/
#ifndef _INOTIFEV_
#include <inotifev.hpp>
#endif

#ifndef _IOBSERVR_
#include <iobservr.hpp>
#endif

#ifndef _ISTDNTFY_
#include <istdntfy.hpp>
#endif

#ifndef _APERSON_
#include "APerson.hpp"
#endif

#ifndef _IVBDEFS_
#include <ivbdefs.h>
#endif

#ifndef _ITRACE_
#include <itrace.hpp>
#endif


#pragma export (APerson::readyId)
const INotificationId APerson::readyId = "APerson::readyId";

//------------------------------------------------------------------------------
// APerson :: APerson
//------------------------------------------------------------------------------
#pragma export (APerson::APerson())
APerson::APerson()
{

}     //end constructor


//------------------------------------------------------------------------------
// APerson :: ~APerson
//------------------------------------------------------------------------------
#pragma export (APerson::~APerson())
APerson::~APerson()
{

}

//------------------------------------------------------------------------------
// APerson :: initializePart
//------------------------------------------------------------------------------
#pragma export (APerson::initializePart())
APerson & APerson::initializePart()
{
   makeConnections();
   notifyObservers(INotificationEvent(readyId, *this));
   return *this;
}


//------------------------------------------------------------------------------
// APerson :: makeConnections
//------------------------------------------------------------------------------
#pragma export (APerson::makeConnections())
Boolean APerson::makeConnections()
{
   this->enableNotification();

   return true;
}


#include "aperson.cpv"