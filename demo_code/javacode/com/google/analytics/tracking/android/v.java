package com.google.analytics.tracking.android;

import android.content.Context;
import android.os.Handler;

public final class v extends ba
{
  private static final Object a = new Object();
  private static v o;
  private Context b;
  private f c;
  private volatile h d;
  private int e = 1800;
  private boolean f = true;
  private boolean g;
  private String h;
  private boolean i = true;
  private boolean j = true;
  private g k = new w(this);
  private Handler l;
  private u m;
  private boolean n = false;

  public static v a()
  {
    if (o == null)
      o = new v();
    return o;
  }

  public final void a(int paramInt)
  {
    monitorenter;
    try
    {
      if (this.l == null)
      {
        aq.c("Dispatch period set with null handler. Dispatch will run once initialization is complete.");
        this.e = paramInt;
      }
      while (true)
      {
        return;
        al.a().a(am.T);
        if ((!this.n) && (this.i) && (this.e > 0))
          this.l.removeMessages(1, a);
        this.e = paramInt;
        if ((paramInt <= 0) || (this.n) || (!this.i))
          continue;
        this.l.sendMessageDelayed(this.l.obtainMessage(1, a), paramInt * 1000);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  final void a(Context paramContext, h paramh)
  {
    monitorenter;
    while (true)
    {
      try
      {
        Context localContext = this.b;
        if (localContext != null)
          return;
        this.b = paramContext.getApplicationContext();
        if (this.d != null)
          continue;
        this.d = paramh;
        if (!this.f)
          continue;
        c();
        this.f = false;
        if (!this.g)
          continue;
        if (this.d == null)
        {
          aq.c("setForceLocalDispatch() queued. It will be called once initialization is complete.");
          this.g = true;
          this.g = false;
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      al.a().a(am.af);
      this.d.b();
    }
  }

  final void a(boolean paramBoolean)
  {
    monitorenter;
    try
    {
      a(this.n, paramBoolean);
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

  final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    monitorenter;
    while (true)
    {
      try
      {
        if (this.n != paramBoolean1)
          continue;
        boolean bool = this.i;
        if (bool == paramBoolean2)
          return;
        if (((!paramBoolean1) && (paramBoolean2)) || (this.e <= 0))
          continue;
        this.l.removeMessages(1, a);
        if ((paramBoolean1) || (!paramBoolean2) || (this.e <= 0))
          continue;
        this.l.sendMessageDelayed(this.l.obtainMessage(1, a), 1000 * this.e);
        StringBuilder localStringBuilder = new StringBuilder("PowerSaveMode ");
        if (paramBoolean1)
          break label154;
        if (!paramBoolean2)
        {
          break label154;
          aq.c(str);
          this.n = paramBoolean1;
          this.i = paramBoolean2;
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      String str = "terminated.";
      continue;
      label154: str = "initiated.";
    }
  }

  final f b()
  {
    monitorenter;
    try
    {
      if (this.c != null)
        break label80;
      if (this.b == null)
        throw new IllegalStateException("Cant get a store unless we have a context");
    }
    finally
    {
      monitorexit;
    }
    this.c = new aw(this.k, this.b);
    if (this.h != null)
    {
      this.c.c().a(this.h);
      this.h = null;
    }
    label80: if (this.l == null)
    {
      this.l = new Handler(this.b.getMainLooper(), new x(this));
      if (this.e > 0)
        this.l.sendMessageDelayed(this.l.obtainMessage(1, a), 1000 * this.e);
    }
    if ((this.m == null) && (this.j))
    {
      this.m = new u(this);
      this.m.a(this.b);
    }
    f localf = this.c;
    monitorexit;
    return localf;
  }

  public final void c()
  {
    monitorenter;
    try
    {
      if (this.d == null)
      {
        aq.c("Dispatch call queued. Dispatch will run once initialization is complete.");
        this.f = true;
      }
      while (true)
      {
        return;
        al.a().a(am.S);
        this.d.a();
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  final void d()
  {
    monitorenter;
    try
    {
      if ((!this.n) && (this.i) && (this.e > 0))
      {
        this.l.removeMessages(1, a);
        this.l.sendMessage(this.l.obtainMessage(1, a));
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
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.v
 * JD-Core Version:    0.6.0
 */