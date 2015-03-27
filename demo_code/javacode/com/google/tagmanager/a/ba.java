package com.google.tagmanager.a;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class ba
  implements Iterator
{
  private int b = -1;
  private boolean c;
  private Iterator d;

  private ba(au paramau)
  {
  }

  private Iterator a()
  {
    if (this.d == null)
      this.d = au.c(this.a).entrySet().iterator();
    return this.d;
  }

  public final boolean hasNext()
  {
    if ((1 + this.b < au.b(this.a).size()) || (a().hasNext()));
    for (int i = 1; ; i = 0)
      return i;
  }

  public final void remove()
  {
    if (!this.c)
      throw new IllegalStateException("remove() was called before next()");
    this.c = false;
    au.a(this.a);
    if (this.b < au.b(this.a).size())
    {
      au localau = this.a;
      int i = this.b;
      this.b = (i - 1);
      au.a(localau, i);
    }
    while (true)
    {
      return;
      a().remove();
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.ba
 * JD-Core Version:    0.6.0
 */