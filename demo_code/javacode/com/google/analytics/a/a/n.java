package com.google.analytics.a.a;

import com.google.tagmanager.a.ae;
import com.google.tagmanager.a.ao;
import com.google.tagmanager.a.g;
import com.google.tagmanager.a.j;
import com.google.tagmanager.a.u;

public final class n extends u
  implements o
{
  private int a;
  private int b;
  private int c;

  private n c(j paramj, com.google.tagmanager.a.n paramn)
  {
    try
    {
      l locall3 = (l)l.a.a(paramj, paramn);
      if (locall3 != null)
        a(locall3);
      return this;
    }
    catch (ae localae)
    {
      l locall2 = (l)localae.a();
      Object localObject1;
      try
      {
        throw localae;
      }
      finally
      {
        locall1 = locall2;
      }
      if (locall1 != null)
        a(locall1);
      throw localObject1;
    }
    finally
    {
      while (true)
        l locall1 = null;
    }
  }

  private n f()
  {
    return new n().a(g());
  }

  private l g()
  {
    int i = 1;
    l locall = new l(this, 0);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      l.a(locall, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      l.b(locall, this.c);
      l.c(locall, i);
      return locall;
      i = 0;
    }
  }

  public final n a(l paraml)
  {
    if (paraml == l.a());
    while (true)
    {
      return this;
      if (paraml.c())
      {
        int j = paraml.d();
        this.a = (0x1 | this.a);
        this.b = j;
      }
      if (paraml.e())
      {
        int i = paraml.f();
        this.a = (0x2 | this.a);
        this.c = i;
      }
      a(h().a(l.a(paraml)));
    }
  }

  public final boolean i()
  {
    int i = 0;
    int j;
    if ((0x1 & this.a) == 1)
    {
      j = 1;
      if (j != 0)
        break label25;
    }
    label25: label49: 
    while (true)
    {
      return i;
      j = 0;
      break;
      if ((0x2 & this.a) == 2);
      for (int k = 1; ; k = 0)
      {
        if (k == 0)
          break label49;
        i = 1;
        break;
      }
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.a.a.n
 * JD-Core Version:    0.6.0
 */