package com.google.analytics.a.a;

import com.google.tagmanager.a.ae;
import com.google.tagmanager.a.ao;
import com.google.tagmanager.a.g;
import com.google.tagmanager.a.j;
import com.google.tagmanager.a.n;
import com.google.tagmanager.a.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class v extends u
  implements w
{
  private int a;
  private List b = Collections.emptyList();
  private List c = Collections.emptyList();
  private List d = Collections.emptyList();
  private List e = Collections.emptyList();
  private List f = Collections.emptyList();
  private List g = Collections.emptyList();
  private List h = Collections.emptyList();
  private List i = Collections.emptyList();
  private List j = Collections.emptyList();
  private List k = Collections.emptyList();

  private v c(j paramj, n paramn)
  {
    try
    {
      t localt3 = (t)t.a.a(paramj, paramn);
      if (localt3 != null)
        a(localt3);
      return this;
    }
    catch (ae localae)
    {
      t localt2 = (t)localae.a();
      Object localObject1;
      try
      {
        throw localae;
      }
      finally
      {
        localt1 = localt2;
      }
      if (localt1 != null)
        a(localt1);
      throw localObject1;
    }
    finally
    {
      while (true)
        t localt1 = null;
    }
  }

  private v f()
  {
    return new v().a(g());
  }

  private t g()
  {
    t localt = new t(this, 0);
    if ((0x1 & this.a) == 1)
    {
      this.b = Collections.unmodifiableList(this.b);
      this.a = (0xFFFFFFFE & this.a);
    }
    t.a(localt, this.b);
    if ((0x2 & this.a) == 2)
    {
      this.c = Collections.unmodifiableList(this.c);
      this.a = (0xFFFFFFFD & this.a);
    }
    t.b(localt, this.c);
    if ((0x4 & this.a) == 4)
    {
      this.d = Collections.unmodifiableList(this.d);
      this.a = (0xFFFFFFFB & this.a);
    }
    t.c(localt, this.d);
    if ((0x8 & this.a) == 8)
    {
      this.e = Collections.unmodifiableList(this.e);
      this.a = (0xFFFFFFF7 & this.a);
    }
    t.d(localt, this.e);
    if ((0x10 & this.a) == 16)
    {
      this.f = Collections.unmodifiableList(this.f);
      this.a = (0xFFFFFFEF & this.a);
    }
    t.e(localt, this.f);
    if ((0x20 & this.a) == 32)
    {
      this.g = Collections.unmodifiableList(this.g);
      this.a = (0xFFFFFFDF & this.a);
    }
    t.f(localt, this.g);
    if ((0x40 & this.a) == 64)
    {
      this.h = Collections.unmodifiableList(this.h);
      this.a = (0xFFFFFFBF & this.a);
    }
    t.g(localt, this.h);
    if ((0x80 & this.a) == 128)
    {
      this.i = Collections.unmodifiableList(this.i);
      this.a = (0xFFFFFF7F & this.a);
    }
    t.h(localt, this.i);
    if ((0x100 & this.a) == 256)
    {
      this.j = Collections.unmodifiableList(this.j);
      this.a = (0xFFFFFEFF & this.a);
    }
    t.i(localt, this.j);
    if ((0x200 & this.a) == 512)
    {
      this.k = Collections.unmodifiableList(this.k);
      this.a = (0xFFFFFDFF & this.a);
    }
    t.j(localt, this.k);
    return localt;
  }

  public final v a(t paramt)
  {
    if (paramt == t.a())
      return this;
    if (!t.a(paramt).isEmpty())
    {
      if (this.b.isEmpty())
      {
        this.b = t.a(paramt);
        this.a = (0xFFFFFFFE & this.a);
      }
    }
    else
    {
      label52: if (!t.b(paramt).isEmpty())
      {
        if (!this.c.isEmpty())
          break label513;
        this.c = t.b(paramt);
        this.a = (0xFFFFFFFD & this.a);
      }
      label95: if (!t.c(paramt).isEmpty())
      {
        if (!this.d.isEmpty())
          break label565;
        this.d = t.c(paramt);
        this.a = (0xFFFFFFFB & this.a);
      }
      label138: if (!t.d(paramt).isEmpty())
      {
        if (!this.e.isEmpty())
          break label617;
        this.e = t.d(paramt);
        this.a = (0xFFFFFFF7 & this.a);
      }
      label181: if (!t.e(paramt).isEmpty())
      {
        if (!this.f.isEmpty())
          break label672;
        this.f = t.e(paramt);
        this.a = (0xFFFFFFEF & this.a);
      }
      label224: if (!t.f(paramt).isEmpty())
      {
        if (!this.g.isEmpty())
          break label727;
        this.g = t.f(paramt);
        this.a = (0xFFFFFFDF & this.a);
      }
      label267: if (!t.g(paramt).isEmpty())
      {
        if (!this.h.isEmpty())
          break label782;
        this.h = t.g(paramt);
        this.a = (0xFFFFFFBF & this.a);
      }
      label310: if (!t.h(paramt).isEmpty())
      {
        if (!this.i.isEmpty())
          break label837;
        this.i = t.h(paramt);
        this.a = (0xFFFFFF7F & this.a);
      }
      label354: if (!t.i(paramt).isEmpty())
      {
        if (!this.j.isEmpty())
          break label895;
        this.j = t.i(paramt);
        this.a = (0xFFFFFEFF & this.a);
      }
      label398: if (!t.j(paramt).isEmpty())
      {
        if (!this.k.isEmpty())
          break label953;
        this.k = t.j(paramt);
        this.a = (0xFFFFFDFF & this.a);
      }
    }
    while (true)
    {
      a(h().a(t.k(paramt)));
      break;
      if ((0x1 & this.a) != 1)
      {
        this.b = new ArrayList(this.b);
        this.a = (0x1 | this.a);
      }
      this.b.addAll(t.a(paramt));
      break label52;
      label513: if ((0x2 & this.a) != 2)
      {
        this.c = new ArrayList(this.c);
        this.a = (0x2 | this.a);
      }
      this.c.addAll(t.b(paramt));
      break label95;
      label565: if ((0x4 & this.a) != 4)
      {
        this.d = new ArrayList(this.d);
        this.a = (0x4 | this.a);
      }
      this.d.addAll(t.c(paramt));
      break label138;
      label617: if ((0x8 & this.a) != 8)
      {
        this.e = new ArrayList(this.e);
        this.a = (0x8 | this.a);
      }
      this.e.addAll(t.d(paramt));
      break label181;
      label672: if ((0x10 & this.a) != 16)
      {
        this.f = new ArrayList(this.f);
        this.a = (0x10 | this.a);
      }
      this.f.addAll(t.e(paramt));
      break label224;
      label727: if ((0x20 & this.a) != 32)
      {
        this.g = new ArrayList(this.g);
        this.a = (0x20 | this.a);
      }
      this.g.addAll(t.f(paramt));
      break label267;
      label782: if ((0x40 & this.a) != 64)
      {
        this.h = new ArrayList(this.h);
        this.a = (0x40 | this.a);
      }
      this.h.addAll(t.g(paramt));
      break label310;
      label837: if ((0x80 & this.a) != 128)
      {
        this.i = new ArrayList(this.i);
        this.a = (0x80 | this.a);
      }
      this.i.addAll(t.h(paramt));
      break label354;
      label895: if ((0x100 & this.a) != 256)
      {
        this.j = new ArrayList(this.j);
        this.a = (0x100 | this.a);
      }
      this.j.addAll(t.i(paramt));
      break label398;
      label953: if ((0x200 & this.a) != 512)
      {
        this.k = new ArrayList(this.k);
        this.a = (0x200 | this.a);
      }
      this.k.addAll(t.j(paramt));
    }
  }

  public final boolean i()
  {
    return true;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.a.a.v
 * JD-Core Version:    0.6.0
 */