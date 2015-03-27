package com.google.tagmanager.a;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

final class av extends au
{
  av(int paramInt)
  {
    super(paramInt, 0);
  }

  public final void a()
  {
    if (!b())
    {
      for (int i = 0; i < c(); i++)
      {
        Map.Entry localEntry2 = b(i);
        if (!((r)localEntry2.getKey()).c())
          continue;
        localEntry2.setValue(Collections.unmodifiableList((List)localEntry2.getValue()));
      }
      Iterator localIterator = d().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)localIterator.next();
        if (!((r)localEntry1.getKey()).c())
          continue;
        localEntry1.setValue(Collections.unmodifiableList((List)localEntry1.getValue()));
      }
    }
    super.a();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.av
 * JD-Core Version:    0.6.0
 */