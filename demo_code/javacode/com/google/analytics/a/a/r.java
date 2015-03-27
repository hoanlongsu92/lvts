package com.google.analytics.a.a;

import com.google.tagmanager.a.ae;
import com.google.tagmanager.a.ag;
import com.google.tagmanager.a.ah;
import com.google.tagmanager.a.ao;
import com.google.tagmanager.a.bd;
import com.google.tagmanager.a.g;
import com.google.tagmanager.a.j;
import com.google.tagmanager.a.n;
import com.google.tagmanager.a.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class r extends u
  implements s
{
  private int a;
  private ah b = ag.a;
  private List c = Collections.emptyList();
  private List d = Collections.emptyList();
  private List e = Collections.emptyList();
  private List f = Collections.emptyList();
  private List g = Collections.emptyList();
  private List h = Collections.emptyList();
  private Object i = "";
  private Object j = "";
  private Object k = "0";
  private Object l = "";
  private b m = b.a();
  private float n;
  private boolean o;
  private ah p = ag.a;
  private int q;

  private r c(j paramj, n paramn)
  {
    try
    {
      p localp3 = (p)p.a.a(paramj, paramn);
      if (localp3 != null)
        a(localp3);
      return this;
    }
    catch (ae localae)
    {
      p localp2 = (p)localae.a();
      Object localObject1;
      try
      {
        throw localae;
      }
      finally
      {
        localp1 = localp2;
      }
      if (localp1 != null)
        a(localp1);
      throw localObject1;
    }
    finally
    {
      while (true)
        p localp1 = null;
    }
  }

  private r f()
  {
    return new r().a(g());
  }

  private p g()
  {
    int i1 = 1;
    p localp = new p(this, 0);
    int i2 = this.a;
    if ((0x1 & this.a) == i1)
    {
      this.b = new bd(this.b);
      this.a = (0xFFFFFFFE & this.a);
    }
    p.a(localp, this.b);
    if ((0x2 & this.a) == 2)
    {
      this.c = Collections.unmodifiableList(this.c);
      this.a = (0xFFFFFFFD & this.a);
    }
    p.a(localp, this.c);
    if ((0x4 & this.a) == 4)
    {
      this.d = Collections.unmodifiableList(this.d);
      this.a = (0xFFFFFFFB & this.a);
    }
    p.b(localp, this.d);
    if ((0x8 & this.a) == 8)
    {
      this.e = Collections.unmodifiableList(this.e);
      this.a = (0xFFFFFFF7 & this.a);
    }
    p.c(localp, this.e);
    if ((0x10 & this.a) == 16)
    {
      this.f = Collections.unmodifiableList(this.f);
      this.a = (0xFFFFFFEF & this.a);
    }
    p.d(localp, this.f);
    if ((0x20 & this.a) == 32)
    {
      this.g = Collections.unmodifiableList(this.g);
      this.a = (0xFFFFFFDF & this.a);
    }
    p.e(localp, this.g);
    if ((0x40 & this.a) == 64)
    {
      this.h = Collections.unmodifiableList(this.h);
      this.a = (0xFFFFFFBF & this.a);
    }
    p.f(localp, this.h);
    if ((i2 & 0x80) == 128);
    while (true)
    {
      p.a(localp, this.i);
      if ((i2 & 0x100) == 256)
        i1 |= 2;
      p.b(localp, this.j);
      if ((i2 & 0x200) == 512)
        i1 |= 4;
      p.c(localp, this.k);
      if ((i2 & 0x400) == 1024)
        i1 |= 8;
      p.d(localp, this.l);
      if ((i2 & 0x800) == 2048)
        i1 |= 16;
      p.a(localp, this.m);
      if ((i2 & 0x1000) == 4096)
        i1 |= 32;
      p.a(localp, this.n);
      if ((i2 & 0x2000) == 8192)
        i1 |= 64;
      p.a(localp, this.o);
      if ((0x4000 & this.a) == 16384)
      {
        this.p = new bd(this.p);
        this.a = (0xFFFFBFFF & this.a);
      }
      p.b(localp, this.p);
      if ((i2 & 0x8000) == 32768)
        i1 |= 128;
      p.a(localp, this.q);
      p.b(localp, i1);
      return localp;
      i1 = 0;
    }
  }

  public final r a(p paramp)
  {
    if (paramp == p.a())
      return this;
    label52: label95: label224: b localb;
    if (!p.a(paramp).isEmpty())
    {
      if (this.b.isEmpty())
      {
        this.b = p.a(paramp);
        this.a = (0xFFFFFFFE & this.a);
      }
    }
    else
    {
      if (!p.b(paramp).isEmpty())
      {
        if (!this.c.isEmpty())
          break label691;
        this.c = p.b(paramp);
        this.a = (0xFFFFFFFD & this.a);
      }
      if (!p.c(paramp).isEmpty())
      {
        if (!this.d.isEmpty())
          break label743;
        this.d = p.c(paramp);
        this.a = (0xFFFFFFFB & this.a);
      }
      label138: if (!p.d(paramp).isEmpty())
      {
        if (!this.e.isEmpty())
          break label795;
        this.e = p.d(paramp);
        this.a = (0xFFFFFFF7 & this.a);
      }
      label181: if (!p.e(paramp).isEmpty())
      {
        if (!this.f.isEmpty())
          break label850;
        this.f = p.e(paramp);
        this.a = (0xFFFFFFEF & this.a);
      }
      if (!p.f(paramp).isEmpty())
      {
        if (!this.g.isEmpty())
          break label905;
        this.g = p.f(paramp);
        this.a = (0xFFFFFFDF & this.a);
      }
      label267: if (!p.g(paramp).isEmpty())
      {
        if (!this.h.isEmpty())
          break label960;
        this.h = p.g(paramp);
        this.a = (0xFFFFFFBF & this.a);
      }
      label310: if (paramp.c())
      {
        this.a = (0x80 | this.a);
        this.i = p.h(paramp);
      }
      if (paramp.d())
      {
        this.a = (0x100 | this.a);
        this.j = p.i(paramp);
      }
      if (paramp.e())
      {
        this.a = (0x200 | this.a);
        this.k = p.j(paramp);
      }
      if (paramp.f())
      {
        this.a = (0x400 | this.a);
        this.l = p.k(paramp);
      }
      if (paramp.h())
      {
        localb = paramp.j();
        if (((0x800 & this.a) != 2048) || (this.m == b.a()))
          break label1015;
        this.m = b.a(this.m).a(localb).a();
        label474: this.a = (0x800 | this.a);
      }
      if (paramp.n())
      {
        float f1 = paramp.o();
        this.a = (0x1000 | this.a);
        this.n = f1;
      }
      if (paramp.p())
      {
        boolean bool = paramp.q();
        this.a = (0x2000 | this.a);
        this.o = bool;
      }
      if (!p.l(paramp).isEmpty())
      {
        if (!this.p.isEmpty())
          break label1024;
        this.p = p.l(paramp);
        this.a = (0xFFFFBFFF & this.a);
      }
    }
    while (true)
    {
      if (paramp.r())
      {
        int i1 = paramp.s();
        this.a = (0x8000 | this.a);
        this.q = i1;
      }
      a(h().a(p.m(paramp)));
      break;
      if ((0x1 & this.a) != 1)
      {
        this.b = new ag(this.b);
        this.a = (0x1 | this.a);
      }
      this.b.addAll(p.a(paramp));
      break label52;
      label691: if ((0x2 & this.a) != 2)
      {
        this.c = new ArrayList(this.c);
        this.a = (0x2 | this.a);
      }
      this.c.addAll(p.b(paramp));
      break label95;
      label743: if ((0x4 & this.a) != 4)
      {
        this.d = new ArrayList(this.d);
        this.a = (0x4 | this.a);
      }
      this.d.addAll(p.c(paramp));
      break label138;
      label795: if ((0x8 & this.a) != 8)
      {
        this.e = new ArrayList(this.e);
        this.a = (0x8 | this.a);
      }
      this.e.addAll(p.d(paramp));
      break label181;
      label850: if ((0x10 & this.a) != 16)
      {
        this.f = new ArrayList(this.f);
        this.a = (0x10 | this.a);
      }
      this.f.addAll(p.e(paramp));
      break label224;
      label905: if ((0x20 & this.a) != 32)
      {
        this.g = new ArrayList(this.g);
        this.a = (0x20 | this.a);
      }
      this.g.addAll(p.f(paramp));
      break label267;
      label960: if ((0x40 & this.a) != 64)
      {
        this.h = new ArrayList(this.h);
        this.a = (0x40 | this.a);
      }
      this.h.addAll(p.g(paramp));
      break label310;
      label1015: this.m = localb;
      break label474;
      label1024: if ((0x4000 & this.a) != 16384)
      {
        this.p = new ag(this.p);
        this.a = (0x4000 | this.a);
      }
      this.p.addAll(p.l(paramp));
    }
  }

  public final boolean i()
  {
    int i1 = 0;
    int i2 = 0;
    if (i2 < this.c.size())
      if (((com.google.analytics.b.a.a.b)this.c.get(i2)).i());
    while (true)
    {
      return i1;
      i2++;
      break;
      for (int i3 = 0; ; i3++)
      {
        if (i3 >= this.d.size())
          break label84;
        if (!((l)this.d.get(i3)).i())
          break;
      }
      label84: for (int i4 = 0; ; i4++)
      {
        if (i4 >= this.e.size())
          break label127;
        if (!((h)this.e.get(i4)).i())
          break;
      }
      label127: for (int i5 = 0; ; i5++)
      {
        if (i5 >= this.f.size())
          break label170;
        if (!((h)this.f.get(i5)).i())
          break;
      }
      label170: for (int i6 = 0; ; i6++)
      {
        if (i6 >= this.g.size())
          break label213;
        if (!((h)this.g.get(i6)).i())
          break;
      }
      label213: i1 = 1;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.a.a.r
 * JD-Core Version:    0.6.0
 */