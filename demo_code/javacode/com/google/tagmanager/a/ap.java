package com.google.tagmanager.a;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class ap extends g
{
  private static final int[] c;
  private final int d;
  private final g e;
  private final g f;
  private final int g;
  private final int h;
  private int i = 0;

  static
  {
    int j = 1;
    ArrayList localArrayList = new ArrayList();
    int k = j;
    while (j > 0)
    {
      localArrayList.add(Integer.valueOf(j));
      int n = k + j;
      k = j;
      j = n;
    }
    localArrayList.add(Integer.valueOf(2147483647));
    c = new int[localArrayList.size()];
    for (int m = 0; m < c.length; m++)
      c[m] = ((Integer)localArrayList.get(m)).intValue();
  }

  private ap(g paramg1, g paramg2)
  {
    this.e = paramg1;
    this.f = paramg2;
    this.g = paramg1.a();
    this.d = (this.g + paramg2.a());
    this.h = (1 + Math.max(paramg1.j(), paramg2.j()));
  }

  static g a(g paramg1, g paramg2)
  {
    ap localap1;
    if ((paramg1 instanceof ap))
    {
      localap1 = (ap)paramg1;
      if (paramg2.a() == 0)
        break label226;
      if (paramg1.a() != 0)
        break label33;
    }
    while (true)
    {
      return paramg2;
      localap1 = null;
      break;
      label33: int j = paramg1.a() + paramg2.a();
      if (j < 128)
      {
        paramg2 = b(paramg1, paramg2);
        continue;
      }
      if ((localap1 != null) && (localap1.f.a() + paramg2.a() < 128))
      {
        ai localai = b(localap1.f, paramg2);
        paramg2 = new ap(localap1.e, localai);
        continue;
      }
      if ((localap1 != null) && (localap1.e.j() > localap1.f.j()) && (localap1.h > paramg2.j()))
      {
        ap localap2 = new ap(localap1.f, paramg2);
        paramg2 = new ap(localap1.e, localap2);
        continue;
      }
      int k = 1 + Math.max(paramg1.j(), paramg2.j());
      if (j >= c[k])
      {
        paramg2 = new ap(paramg1, paramg2);
        continue;
      }
      paramg2 = aq.a(new aq(0), paramg1, paramg2);
      continue;
      label226: paramg2 = paramg1;
    }
  }

  private static ai b(g paramg1, g paramg2)
  {
    int j = paramg1.a();
    int k = paramg2.a();
    byte[] arrayOfByte = new byte[j + k];
    paramg1.b(arrayOfByte, 0, 0, j);
    paramg2.b(arrayOfByte, 0, j, k);
    return new ai(arrayOfByte);
  }

  public final int a()
  {
    return this.d;
  }

  protected final int a(int paramInt1, int paramInt2, int paramInt3)
  {
    int m;
    if (paramInt2 + paramInt3 <= this.g)
      m = this.e.a(paramInt1, paramInt2, paramInt3);
    while (true)
    {
      return m;
      if (paramInt2 >= this.g)
      {
        m = this.f.a(paramInt1, paramInt2 - this.g, paramInt3);
        continue;
      }
      int j = this.g - paramInt2;
      int k = this.e.a(paramInt1, paramInt2, j);
      m = this.f.a(k, 0, paramInt3 - j);
    }
  }

  public final String a(String paramString)
  {
    return new String(e(), paramString);
  }

  protected final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 + paramInt3 <= this.g)
      this.e.a(paramArrayOfByte, paramInt1, paramInt2, paramInt3);
    while (true)
    {
      return;
      if (paramInt1 >= this.g)
      {
        this.f.a(paramArrayOfByte, paramInt1 - this.g, paramInt2, paramInt3);
        continue;
      }
      int j = this.g - paramInt1;
      this.e.a(paramArrayOfByte, paramInt1, paramInt2, j);
      this.f.a(paramArrayOfByte, 0, paramInt2 + j, paramInt3 - j);
    }
  }

  protected final int b(int paramInt1, int paramInt2, int paramInt3)
  {
    int m;
    if (paramInt2 + paramInt3 <= this.g)
      m = this.e.b(paramInt1, paramInt2, paramInt3);
    while (true)
    {
      return m;
      if (paramInt2 >= this.g)
      {
        m = this.f.b(paramInt1, paramInt2 - this.g, paramInt3);
        continue;
      }
      int j = this.g - paramInt2;
      int k = this.e.b(paramInt1, paramInt2, j);
      m = this.f.b(k, 0, paramInt3 - j);
    }
  }

  final void b(OutputStream paramOutputStream, int paramInt1, int paramInt2)
  {
    if (paramInt1 + paramInt2 <= this.g)
      this.e.b(paramOutputStream, paramInt1, paramInt2);
    while (true)
    {
      return;
      if (paramInt1 >= this.g)
      {
        this.f.b(paramOutputStream, paramInt1 - this.g, paramInt2);
        continue;
      }
      int j = this.g - paramInt1;
      this.e.b(paramOutputStream, paramInt1, j);
      this.f.b(paramOutputStream, 0, paramInt2 - j);
    }
  }

  public final h c()
  {
    return new as(this, 0);
  }

  public final boolean equals(Object paramObject)
  {
    int j = 0;
    if (paramObject == this)
      j = 1;
    g localg;
    int i5;
    do
    {
      while (true)
      {
        return j;
        if (!(paramObject instanceof g))
          continue;
        localg = (g)paramObject;
        if (this.d != localg.a())
          continue;
        if (this.d != 0)
          break;
        j = 1;
      }
      if (this.i == 0)
        break;
      i5 = localg.l();
    }
    while ((i5 != 0) && (this.i != i5));
    ar localar1 = new ar(this, 0);
    ai localai1 = (ai)localar1.next();
    ar localar2 = new ar(localg, 0);
    ai localai2 = (ai)localar2.next();
    int k = 0;
    ai localai3 = localai1;
    int m = 0;
    int n = 0;
    while (true)
    {
      int i1 = localai3.a() - m;
      int i2 = localai2.a() - k;
      int i3 = Math.min(i1, i2);
      if (m == 0);
      int i4;
      for (boolean bool = localai3.a(localai2, k, i3); ; bool = localai2.a(localai3, m, i3))
      {
        if (!bool)
          break label228;
        i4 = n + i3;
        if (i4 < this.d)
          break label238;
        if (i4 != this.d)
          break label230;
        j = 1;
        break;
      }
      label228: break;
      label230: throw new IllegalStateException();
      label238: if (i3 == i1)
      {
        localai3 = (ai)localar1.next();
        m = 0;
      }
      while (true)
      {
        if (i3 != i2)
          break label299;
        localai2 = (ai)localar2.next();
        k = 0;
        n = i4;
        break;
        m += i3;
      }
      label299: k += i3;
      n = i4;
    }
  }

  public final boolean g()
  {
    int j = 0;
    int k = this.e.a(0, 0, this.g);
    if (this.f.a(k, 0, this.f.a()) == 0)
      j = 1;
    return j;
  }

  public final j h()
  {
    return j.a(new at(this));
  }

  public final int hashCode()
  {
    int j = this.i;
    if (j == 0)
    {
      j = b(this.d, 0, this.d);
      if (j == 0)
        j = 1;
      this.i = j;
    }
    return j;
  }

  protected final int j()
  {
    return this.h;
  }

  protected final boolean k()
  {
    if (this.d >= c[this.h]);
    for (int j = 1; ; j = 0)
      return j;
  }

  protected final int l()
  {
    return this.i;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.ap
 * JD-Core Version:    0.6.0
 */