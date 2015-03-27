package com.google.analytics.tracking.android;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class af
{
  private final Map a;
  private final long b;
  private final String c;
  private final List d;

  public af(Map paramMap, long paramLong, String paramString, List paramList)
  {
    this.a = paramMap;
    this.b = paramLong;
    this.c = paramString;
    this.d = paramList;
  }

  public final Map a()
  {
    return this.a;
  }

  public final long b()
  {
    return this.b;
  }

  public final String c()
  {
    return this.c;
  }

  public final List d()
  {
    return this.d;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PATH: ");
    localStringBuilder.append(this.c);
    if (this.a != null)
    {
      localStringBuilder.append("  PARAMS: ");
      Iterator localIterator = this.a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append("=");
        localStringBuilder.append((String)localEntry.getValue());
        localStringBuilder.append(",  ");
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.af
 * JD-Core Version:    0.6.0
 */