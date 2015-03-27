package com.google.tagmanager;

import com.google.analytics.a.a.p;

public final class c
{
  private final r a;
  private d b;
  private o c;
  private b d;
  private volatile String e;
  private volatile p f;
  private volatile long g;
  private volatile int h;

  private void c()
  {
    monitorenter;
    try
    {
      if ((this.b != null) && (!e()))
        if (this.f != null)
          this.f.g();
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

  private o d()
  {
    monitorenter;
    try
    {
      o localo = this.c;
      monitorexit;
      return localo;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  private boolean e()
  {
    if (this.a.a() == w.b);
    for (int i = 1; ; i = 0)
      return i;
  }

  public final void a()
  {
    int i = 1;
    monitorenter;
    try
    {
      if (d() == null)
        i.b("refresh called for closed container");
      while (true)
      {
        return;
        try
        {
          if (!e())
            break;
          i.b("Container is in DEFAULT_CONTAINER mode. Refresh request is ignored.");
        }
        catch (Exception localException)
        {
          i.a("Calling refresh() throws an exception: " + localException.getMessage());
        }
      }
    }
    finally
    {
      monitorexit;
    }
    long l1 = this.d.a();
    if (this.g == 0L)
      this.h = (-1 + this.h);
    while (true)
    {
      if (i != 0)
      {
        i.d("Container refresh requested");
        c();
        this.g = l1;
        break;
        long l2 = l1 - this.g;
        if (l2 >= 5000L)
        {
          if (this.h < 30)
            this.h = Math.min(30, (int)Math.floor(l2 / 900000L) + this.h);
          if (this.h > 0)
          {
            this.h = (-1 + this.h);
            continue;
          }
        }
      }
      else
      {
        i.d("Container refresh was called too often. Ignored.");
        break;
      }
      i = 0;
    }
  }

  final void a(String paramString)
  {
    monitorenter;
    try
    {
      this.e = paramString;
      if (this.b != null);
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

  final String b()
  {
    return this.e;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.c
 * JD-Core Version:    0.6.0
 */