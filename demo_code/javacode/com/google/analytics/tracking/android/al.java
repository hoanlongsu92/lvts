package com.google.analytics.tracking.android;

import java.util.SortedSet;
import java.util.TreeSet;

final class al
{
  private static final al d = new al();
  private SortedSet a = new TreeSet();
  private StringBuilder b = new StringBuilder();
  private boolean c = false;

  public static al a()
  {
    return d;
  }

  public final void a(am paramam)
  {
    monitorenter;
    try
    {
      if (!this.c)
      {
        this.a.add(paramam);
        this.b.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(paramam.ordinal()));
      }
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void a(boolean paramBoolean)
  {
    monitorenter;
    try
    {
      this.c = paramBoolean;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final String b()
  {
    monitorenter;
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = 6;
      int j = 0;
      while (this.a.size() > 0)
      {
        am localam = (am)this.a.first();
        this.a.remove(localam);
        int k = localam.ordinal();
        while (k >= i)
        {
          localStringBuilder.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(j));
          i += 6;
          j = 0;
        }
        j += (1 << localam.ordinal() % 6);
      }
      if ((j > 0) || (localStringBuilder.length() == 0))
        localStringBuilder.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(j));
      this.a.clear();
      String str = localStringBuilder.toString();
      monitorexit;
      return str;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final String c()
  {
    monitorenter;
    try
    {
      if (this.b.length() > 0)
        this.b.insert(0, ".");
      String str = this.b.toString();
      this.b = new StringBuilder();
      monitorexit;
      return str;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.al
 * JD-Core Version:    0.6.0
 */