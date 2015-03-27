package com.google.tagmanager.a;

import java.util.Map.Entry;

final class az
  implements Comparable, Map.Entry
{
  private final Comparable b;
  private Object c;

  az(au paramau, Comparable paramComparable, Object paramObject)
  {
    this.b = paramComparable;
    this.c = paramObject;
  }

  az(au paramau, Map.Entry paramEntry)
  {
    this(paramau, (Map.Entry)paramEntry.getKey(), paramEntry.getValue());
  }

  private static boolean a(Object paramObject1, Object paramObject2)
  {
    boolean bool;
    if (paramObject1 == null)
      if (paramObject2 == null)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = paramObject1.equals(paramObject2);
    }
  }

  public final Comparable a()
  {
    return this.b;
  }

  public final boolean equals(Object paramObject)
  {
    int i = 1;
    if (paramObject == this);
    while (true)
    {
      return i;
      if (!(paramObject instanceof Map.Entry))
      {
        i = 0;
        continue;
      }
      Map.Entry localEntry = (Map.Entry)paramObject;
      if ((a(this.b, localEntry.getKey())) && (a(this.c, localEntry.getValue())))
        continue;
      i = 0;
    }
  }

  public final Object getValue()
  {
    return this.c;
  }

  public final int hashCode()
  {
    int i = 0;
    int j;
    if (this.b == null)
    {
      j = 0;
      if (this.c != null)
        break label33;
    }
    while (true)
    {
      return j ^ i;
      j = this.b.hashCode();
      break;
      label33: i = this.c.hashCode();
    }
  }

  public final Object setValue(Object paramObject)
  {
    au.a(this.a);
    Object localObject = this.c;
    this.c = paramObject;
    return localObject;
  }

  public final String toString()
  {
    return this.b + "=" + this.c;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.az
 * JD-Core Version:    0.6.0
 */