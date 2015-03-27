package com.google.tagmanager.a;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class j
{
  private final byte[] a;
  private final boolean b;
  private int c;
  private int d;
  private int e;
  private final InputStream f;
  private int g;
  private boolean h = false;
  private int i;
  private int j = 2147483647;
  private int k;
  private int l = 64;
  private int m = 67108864;
  private k n = null;

  private j(ai paramai)
  {
    this.a = paramai.c;
    this.e = paramai.b();
    this.c = (paramai.b() + paramai.a());
    this.i = (-this.e);
    this.f = null;
    this.b = true;
  }

  private j(InputStream paramInputStream)
  {
    this.a = new byte[4096];
    this.c = 0;
    this.e = 0;
    this.i = 0;
    this.f = paramInputStream;
    this.b = false;
  }

  static j a(ai paramai)
  {
    j localj = new j(paramai);
    try
    {
      localj.b(paramai.a());
      return localj;
    }
    catch (ae localae)
    {
    }
    throw new IllegalArgumentException(localae);
  }

  public static j a(InputStream paramInputStream)
  {
    return new j(paramInputStream);
  }

  private boolean a(boolean paramBoolean)
  {
    if (this.e < this.c)
      throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
    int i3;
    if (this.i + this.c == this.j)
    {
      if (paramBoolean)
        throw ae.b();
      i3 = 0;
    }
    while (true)
    {
      return i3;
      if (this.n != null);
      this.i += this.c;
      this.e = 0;
      if (this.f == null);
      for (int i1 = -1; ; i1 = this.f.read(this.a))
      {
        this.c = i1;
        if ((this.c != 0) && (this.c >= -1))
          break;
        throw new IllegalStateException("InputStream#read(byte[]) returned invalid result: " + this.c + "\nThe InputStream implementation is buggy.");
      }
      if (this.c == -1)
      {
        this.c = 0;
        if (paramBoolean)
          throw ae.b();
        i3 = 0;
        continue;
      }
      n();
      int i2 = this.i + this.c + this.d;
      if ((i2 > this.m) || (i2 < 0))
        throw ae.i();
      i3 = 1;
    }
  }

  private byte[] d(int paramInt)
  {
    if (paramInt < 0)
      throw ae.c();
    if (paramInt + (this.i + this.e) > this.j)
    {
      e(this.j - this.i - this.e);
      throw ae.b();
    }
    Object localObject;
    if (paramInt <= this.c - this.e)
    {
      localObject = new byte[paramInt];
      System.arraycopy(this.a, this.e, localObject, 0, paramInt);
      this.e = (paramInt + this.e);
    }
    while (true)
    {
      return localObject;
      if (paramInt < 4096)
      {
        byte[] arrayOfByte4 = new byte[paramInt];
        int i10 = this.c - this.e;
        System.arraycopy(this.a, this.e, arrayOfByte4, 0, i10);
        this.e = this.c;
        a(true);
        while (paramInt - i10 > this.c)
        {
          System.arraycopy(this.a, 0, arrayOfByte4, i10, this.c);
          i10 += this.c;
          this.e = this.c;
          a(true);
        }
        System.arraycopy(this.a, 0, arrayOfByte4, i10, paramInt - i10);
        this.e = (paramInt - i10);
        localObject = arrayOfByte4;
        continue;
      }
      int i1 = this.e;
      int i2 = this.c;
      this.i += this.c;
      this.e = 0;
      this.c = 0;
      int i3 = paramInt - (i2 - i1);
      ArrayList localArrayList = new ArrayList();
      int i8;
      for (int i4 = i3; i4 > 0; i4 = i8)
      {
        byte[] arrayOfByte3 = new byte[Math.min(i4, 4096)];
        int i7 = 0;
        while (i7 < arrayOfByte3.length)
        {
          if (this.f == null);
          for (int i9 = -1; i9 == -1; i9 = this.f.read(arrayOfByte3, i7, arrayOfByte3.length - i7))
            throw ae.b();
          this.i = (i9 + this.i);
          i7 += i9;
        }
        i8 = i4 - arrayOfByte3.length;
        localArrayList.add(arrayOfByte3);
      }
      byte[] arrayOfByte1 = new byte[paramInt];
      int i5 = i2 - i1;
      System.arraycopy(this.a, i1, arrayOfByte1, 0, i5);
      Iterator localIterator = localArrayList.iterator();
      int i6 = i5;
      while (localIterator.hasNext())
      {
        byte[] arrayOfByte2 = (byte[])localIterator.next();
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i6, arrayOfByte2.length);
        i6 += arrayOfByte2.length;
      }
      localObject = arrayOfByte1;
    }
  }

  private void e(int paramInt)
  {
    if (paramInt < 0)
      throw ae.c();
    if (paramInt + (this.i + this.e) > this.j)
    {
      e(this.j - this.i - this.e);
      throw ae.b();
    }
    if (paramInt <= this.c - this.e);
    int i1;
    for (this.e = (paramInt + this.e); ; this.e = (paramInt - i1))
    {
      return;
      i1 = this.c - this.e;
      this.e = this.c;
      a(true);
      while (paramInt - i1 > this.c)
      {
        i1 += this.c;
        this.e = this.c;
        a(true);
      }
    }
  }

  private void n()
  {
    this.c += this.d;
    int i1 = this.i + this.c;
    if (i1 > this.j)
    {
      this.d = (i1 - this.j);
      this.c -= this.d;
    }
    while (true)
    {
      return;
      this.d = 0;
    }
  }

  private byte o()
  {
    if (this.e == this.c)
      a(true);
    byte[] arrayOfByte = this.a;
    int i1 = this.e;
    this.e = (i1 + 1);
    return arrayOfByte[i1];
  }

  public final int a()
  {
    int i1 = 0;
    int i2;
    if ((this.e == this.c) && (!a(false)))
    {
      i2 = 1;
      if (i2 == 0)
        break label39;
      this.g = 0;
    }
    while (true)
    {
      return i1;
      i2 = 0;
      break;
      label39: this.g = i();
      if (bh.b(this.g) == 0)
        throw ae.e();
      i1 = this.g;
    }
  }

  public final ak a(ao paramao, n paramn)
  {
    int i1 = i();
    if (this.k >= this.l)
      throw ae.h();
    int i2 = b(i1);
    this.k = (1 + this.k);
    ak localak = (ak)paramao.a(this, paramn);
    a(0);
    this.k = (-1 + this.k);
    c(i2);
    return localak;
  }

  public final void a(int paramInt)
  {
    if (this.g != paramInt)
      throw ae.f();
  }

  public final void a(int paramInt, al paramal, n paramn)
  {
    if (this.k >= this.l)
      throw ae.h();
    this.k = (1 + this.k);
    paramal.b(this, paramn);
    a(bh.c(paramInt));
    this.k = (-1 + this.k);
  }

  public final void a(al paramal, n paramn)
  {
    int i1 = i();
    if (this.k >= this.l)
      throw ae.h();
    int i2 = b(i1);
    this.k = (1 + this.k);
    paramal.b(this, paramn);
    a(0);
    this.k = (-1 + this.k);
    c(i2);
  }

  public final boolean a(int paramInt, l paraml)
  {
    int i1 = 1;
    long l2;
    switch (bh.a(paramInt))
    {
    default:
      throw ae.g();
    case 0:
      l2 = j();
      paraml.b(paramInt);
      if ((0xFFFFFF80 & l2) != 0L)
        break;
      paraml.a((int)l2);
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return i1;
      paraml.a(0x80 | 0x7F & (int)l2);
      l2 >>>= 7;
      break;
      long l1 = l();
      paraml.b(paramInt);
      paraml.a(0xFF & (int)l1);
      paraml.a(0xFF & (int)(l1 >> 8));
      paraml.a(0xFF & (int)(l1 >> 16));
      paraml.a(0xFF & (int)(l1 >> 24));
      paraml.a(0xFF & (int)(l1 >> 32));
      paraml.a(0xFF & (int)(l1 >> 40));
      paraml.a(0xFF & (int)(l1 >> 48));
      paraml.a(0xFF & (int)(l1 >> 56));
      continue;
      g localg = g();
      paraml.b(paramInt);
      paraml.b(localg.a());
      paraml.a(localg, localg.a());
      continue;
      paraml.b(paramInt);
      int i3;
      do
        i3 = a();
      while ((i3 != 0) && (a(i3, paraml)));
      int i4 = bh.c(bh.b(paramInt));
      a(i4);
      paraml.b(i4);
      continue;
      i1 = 0;
      continue;
      int i2 = k();
      paraml.b(paramInt);
      paraml.a(i2 & 0xFF);
      paraml.a(0xFF & i2 >> 8);
      paraml.a(0xFF & i2 >> 16);
      paraml.a(i2 >>> 24);
    }
  }

  public final float b()
  {
    return Float.intBitsToFloat(k());
  }

  public final int b(int paramInt)
  {
    if (paramInt < 0)
      throw ae.c();
    int i1 = paramInt + (this.i + this.e);
    int i2 = this.j;
    if (i1 > i2)
      throw ae.b();
    this.j = i1;
    n();
    return i2;
  }

  public final long c()
  {
    return j();
  }

  public final void c(int paramInt)
  {
    this.j = paramInt;
    n();
  }

  public final int d()
  {
    return i();
  }

  public final boolean e()
  {
    if (i() != 0);
    for (int i1 = 1; ; i1 = 0)
      return i1;
  }

  public final String f()
  {
    int i1 = i();
    String str;
    if ((i1 <= this.c - this.e) && (i1 > 0))
    {
      str = new String(this.a, this.e, i1, "UTF-8");
      this.e = (i1 + this.e);
    }
    while (true)
    {
      return str;
      str = new String(d(i1), "UTF-8");
    }
  }

  public final g g()
  {
    int i1 = i();
    Object localObject;
    if (i1 == 0)
      localObject = g.a;
    while (true)
    {
      return localObject;
      if ((i1 <= this.c - this.e) && (i1 > 0))
      {
        if ((this.b) && (this.h));
        for (localObject = new e(this.a, this.e, i1); ; localObject = g.a(this.a, this.e, i1))
        {
          this.e = (i1 + this.e);
          break;
        }
      }
      localObject = new ai(d(i1));
    }
  }

  public final int h()
  {
    return i();
  }

  public final int i()
  {
    int i1 = o();
    if (i1 >= 0);
    int i9;
    do
    {
      int i6;
      int i7;
      while (true)
      {
        return i1;
        int i2 = i1 & 0x7F;
        int i3 = o();
        if (i3 >= 0)
        {
          i1 = i2 | i3 << 7;
          continue;
        }
        int i4 = i2 | (i3 & 0x7F) << 7;
        int i5 = o();
        if (i5 >= 0)
        {
          i1 = i4 | i5 << 14;
          continue;
        }
        i6 = i4 | (i5 & 0x7F) << 14;
        i7 = o();
        if (i7 < 0)
          break;
        i1 = i6 | i7 << 21;
      }
      int i8 = i6 | (i7 & 0x7F) << 21;
      i9 = o();
      i1 = i8 | i9 << 28;
    }
    while (i9 >= 0);
    for (int i10 = 0; ; i10++)
    {
      if (i10 >= 5)
        break label160;
      if (o() >= 0)
        break;
    }
    label160: throw ae.d();
  }

  public final long j()
  {
    int i1 = 0;
    long l1 = 0L;
    while (i1 < 64)
    {
      int i2 = o();
      l1 |= (i2 & 0x7F) << i1;
      if ((i2 & 0x80) == 0)
        return l1;
      i1 += 7;
    }
    throw ae.d();
  }

  public final int k()
  {
    int i1 = o();
    int i2 = o();
    int i3 = o();
    int i4 = o();
    return i1 & 0xFF | (i2 & 0xFF) << 8 | (i3 & 0xFF) << 16 | (i4 & 0xFF) << 24;
  }

  public final long l()
  {
    int i1 = o();
    int i2 = o();
    int i3 = o();
    int i4 = o();
    int i5 = o();
    int i6 = o();
    int i7 = o();
    int i8 = o();
    return 0xFF & i1 | (0xFF & i2) << 8 | (0xFF & i3) << 16 | (0xFF & i4) << 24 | (0xFF & i5) << 32 | (0xFF & i6) << 40 | (0xFF & i7) << 48 | (0xFF & i8) << 56;
  }

  public final int m()
  {
    if (this.j == 2147483647);
    int i1;
    for (int i2 = -1; ; i2 = this.j - i1)
    {
      return i2;
      i1 = this.i + this.e;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.j
 * JD-Core Version:    0.6.0
 */