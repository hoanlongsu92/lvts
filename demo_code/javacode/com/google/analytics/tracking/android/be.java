package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public class be
{
  private final String a;
  private final bf b;
  private final Map c = new HashMap();
  private long d = 120000L;
  private long e;
  private final j f;
  private final az g;
  private final i h;

  be(String paramString, bf parambf)
  {
    this(paramString, parambf, j.a(), az.a(), i.a());
  }

  private be(String paramString, bf parambf, j paramj, az paramaz, i parami)
  {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("Tracker name cannot be empty.");
    this.a = paramString;
    this.b = parambf;
    this.c.put("&tid", null);
    this.c.put("useSecure", "1");
    this.f = paramj;
    this.g = paramaz;
    this.h = parami;
  }

  private boolean a()
  {
    monitorenter;
    try
    {
      long l1 = System.currentTimeMillis();
      if (this.d < 120000L)
      {
        long l2 = l1 - this.e;
        if (l2 > 0L)
          this.d = Math.min(120000L, l2 + this.d);
      }
      this.e = l1;
      if (this.d >= 2000L)
        this.d -= 2000L;
      for (int i = 1; ; i = 0)
      {
        return i;
        aq.d("Excessive tracking detected.  Tracking call ignored.");
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void a(String paramString1, String paramString2)
  {
    al.a().a(am.k);
    if (paramString2 == null)
      this.c.remove(paramString1);
    while (true)
    {
      return;
      this.c.put(paramString1, paramString2);
    }
  }

  public void a(Map paramMap)
  {
    al.a().a(am.l);
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(this.c);
    if (paramMap != null)
      localHashMap.putAll(paramMap);
    if (TextUtils.isEmpty((CharSequence)localHashMap.get("&tid")))
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = "&tid";
      aq.d(String.format("Missing tracking id (%s) parameter.", arrayOfObject2));
    }
    String str = (String)localHashMap.get("&t");
    if (TextUtils.isEmpty(str))
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = "&t";
      aq.d(String.format("Missing hit type (%s) parameter.", arrayOfObject1));
      str = "";
    }
    if ((!str.equals("transaction")) && (!str.equals("item")) && (!a()))
      aq.d("Too many hits sent too quickly, rate limiting invoked.");
    while (true)
    {
      return;
      this.b.a(localHashMap);
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.be
 * JD-Core Version:    0.6.0
 */