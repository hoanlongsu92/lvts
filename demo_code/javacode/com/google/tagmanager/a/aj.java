package com.google.tagmanager.a;

import java.util.NoSuchElementException;

final class aj
  implements h
{
  private int b = 0;
  private final int c;

  private aj(ai paramai)
  {
    this.c = paramai.a();
  }

  public final byte a()
  {
    try
    {
      byte[] arrayOfByte = this.a.c;
      int i = this.b;
      this.b = (i + 1);
      int j = arrayOfByte[i];
      return j;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new NoSuchElementException(localArrayIndexOutOfBoundsException.getMessage());
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
 * Qualified Name:     com.google.tagmanager.a.aj
 * JD-Core Version:    0.6.0
 */