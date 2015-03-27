package com.google.tagmanager.a;

import java.io.OutputStream;
import java.util.ArrayList;

public final class i extends OutputStream
{
  private static final byte[] a = new byte[0];
  private final int b = 128;
  private final ArrayList c = new ArrayList();
  private int d;
  private byte[] e = new byte[''];
  private int f;

  private void a(int paramInt)
  {
    this.c.add(new ai(this.e));
    this.d += this.e.length;
    this.e = new byte[Math.max(this.b, Math.max(paramInt, this.d >>> 1))];
    this.f = 0;
  }

  private int b()
  {
    monitorenter;
    try
    {
      int i = this.d;
      int j = this.f;
      int k = i + j;
      monitorexit;
      return k;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final g a()
  {
    monitorenter;
    try
    {
      if (this.f < this.e.length)
        if (this.f > 0)
        {
          byte[] arrayOfByte = new byte[this.f];
          System.arraycopy(this.e, 0, arrayOfByte, 0, this.f);
          this.c.add(new ai(arrayOfByte));
        }
      while (true)
      {
        this.d += this.f;
        this.f = 0;
        g localg = g.a(this.c);
        return localg;
        this.c.add(new ai(this.e));
        this.e = a;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.toHexString(System.identityHashCode(this));
    arrayOfObject[1] = Integer.valueOf(b());
    return String.format("<ByteString.Output@%s size=%d>", arrayOfObject);
  }

  public final void write(int paramInt)
  {
    monitorenter;
    try
    {
      if (this.f == this.e.length)
        a(1);
      byte[] arrayOfByte = this.e;
      int i = this.f;
      this.f = (i + 1);
      arrayOfByte[i] = (byte)paramInt;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    monitorenter;
    try
    {
      if (paramInt2 <= this.e.length - this.f)
        System.arraycopy(paramArrayOfByte, paramInt1, this.e, this.f, paramInt2);
      int k;
      for (this.f = (paramInt2 + this.f); ; this.f = k)
      {
        return;
        int i = this.e.length - this.f;
        System.arraycopy(paramArrayOfByte, paramInt1, this.e, this.f, i);
        int j = paramInt1 + i;
        k = paramInt2 - i;
        a(k);
        System.arraycopy(paramArrayOfByte, j, this.e, 0, k);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.i
 * JD-Core Version:    0.6.0
 */