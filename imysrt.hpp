
#ifndef MY_SORTED
#define MY_SORTED

#include <ivsrtset.h>

template < class Element >
class IMyOps : public IEOps < Element >
{
public:
  inline IString & key(Element const& element) const
  {
  return (e1->Name());
  }
}

   template < class Element >
class IGMySortedSet : public IVGKeySortedSet < Element, IMyOps < Element > >
{
public:

typedef IVSortedSetOnBaseCursor < Element,
               IGSortedSet < Element, IMyOps < Element > > > Cursor;

IMySortedSet (INumber n = 100)
  : IVGSortedSet < Element, IMyOps < Element > > (n)
   {   }
};
#endif

