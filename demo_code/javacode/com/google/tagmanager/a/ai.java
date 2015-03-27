package com.google.tagmanager.a;

import java.io.OutputStream;

class ai extends g
{
  protected final byte[] c;
  private int d = 0;

  ai(byte[] paramArrayOfByte)
  {
    this.c = paramArrayOfByte;
  }

  public byte a(int paramInt)
  {
    return this.c[paramInt];
  }

  public int a()
  {
    return this.c.length;
  }

  protected final int a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt2 + b();
    return bg.a(paramInt1, this.c, i, i + paramInt3);
  }

  public final String a(String paramString)
  {
    return new String(this.c, b(), a(), paramString);
  }

  protected void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    System.arraycopy(this.c, paramInt1, paramArrayOfByte, paramInt2, paramInt3);
  }

  final boolean a(ai paramai, int paramInt1, int paramInt2)
  {
    if (paramInt2 > paramai.a())
      throw new IllegalArgumentException("Length too large: " + paramInt2 + a());
    if (paramInt1 + paramInt2 > paramai.a())
      throw new IllegalArgumentException("Ran off end of other: " + paramInt1 + ", " + paramInt2 + ", " + paramai.a());
    byte[] arrayOfByte1 = this.c;
    byte[] arrayOfByte2 = paramai.c;
    int i = paramInt2 + b();
    int j = b();
    int k = paramInt1 + paramai.b();
    if (j < i)
      if (arrayOfByte1[j] == arrayOfByte2[k]);
    for (int m = 0; ; m = 1)
    {
      return m;
      j++;
      k++;
      break;
    }
  }

  protected int b()
  {
    return 0;
  }

  protected final int b(int paramInt1, int paramInt2, int paramInt3)
  {
    byte[] arrayOfByte = this.c;
    int i = paramInt2 + b();
    for (int j = i; j < i + paramInt3; j++)
      paramInt1 = paramInt1 * 31 + arrayOfByte[j];
    return paramInt1;
  }

  final void b(OutputStream paramOutputStream, int paramInt1, int paramInt2)
  {
    paramOutputStream.write(this.c, paramInt1 + b(), paramInt2);
  }

  public h c()
  {
    return new aj(this, 0);
  }

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == this)
      bool = true;
    while (true)
    {
      return bool;
      if (!(paramObject instanceof g))
      {
        bool = false;
        continue;
      }
      if (a() != ((g)paramObject).a())
      {
        bool = false;
        continue;
      }
      if (a() == 0)
      {
        bool = true;
        continue;
      }
      if ((paramObject instanceof ai))
      {
        bool = a((ai)paramObject, 0, a());
        continue;
      }
      if (!(paramObject instanceof ap))
        break;
      bool = paramObject.equals(this);
    }
    throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + paramObject.getClass());
  }

  public final boolean g()
  {
    int i = b();
    return bg.a(this.c, i, i + a());
  }

  public final j h()
  {
    return j.a(this);
  }

  public int hashCode()
  {
    int i = this.d;
    if (i == 0)
    {
      int j = a();
      i = b(j, 0, j);
      if (i == 0)
        i = 1;
      this.d = i;
    }
    return i;
  }

  protected final int j()
  {
    return 0;
  }

  protected final boolean k()
  {
    return true;
  }

  protected final int l()
  {
    return this.d;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.ai
 * JD-Core Version:    0.6.0
 */