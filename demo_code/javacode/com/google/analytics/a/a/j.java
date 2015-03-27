package com.google.analytics.a.a;

import com.google.tagmanager.a.ae;
import com.google.tagmanager.a.ao;
import com.google.tagmanager.a.g;
import com.google.tagmanager.a.n;
import com.google.tagmanager.a.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class j extends u
  implements k
{
  private int a;
  private List b = Collections.emptyList();
  private int c;
  private int d;
  private boolean e;
  private boolean f;

  private j c(com.google.tagmanager.a.j paramj, n paramn)
  {
    try
    {
      h localh3 = (h)h.a.a(paramj, paramn);
      if (localh3 != null)
        a(localh3);
      return this;
    }
    catch (ae localae)
    {
      h localh2 = (h)localae.a();
      Object localObject1;
      try
      {
        throw localae;
      }
      finally
      {
        localh1 = localh2;
      }
      if (localh1 != null)
        a(localh1);
      throw localObject1;
    }
    finally
    {
      while (true)
        h localh1 = null;
    }
  }

  private j f()
  {
    return new j().a(g());
  }

  private h g()
  {
    int i = 1;
    h localh = new h(this, 0);
    int j = this.a;
    if ((0x1 & this.a) == i)
    {
      this.b = Collections.unmodifiableList(this.b);
      this.a = (0xFFFFFFFE & this.a);
    }
    h.a(localh, this.b);
    if ((j & 0x2) == 2);
    while (true)
    {
      h.a(localh, this.c);
      if ((j & 0x4) == 4)
        i |= 2;
      h.b(localh, this.d);
      if ((j & 0x8) == 8)
        i |= 4;
      h.a(localh, this.e);
      if ((j & 0x10) == 16)
        i |= 8;
      h.b(localh, this.f);
      h.c(localh, i);
      return localh;
      i = 0;
    }
  }

  public final j a(h paramh)
  {
    if (paramh == h.a())
      return this;
    if (!h.a(paramh).isEmpty())
    {
      if (!this.b.isEmpty())
        break label187;
      this.b = h.a(paramh);
      this.a = (0xFFFFFFFE & this.a);
    }
    while (true)
    {
      if (paramh.c())
      {
        int j = paramh.d();
        this.a = (0x2 | this.a);
        this.c = j;
      }
      if (paramh.e())
      {
        int i = paramh.f();
        this.a = (0x4 | this.a);
        this.d = i;
      }
      if (paramh.g())
      {
        boolean bool2 = paramh.h();
        this.a = (0x8 | this.a);
        this.e = bool2;
      }
      if (paramh.j())
      {
        boolean bool1 = paramh.n();
        this.a = (0x10 | this.a);
        this.f = bool1;
      }
      a(h().a(h.b(paramh)));
      break;
      label187: if ((0x1 & this.a) != 1)
      {
        this.b = new ArrayList(this.b);
        this.a = (0x1 | this.a);
      }
      this.b.addAll(h.a(paramh));
    }
  }

  public final boolean i()
  {
    int i = 0;
    int j;
    if ((0x2 & this.a) == 2)
    {
      j = 1;
      if (j != 0)
        break label25;
    }
    while (true)
    {
      return i;
      j = 0;
      break;
      label25: i = 1;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.a.a.j
 * JD-Core Version:    0.6.0
 */