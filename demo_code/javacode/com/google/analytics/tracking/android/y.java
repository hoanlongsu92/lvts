package com.google.analytics.tracking.android;

import android.content.Context;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;

final class y
  implements bb, d, e
{
  private volatile long a;
  private volatile ac b;
  private volatile a c;
  private f d;
  private f e = null;
  private final an f;
  private final h g;
  private final Context h;
  private final Queue i = new ConcurrentLinkedQueue();
  private volatile int j;
  private volatile Timer k;
  private volatile Timer l;
  private volatile Timer m;
  private boolean n;
  private boolean o;
  private boolean p;
  private boolean q;
  private l r;
  private long s = 300000L;

  y(Context paramContext, h paramh)
  {
    this(paramContext, paramh, an.a(paramContext));
  }

  private y(Context paramContext, h paramh, an paraman)
  {
    this.h = paramContext;
    this.g = paramh;
    this.f = paraman;
    this.r = new z(this);
    this.j = 0;
    this.b = ac.g;
  }

  private static Timer a(Timer paramTimer)
  {
    if (paramTimer != null)
      paramTimer.cancel();
    return null;
  }

  private void f()
  {
    this.k = a(this.k);
    this.l = a(this.l);
    this.m = a(this.m);
  }

  private void g()
  {
    monitorenter;
    while (true)
    {
      try
      {
        if (Thread.currentThread().equals(this.g.d()))
          continue;
        this.g.c().add(new aa(this));
        return;
        if (!this.o)
          continue;
        aq.c("clearHits called");
        this.i.clear();
        switch (ab.a[this.b.ordinal()])
        {
        default:
          this.o = true;
          switch (ab.a[this.b.ordinal()])
          {
          case 1:
            if (this.i.isEmpty())
              break label273;
            af localaf2 = (af)this.i.poll();
            aq.c("Sending hit to store  " + localaf2);
            this.d.a(localaf2.a(), localaf2.b(), localaf2.c(), localaf2.d());
            continue;
          case 2:
          case 6:
          case 3:
          case 4:
          case 5:
          }
        case 1:
        case 2:
        }
      }
      finally
      {
        monitorexit;
      }
      this.d.a();
      this.o = false;
      continue;
      this.c.a();
      this.o = false;
      continue;
      label273: if (!this.n)
        continue;
      h();
      continue;
      if (!this.i.isEmpty())
      {
        af localaf1 = (af)this.i.peek();
        aq.c("Sending hit to service   " + localaf1);
        if (!this.f.b())
          this.c.a(localaf1.a(), localaf1.b(), localaf1.c(), localaf1.d());
        while (true)
        {
          this.i.poll();
          break;
          aq.c("Dry run enabled. Hit not actually sent to service.");
        }
      }
      this.a = this.r.a();
      continue;
      aq.c("Need to reconnect");
      if (this.i.isEmpty())
        continue;
      j();
      continue;
    }
  }

  private void h()
  {
    this.d.b();
    this.n = false;
  }

  private void i()
  {
    monitorenter;
    while (true)
    {
      try
      {
        ac localac1 = this.b;
        ac localac2 = ac.c;
        if (localac1 == localac2)
          return;
        f();
        aq.c("falling back to local store");
        if (this.e != null)
        {
          this.d = this.e;
          this.b = ac.c;
          g();
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      v localv = v.a();
      localv.a(this.h, this.g);
      this.d = localv.b();
    }
  }

  private void j()
  {
    monitorenter;
    while (true)
    {
      try
      {
        if ((!this.q) && (this.c != null))
        {
          ac localac1 = this.b;
          ac localac2 = ac.c;
          if (localac1 != localac2)
            try
            {
              this.j = (1 + this.j);
              a(this.l);
              this.b = ac.a;
              this.l = new Timer("Failed Connect");
              this.l.schedule(new ae(this, 0), 3000L);
              aq.c("connecting to Analytics service");
              this.c.b();
              monitorexit;
              return;
            }
            catch (SecurityException localSecurityException)
            {
              aq.d("security exception on connectToService");
              i();
              continue;
            }
        }
      }
      finally
      {
        monitorexit;
      }
      aq.d("client not initialized.");
      i();
    }
  }

  private void k()
  {
    monitorenter;
    try
    {
      if ((this.c != null) && (this.b == ac.b))
      {
        this.b = ac.f;
        this.c.c();
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

  private void l()
  {
    this.k = a(this.k);
    this.k = new Timer("Service Reconnect");
    this.k.schedule(new ag(this, 0), 5000L);
  }

  public final void a()
  {
    monitorenter;
    try
    {
      this.l = a(this.l);
      this.j = 0;
      aq.c("Connected to service");
      this.b = ac.b;
      if (this.p)
      {
        k();
        this.p = false;
      }
      while (true)
      {
        return;
        g();
        this.m = a(this.m);
        this.m = new Timer("disconnect check");
        this.m.schedule(new ad(this, 0), this.s);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void a(int paramInt)
  {
    monitorenter;
    try
    {
      this.b = ac.e;
      if (this.j < 2)
      {
        aq.d("Service unavailable (code=" + paramInt + "), will retry.");
        l();
      }
      while (true)
      {
        return;
        aq.d("Service unavailable (code=" + paramInt + "), using local store.");
        i();
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void a(Map paramMap, long paramLong, String paramString, List paramList)
  {
    aq.c("putHit called");
    this.i.add(new af(paramMap, paramLong, paramString, paramList));
    g();
  }

  public final void b()
  {
    monitorenter;
    while (true)
    {
      try
      {
        if (this.b != ac.f)
          continue;
        aq.c("Disconnected from service");
        f();
        this.b = ac.g;
        return;
        aq.c("Unexpected disconnect.");
        this.b = ac.e;
        if (this.j < 2)
        {
          l();
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      i();
    }
  }

  public final void c()
  {
    switch (ab.a[this.b.ordinal()])
    {
    default:
      this.n = true;
    case 2:
    case 1:
    }
    while (true)
    {
      return;
      h();
    }
  }

  public final void d()
  {
    monitorenter;
    while (true)
    {
      try
      {
        boolean bool = this.q;
        if (bool)
          return;
        aq.c("setForceLocalDispatch called.");
        this.q = true;
        switch (ab.a[this.b.ordinal()])
        {
        case 1:
        case 2:
          k();
          continue;
        case 3:
        }
      }
      finally
      {
        monitorexit;
      }
      this.p = true;
      continue;
    }
  }

  public final void e()
  {
    if (this.c != null);
    while (true)
    {
      return;
      this.c = new b(this.h, this, this);
      j();
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.y
 * JD-Core Version:    0.6.0
 */