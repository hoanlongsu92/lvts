package com.google.tagmanager.a;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class ax
  implements Iterator
{
  public final boolean hasNext()
  {
    return false;
  }

  public final Object next()
  {
    throw new NoSuchElementException();
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.ax
 * JD-Core Version:    0.6.0
 */