package com.google.tagmanager.a;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

class au extends AbstractMap
{
  private final int a;
  private List b;
  private Map c;
  private boolean d;
  private volatile bb e;

  private au(int paramInt)
  {
    this.a = paramInt;
    this.b = Collections.emptyList();
    this.c = Collections.emptyMap();
  }

  private int a(Comparable paramComparable)
  {
    int i = -1 + this.b.size();
    int m;
    if (i >= 0)
    {
      int i2 = paramComparable.compareTo(((az)this.b.get(i)).a());
      if (i2 > 0);
      for (m = -(i + 2); ; m = i)
      {
        return m;
        if (i2 != 0)
          break;
      }
    }
    while (true)
    {
      if (j <= k)
      {
        int n = (j + k) / 2;
        int i1 = paramComparable.compareTo(((az)this.b.get(n)).a());
        if (i1 < 0)
        {
          k = n - 1;
          continue;
        }
        if (i1 > 0)
        {
          j = n + 1;
          continue;
        }
        m = n;
        break;
      }
      m = -(j + 1);
      break;
      int j = 0;
      int k = i;
    }
  }

  static au a(int paramInt)
  {
    return new av(paramInt);
  }

  private Object c(int paramInt)
  {
    e();
    Object localObject = ((az)this.b.remove(paramInt)).getValue();
    if (!this.c.isEmpty())
    {
      Iterator localIterator = f().entrySet().iterator();
      this.b.add(new az(this, (Map.Entry)localIterator.next()));
      localIterator.remove();
    }
    return localObject;
  }

  private void e()
  {
    if (this.d)
      throw new UnsupportedOperationException();
  }

  private SortedMap f()
  {
    e();
    if ((this.c.isEmpty()) && (!(this.c instanceof TreeMap)))
      this.c = new TreeMap();
    return (SortedMap)this.c;
  }

  public final Object a(Comparable paramComparable, Object paramObject)
  {
    e();
    int i = a(paramComparable);
    Object localObject;
    if (i >= 0)
      localObject = ((az)this.b.get(i)).setValue(paramObject);
    while (true)
    {
      return localObject;
      e();
      if ((this.b.isEmpty()) && (!(this.b instanceof ArrayList)))
        this.b = new ArrayList(this.a);
      int j = -(i + 1);
      if (j >= this.a)
      {
        localObject = f().put(paramComparable, paramObject);
        continue;
      }
      if (this.b.size() == this.a)
      {
        az localaz = (az)this.b.remove(-1 + this.a);
        f().put(localaz.a(), localaz.getValue());
      }
      this.b.add(j, new az(this, paramComparable, paramObject));
      localObject = null;
    }
  }

  public void a()
  {
    if (!this.d)
      if (!this.c.isEmpty())
        break label34;
    label34: for (Map localMap = Collections.emptyMap(); ; localMap = Collections.unmodifiableMap(this.c))
    {
      this.c = localMap;
      this.d = true;
      return;
    }
  }

  public final Map.Entry b(int paramInt)
  {
    return (Map.Entry)this.b.get(paramInt);
  }

  public final boolean b()
  {
    return this.d;
  }

  public final int c()
  {
    return this.b.size();
  }

  public void clear()
  {
    e();
    if (!this.b.isEmpty())
      this.b.clear();
    if (!this.c.isEmpty())
      this.c.clear();
  }

  public boolean containsKey(Object paramObject)
  {
    Comparable localComparable = (Comparable)paramObject;
    if ((a(localComparable) >= 0) || (this.c.containsKey(localComparable)));
    for (int i = 1; ; i = 0)
      return i;
  }

  public final Iterable d()
  {
    if (this.c.isEmpty());
    for (Object localObject = aw.a(); ; localObject = this.c.entrySet())
      return localObject;
  }

  public Set entrySet()
  {
    if (this.e == null)
      this.e = new bb(this, 0);
    return this.e;
  }

  public Object get(Object paramObject)
  {
    Comparable localComparable = (Comparable)paramObject;
    int i = a(localComparable);
    if (i >= 0);
    for (Object localObject = ((az)this.b.get(i)).getValue(); ; localObject = this.c.get(localComparable))
      return localObject;
  }

  public Object remove(Object paramObject)
  {
    e();
    Comparable localComparable = (Comparable)paramObject;
    int i = a(localComparable);
    Object localObject;
    if (i >= 0)
      localObject = c(i);
    while (true)
    {
      return localObject;
      if (this.c.isEmpty())
      {
        localObject = null;
        continue;
      }
      localObject = this.c.remove(localComparable);
    }
  }

  public int size()
  {
    return this.b.size() + this.c.size();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.au
 * JD-Core Version:    0.6.0
 */