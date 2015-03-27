package com.google.analytics.a.a;

import com.google.tagmanager.a.ae;
import com.google.tagmanager.a.ao;
import com.google.tagmanager.a.j;
import com.google.tagmanager.a.n;
import com.google.tagmanager.a.u;

public final class d extends u
  implements g
{
  private int a;
  private e b = e.a;
  private int c;
  private int d;

  private d c(j paramj, n paramn)
  {
    try
    {
      b localb3 = (b)b.a.a(paramj, paramn);
      if (localb3 != null)
        a(localb3);
      return this;
    }
    catch (ae localae)
    {
      b localb2 = (b)localae.a();
      Object localObject1;
      try
      {
        throw localae;
      }
      finally
      {
        localb1 = localb2;
      }
      if (localb1 != null)
        a(localb1);
      throw localObject1;
    }
    finally
    {
      while (true)
        b localb1 = null;
    }
  }

  private d g()
  {
    return new d().a(a());
  }

  public final b a()
  {
    int i = 1;
    b localb = new b(this, 0);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      b.a(localb, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      b.a(localb, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      b.b(localb, this.d);
      b.c(localb, i);
      return localb;
      i = 0;
    }
  }

  public final d a(b paramb)
  {
    if (paramb == b.a());
    while (true)
    {
      return this;
      if (paramb.c())
      {
        e locale = paramb.d();
        if (locale == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = locale;
      }
      if (paramb.e())
      {
        int j = paramb.f();
        this.a = (0x2 | this.a);
        this.c = j;
      }
      if (paramb.g())
      {
        int i = paramb.h();
        this.a = (0x4 | this.a);
        this.d = i;
      }
      a(h().a(b.b(paramb)));
    }
  }

  public final boolean i()
  {
    return true;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.a.a.d
 * JD-Core Version:    0.6.0
 */