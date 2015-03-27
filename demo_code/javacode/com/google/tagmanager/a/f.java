package com.google.tagmanager.a;

import java.util.NoSuchElementException;

final class f
  implements h
{
  private int b;
  private final int c;

  private f(e parame)
  {
    this.b = parame.b();
    this.c = (this.b + parame.a());
  }

  public final byte a()
  {
    if (this.b >= this.c)
      throw new NoSuchElementException();
    byte[] arrayOfByte = this.a.c;
    int i = this.b;
    this.b = (i + 1);
    return arrayOfByte[i];
  }

  public final boolean hasNext()
  {
    if (this.b < this.c);
    for (int i = 1; ; i = 0)
      return i;
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.f
 * JD-Core Version:    0.6.0
 */