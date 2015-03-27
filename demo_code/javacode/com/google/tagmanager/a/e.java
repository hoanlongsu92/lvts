package com.google.tagmanager.a;

final class e extends ai
{
  private final int d;
  private final int e;

  e(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    super(paramArrayOfByte);
    if (paramInt1 < 0)
      throw new IllegalArgumentException("Offset too small: " + paramInt1);
    if (paramInt2 < 0)
      throw new IllegalArgumentException("Length too small: " + paramInt1);
    if (paramInt1 + paramInt2 > paramArrayOfByte.length)
      throw new IllegalArgumentException("Offset+Length too large: " + paramInt1 + "+" + paramInt2);
    this.d = paramInt1;
    this.e = paramInt2;
  }

  public final byte a(int paramInt)
  {
    if (paramInt < 0)
      throw new ArrayIndexOutOfBoundsException("Index too small: " + paramInt);
    if (paramInt >= this.e)
      throw new ArrayIndexOutOfBoundsException("Index too large: " + paramInt + ", " + this.e);
    return this.c[(paramInt + this.d)];
  }

  public final int a()
  {
    return this.e;
  }

  protected final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    System.arraycopy(this.c, paramInt1 + this.d, paramArrayOfByte, paramInt2, paramInt3);
  }

  protected final int b()
  {
    return this.d;
  }

  public final h c()
  {
    return new f(this, 0);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.e
 * JD-Core Version:    0.6.0
 */