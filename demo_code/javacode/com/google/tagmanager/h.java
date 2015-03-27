package com.google.tagmanager;

import android.content.Context;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

class h
{
  static Map a = new HashMap();
  private static String b;

  static void a(Context paramContext, String paramString)
  {
    p.a(paramContext, "gtm_install_referrer", "referrer", paramString);
    String str = Uri.parse("http://hostname/?" + paramString).getQueryParameter("conv");
    if ((str != null) && (str.length() > 0))
    {
      a.put(str, paramString);
      p.a(paramContext, "gtm_click_referrers", str, paramString);
    }
  }

  static void a(String paramString)
  {
    monitorenter;
    try
    {
      b = paramString;
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
 * Qualified Name:     com.google.tagmanager.h
 * JD-Core Version:    0.6.0
 */