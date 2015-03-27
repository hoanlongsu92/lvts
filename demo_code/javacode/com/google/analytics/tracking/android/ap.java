package com.google.analytics.tracking.android;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

final class ap
{
  static String a(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new AssertionError("URL encoding failed for: " + paramString);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ap
 * JD-Core Version:    0.6.0
 */