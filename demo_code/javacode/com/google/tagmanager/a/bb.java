package com.google.tagmanager.a;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

final class bb extends AbstractSet
{
  private bb(au paramau)
  {
  }

  public final void clear()
  {
    this.a.clear();
  }

  public final boolean contains(Object paramObject)
  {
    Map.Entry localEntry = (Map.Entry)paramObject;
    Object localObject1 = this.a.get(localEntry.getKey());
    Object localObject2 = localEntry.getValue();
    if ((localObject1 == localObject2) || ((localObject1 != null) && (localObject1.equals(localObject2))));
    for (int i = 1; ; i = 0)
      return i;
  }

  public final Iterator iterator()
  {
    return new ba(this.a, 0);
  }

  public final boolean remove(Object paramObject)
  {
    Map.Entry localEntry = (Map.Entry)paramObject;
    if (contains(localEntry))
      this.a.remove(localEntry.getKey());
    for (int i = 1; ; i = 0)
      return i;
  }

  public final int size()
  {
    return this.a.size();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.bb
 * JD-Core Version:    0.6.0
 */