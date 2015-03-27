package com.google.analytics.tracking.android;

import android.content.Context;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class an extends bf
{
  private static an g;
  private boolean a;
  private h b;
  private Context c;
  private volatile Boolean d = Boolean.valueOf(false);
  private final Map e = new HashMap();
  private ar f;

  private an(Context paramContext)
  {
    this(paramContext, ah.a(paramContext));
  }

  private an(Context paramContext, h paramh)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("context cannot be null");
    this.c = paramContext.getApplicationContext();
    this.b = paramh;
    i.a(this.c);
    az.a(this.c);
    j.a(this.c);
    this.f = new m();
  }

  static an a()
  {
    monitorenter;
    try
    {
      an localan = g;
      monitorexit;
      return localan;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static an a(Context paramContext)
  {
    monitorenter;
    try
    {
      if (g == null)
        g = new an(paramContext);
      an localan = g;
      monitorexit;
      return localan;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  final void a(Map paramMap)
  {
    monitorenter;
    if (paramMap == null)
      try
      {
        throw new IllegalArgumentException("hit cannot be null");
      }
      finally
      {
        monitorexit;
      }
    bg.a(paramMap, "&ul", bg.a(Locale.getDefault()));
    bg.a(paramMap, "&sr", az.a().a("&sr"));
    paramMap.put("&_u", al.a().c());
    al.a().b();
    this.b.a(paramMap);
    monitorexit;
  }

  public final void a(boolean paramBoolean)
  {
    al.a().a(am.ac);
    this.a = paramBoolean;
  }

  public final boolean b()
  {
    al.a().a(am.ad);
    return this.a;
  }

  public final boolean c()
  {
    al.a().a(am.R);
    return this.d.booleanValue();
  }

  public final ar d()
  {
    return this.f;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.an
 * JD-Core Version:    0.6.0
 */