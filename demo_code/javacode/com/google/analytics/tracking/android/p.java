package com.google.analytics.tracking.android;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public final class p extends be
{
  private static p a;
  private static String b;
  private final an c;
  private boolean d;
  private boolean e = false;
  private int f = 0;
  private long g;
  private Context h;
  private final Map i = new HashMap();
  private au j;
  private ba k;
  private l l;
  private boolean m = false;
  private boolean n = false;

  private p(Context paramContext)
  {
    this(paramContext, new av(paramContext), an.a(paramContext), v.a());
  }

  private p(Context paramContext, au paramau, an paraman, ba paramba)
  {
    super("easy_tracker", paraman);
    if (b != null)
      paramau.d(b);
    this.c = paraman;
    if (paramContext == null)
      aq.a("Context cannot be null");
    this.h = paramContext.getApplicationContext();
    this.k = paramba;
    this.j = paramau;
    aq.c("Starting EasyTracker.");
    String str1 = this.j.a("ga_trackingId");
    if (TextUtils.isEmpty(str1))
      str1 = this.j.a("ga_api_key");
    a("&tid", str1);
    aq.c("[EasyTracker] trackingId loaded: " + str1);
    String str2 = this.j.a("ga_appName");
    if (!TextUtils.isEmpty(str2))
    {
      aq.c("[EasyTracker] app name loaded: " + str2);
      a("&an", str2);
    }
    String str3 = this.j.a("ga_appVersion");
    if (str3 != null)
    {
      aq.c("[EasyTracker] app version loaded: " + str3);
      a("&av", str3);
    }
    String str4 = this.j.a("ga_logLevel");
    if (str4 != null)
    {
      as localas = a(str4);
      if (localas != null)
      {
        aq.c("[EasyTracker] log level loaded: " + localas);
        this.c.d().a(localas);
      }
    }
    Double localDouble = this.j.b("ga_sampleFrequency");
    if (localDouble == null)
      localDouble = new Double(this.j.a("ga_sampleRate", 100));
    if (localDouble.doubleValue() != 100.0D)
      a("&sf", Double.toString(localDouble.doubleValue()));
    aq.c("[EasyTracker] sample rate loaded: " + localDouble);
    int i1 = this.j.a("ga_dispatchPeriod", 1800);
    aq.c("[EasyTracker] dispatch period loaded: " + i1);
    this.k.a(i1);
    this.g = (1000 * this.j.a("ga_sessionTimeout", 30));
    aq.c("[EasyTracker] session timeout loaded: " + this.g);
    if ((this.j.c("ga_autoActivityTracking")) || (this.j.c("ga_auto_activity_tracking")));
    for (boolean bool1 = true; ; bool1 = false)
    {
      this.e = bool1;
      aq.c("[EasyTracker] auto activity tracking loaded: " + this.e);
      boolean bool2 = this.j.c("ga_anonymizeIp");
      if (bool2)
      {
        a("&aip", "1");
        aq.c("[EasyTracker] anonymize ip loaded: " + bool2);
      }
      this.d = this.j.c("ga_reportUncaughtExceptions");
      if (this.d)
      {
        Thread.setDefaultUncaughtExceptionHandler(new s(this, this.k, Thread.getDefaultUncaughtExceptionHandler(), this.h));
        aq.c("[EasyTracker] report uncaught exceptions loaded: " + this.d);
      }
      boolean bool3 = this.j.c("ga_dryRun");
      this.c.a(bool3);
      this.l = new q(this);
      return;
    }
  }

  private static as a(String paramString)
  {
    try
    {
      as localas2 = as.valueOf(paramString.toUpperCase());
      localas1 = localas2;
      return localas1;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        as localas1 = null;
    }
  }

  public static p a(Context paramContext)
  {
    if (a == null)
      a = new p(paramContext);
    return a;
  }

  public final void a(Map paramMap)
  {
    if (this.n)
    {
      paramMap.put("&sc", "start");
      this.n = false;
    }
    super.a(paramMap);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.p
 * JD-Core Version:    0.6.0
 */