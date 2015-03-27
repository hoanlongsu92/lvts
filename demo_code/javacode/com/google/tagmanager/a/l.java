package com.google.tagmanager.a;

import java.io.OutputStream;

public final class l
{
  private final byte[] a;
  private final int b;
  private int c;
  private int d = 0;
  private final OutputStream e;

  private l(OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    this.e = paramOutputStream;
    this.a = paramArrayOfByte;
    this.c = 0;
    this.b = paramArrayOfByte.length;
  }

  public static l a(OutputStream paramOutputStream)
  {
    return new l(paramOutputStream, new byte[4096]);
  }

  private void b()
  {
    if (this.e == null)
      throw new m();
    this.e.write(this.a, 0, this.c);
    this.c = 0;
  }

  public final void a()
  {
    if (this.e != null)
      b();
  }

  public final void a(int paramInt)
  {
    int i = (byte)paramInt;
    if (this.c == this.b)
      b();
    byte[] arrayOfByte = this.a;
    int j = this.c;
    this.c = (j + 1);
    arrayOfByte[j] = i;
    this.d = (1 + this.d);
  }

  public final void a(g paramg, int paramInt)
  {
    if (this.b - this.c >= paramInt)
    {
      paramg.b(this.a, 0, this.c, paramInt);
      this.c = (paramInt + this.c);
    }
    while (true)
    {
      this.d = (paramInt + this.d);
      return;
      int i = this.b - this.c;
      paramg.b(this.a, 0, this.c, i);
      paramInt -= i;
      this.c = this.b;
      this.d = (i + this.d);
      b();
      if (paramInt <= this.b)
      {
        paramg.b(this.a, i, 0, paramInt);
        this.c = paramInt;
        continue;
      }
      paramg.a(this.e, i, paramInt);
    }
  }

  public final void b(int paramInt)
  {
    while (true)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        a(paramInt);
        return;
      }
      a(0x80 | paramInt & 0x7F);
      paramInt >>>= 7;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.l
 * JD-Core Version:    0.6.0
 */