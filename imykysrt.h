#ifndef _IMYKYSRT_
#define _IMYKYSRT_

#include <ivksset.h>

#ifndef _ISTRING_
  #include <istring.hpp>
#endif



template < class Element >
class IMyKeySortedSet : public IVKeySortedSet< Element, IString >
{
public:

// typedef IMyKeySortedSetOnBaseCursor < Element > Cursor;
//  typedef IVKeySortedSetOnBaseCursor < Element, IString > Cursor;

        IMyKeySortedSet(INumber n = 100)
           : IVKeySortedSet <Element, IString > (n)
   {   }

};

#endif

