package com.google.analytics.b.a.a;

import com.google.tagmanager.a.ae;
import com.google.tagmanager.a.ao;
import com.google.tagmanager.a.bc;
import com.google.tagmanager.a.j;
import com.google.tagmanager.a.n;
import com.google.tagmanager.a.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class d extends v
  implements i
{
  private int a;
  private g b = g.a;
  private Object c = "";
  private List d = Collections.emptyList();
  private List e = Collections.emptyList();
  private List f = Collections.emptyList();
  private Object g = "";
  private Object h = "";
  private long i;
  private boolean j;
  private List k = Collections.emptyList();
  private List l = Collections.emptyList();
  private boolean m;

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

  private d k()
  {
    return new d().a(l());
  }

  private b l()
  {
    int n = 1;
    b localb = new b(this, 0);
    int i1 = this.a;
    if ((i1 & 0x1) == n);
    while (true)
    {
      b.a(localb, this.b);
      if ((i1 & 0x2) == 2)
        n |= 2;
      b.a(localb, this.c);
      if ((0x4 & this.a) == 4)
      {
        this.d = Collections.unmodifiableList(this.d);
        this.a = (0xFFFFFFFB & this.a);
      }
      b.a(localb, this.d);
      if ((0x8 & this.a) == 8)
      {
        this.e = Collections.unmodifiableList(this.e);
        this.a = (0xFFFFFFF7 & this.a);
      }
      b.b(localb, this.e);
      if ((0x10 & this.a) == 16)
      {
        this.f = Collections.unmodifiableList(this.f);
        this.a = (0xFFFFFFEF & this.a);
      }
      b.c(localb, this.f);
      if ((i1 & 0x20) == 32)
        n |= 4;
      b.b(localb, this.g);
      if ((i1 & 0x40) == 64)
        n |= 8;
      b.c(localb, this.h);
      if ((i1 & 0x80) == 128)
        n |= 16;
      b.a(localb, this.i);
      if ((i1 & 0x100) == 256)
        n |= 32;
      b.a(localb, this.j);
      if ((0x200 & this.a) == 512)
      {
        this.k = Collections.unmodifiableList(this.k);
        this.a = (0xFFFFFDFF & this.a);
      }
      b.d(localb, this.k);
      if ((0x400 & this.a) == 1024)
      {
        this.l = Collections.unmodifiableList(this.l);
        this.a = (0xFFFFFBFF & this.a);
      }
      b.e(localb, this.l);
      if ((i1 & 0x800) == 2048)
        n |= 64;
      b.b(localb, this.m);
      b.a(localb, n);
      return localb;
      n = 0;
    }
  }

  private void n()
  {
    if ((0x4 & this.a) != 4)
    {
      this.d = new ArrayList(this.d);
      this.a = (0x4 | this.a);
    }
  }

  private void o()
  {
    if ((0x8 & this.a) != 8)
    {
      this.e = new ArrayList(this.e);
      this.a = (0x8 | this.a);
    }
  }

  private void p()
  {
    if ((0x10 & this.a) != 16)
    {
      this.f = new ArrayList(this.f);
      this.a = (0x10 | this.a);
    }
  }

  public final b a()
  {
    b localb = l();
    if (!localb.i())
      throw new bc();
    return localb;
  }

  public final d a(long paramLong)
  {
    this.a = (0x80 | this.a);
    this.i = paramLong;
    return this;
  }

  public final d a(b paramb)
  {
    if (paramb == b.a())
      return this;
    if (paramb.c())
      a(paramb.d());
    if (paramb.e())
    {
      this.a = (0x2 | this.a);
      this.c = b.a(paramb);
    }
    if (!b.b(paramb).isEmpty())
    {
      if (this.d.isEmpty())
      {
        this.d = b.b(paramb);
        this.a = (0xFFFFFFFB & this.a);
      }
    }
    else
    {
      label93: if (!b.c(paramb).isEmpty())
      {
        if (!this.e.isEmpty())
          break label412;
        this.e = b.c(paramb);
        this.a = (0xFFFFFFF7 & this.a);
      }
      label136: if (!b.d(paramb).isEmpty())
      {
        if (!this.f.isEmpty())
          break label433;
        this.f = b.d(paramb);
        this.a = (0xFFFFFFEF & this.a);
      }
      label179: if (paramb.f())
      {
        this.a = (0x20 | this.a);
        this.g = b.e(paramb);
      }
      if (paramb.g())
      {
        this.a = (0x40 | this.a);
        this.h = b.f(paramb);
      }
      if (paramb.h())
        a(paramb.j());
      if (paramb.n())
        a(paramb.o());
      if (!b.g(paramb).isEmpty())
      {
        if (!this.k.isEmpty())
          break label454;
        this.k = b.g(paramb);
        this.a = (0xFFFFFDFF & this.a);
      }
      label307: if (!b.h(paramb).isEmpty())
      {
        if (!this.l.isEmpty())
          break label512;
        this.l = b.h(paramb);
        this.a = (0xFFFFFBFF & this.a);
      }
    }
    while (true)
    {
      if (paramb.p())
        b(paramb.q());
      a(paramb);
      a(h().a(b.i(paramb)));
      break;
      n();
      this.d.addAll(b.b(paramb));
      break label93;
      label412: o();
      this.e.addAll(b.c(paramb));
      break label136;
      label433: p();
      this.f.addAll(b.d(paramb));
      break label179;
      label454: if ((0x200 & this.a) != 512)
      {
        this.k = new ArrayList(this.k);
        this.a = (0x200 | this.a);
      }
      this.k.addAll(b.g(paramb));
      break label307;
      label512: if ((0x400 & this.a) != 1024)
      {
        this.l = new ArrayList(this.l);
        this.a = (0x400 | this.a);
      }
      this.l.addAll(b.h(paramb));
    }
  }

  public final d a(g paramg)
  {
    if (paramg == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramg;
    return this;
  }

  public final d a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    return this;
  }

  public final d a(boolean paramBoolean)
  {
    this.a = (0x100 | this.a);
    this.j = paramBoolean;
    return this;
  }

  public final d b(b paramb)
  {
    if (paramb == null)
      throw new NullPointerException();
    n();
    this.d.add(paramb);
    return this;
  }

  public final d b(boolean paramBoolean)
  {
    this.a = (0x800 | this.a);
    this.m = paramBoolean;
    return this;
  }

  public final d c(b paramb)
  {
    if (paramb == null)
      throw new NullPointerException();
    o();
    this.e.add(paramb);
    return this;
  }

  public final d d(b paramb)
  {
    if (paramb == null)
      throw new NullPointerException();
    p();
    this.f.add(paramb);
    return this;
  }

  public final boolean i()
  {
    int n = 0;
    int i1;
    if ((0x1 & this.a) == 1)
    {
      i1 = 1;
      if (i1 != 0)
        break label25;
    }
    while (true)
    {
      return n;
      i1 = 0;
      break;
      label25: for (int i2 = 0; ; i2++)
      {
        if (i2 >= this.d.size())
          break label65;
        if (!((b)this.d.get(i2)).i())
          break;
      }
      label65: for (int i3 = 0; ; i3++)
      {
        if (i3 >= this.e.size())
          break label108;
        if (!((b)this.e.get(i3)).i())
          break;
      }
      label108: for (int i4 = 0; ; i4++)
      {
        if (i4 >= this.f.size())
          break label151;
        if (!((b)this.f.get(i4)).i())
          break;
      }
      label151: for (int i5 = 0; ; i5++)
      {
        if (i5 >= this.k.size())
          break label194;
        if (!((b)this.k.get(i5)).i())
          break;
      }
      label194: if (!j())
        continue;
      n = 1;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.b.a.a.d
 * JD-Core Version:    0.6.0
 */