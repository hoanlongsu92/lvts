package com.google.analytics.tracking.android;

import java.util.HashMap;
import java.util.Map;

public final class at
{
  private Map a = new HashMap();

  public static at a(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    al.a().a(am.Y);
    at localat = new at();
    localat.a("&t", "event");
    localat.a("&ec", paramString1);
    localat.a("&ea", paramString2);
    localat.a("&el", paramString3);
    if (paramLong == null);
    for (String str = null; ; str = Long.toString(paramLong.longValue()))
    {
      localat.a("&ev", str);
      return localat;
    }
  }

  public static at b()
  {
    al.a().a(am.ak);
    at localat = new at();
    localat.a("&t", "appview");
    return localat;
  }

  public final at a(String paramString1, String paramString2)
  {
    al.a().a(am.a);
    if (paramString1 != null)
      this.a.put(paramString1, paramString2);
    while (true)
    {
      return this;
      aq.d(" MapBuilder.set() called with a null paramName.");
    }
  }

  public final Map a()
  {
    return new HashMap(this.a);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.at
 * JD-Core Version:    0.6.0
 */