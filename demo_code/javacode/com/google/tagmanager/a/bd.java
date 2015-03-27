package com.google.tagmanager.a;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class bd extends AbstractList
  implements ah, RandomAccess
{
  private final ah a;

  public bd(ah paramah)
  {
    this.a = paramah;
  }

  public final List a()
  {
    return this.a.a();
  }

  public final void a(g paramg)
  {
    throw new UnsupportedOperationException();
  }

  public final Iterator iterator()
  {
    return new bf(this);
  }

  public final ListIterator listIterator(int paramInt)
  {
    return new be(this, paramInt);
  }

  public final int size()
  {
    return this.a.size();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.bd
 * JD-Core Version:    0.6.0
 */