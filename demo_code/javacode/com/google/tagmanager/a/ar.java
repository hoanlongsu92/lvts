package com.google.tagmanager.a;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.NoSuchElementException;

final class ar
  implements Iterator
{
  private final Deque a = new ArrayDeque(ap.b().length);
  private ai b = a(paramg);

  private ar(g paramg)
  {
  }

  private ai a(g paramg)
  {
    ap localap;
    for (g localg = paramg; (localg instanceof ap); localg = ap.a(localap))
    {
      localap = (ap)localg;
      this.a.push(localap);
    }
    return (ai)localg;
  }

  private ai b()
  {
    ai localai;
    if (this.a.isEmpty())
      localai = null;
    while (true)
    {
      return localai;
      localai = a(ap.b((ap)this.a.pop()));
      if (localai.d())
        break;
    }
  }

  public final ai a()
  {
    if (this.b == null)
      throw new NoSuchElementException();
    ai localai = this.b;
    this.b = b();
    return localai;
  }

  public final boolean hasNext()
  {
    if (this.b != null);
    for (int i = 1; ; i = 0)
      return i;
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.ar
 * JD-Core Version:    0.6.0
 */