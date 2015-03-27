package com.google.tagmanager.a;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class ag extends AbstractList
  implements ah, RandomAccess
{
  public static final ah a = new bd(new ag());
  private final List b;

  public ag()
  {
    this.b = new ArrayList();
  }

  public ag(ah paramah)
  {
    this.b = new ArrayList(paramah.size());
    addAll(paramah);
  }

  private static String a(Object paramObject)
  {
    String str;
    if ((paramObject instanceof String))
      str = (String)paramObject;
    while (true)
    {
      return str;
      if ((paramObject instanceof g))
      {
        str = ((g)paramObject).f();
        continue;
      }
      str = ab.b((byte[])paramObject);
    }
  }

  public final List a()
  {
    return Collections.unmodifiableList(this.b);
  }

  public final void a(g paramg)
  {
    this.b.add(paramg);
    this.modCount = (1 + this.modCount);
  }

  public final boolean addAll(int paramInt, Collection paramCollection)
  {
    if ((paramCollection instanceof RandomAccess))
      paramCollection = ((RandomAccess)paramCollection).a();
    boolean bool = this.b.addAll(paramInt, paramCollection);
    this.modCount = (1 + this.modCount);
    return bool;
  }

  public final boolean addAll(Collection paramCollection)
  {
    return addAll(size(), paramCollection);
  }

  public final void clear()
  {
    this.b.clear();
    this.modCount = (1 + this.modCount);
  }

  public final int size()
  {
    return this.b.size();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.ag
 * JD-Core Version:    0.6.0
 */