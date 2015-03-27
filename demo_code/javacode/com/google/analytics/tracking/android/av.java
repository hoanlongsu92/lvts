package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;

final class av
  implements au
{
  private final Context a;
  private String b;

  public av(Context paramContext)
  {
    if (paramContext == null)
      throw new NullPointerException("Context cannot be null");
    this.a = paramContext.getApplicationContext();
  }

  private int a(String paramString1, String paramString2)
  {
    int i;
    if (this.a == null)
    {
      i = 0;
      return i;
    }
    if (this.b != null);
    for (String str = this.b; ; str = this.a.getPackageName())
    {
      i = this.a.getResources().getIdentifier(paramString1, paramString2, str);
      break;
    }
  }

  public final int a(String paramString, int paramInt)
  {
    int i = a(paramString, "integer");
    if (i == 0);
    while (true)
    {
      return paramInt;
      try
      {
        int j = Integer.parseInt(this.a.getString(i));
        paramInt = j;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        aq.d("NumberFormatException parsing " + this.a.getString(i));
      }
    }
  }

  public final String a(String paramString)
  {
    int i = a(paramString, "string");
    if (i == 0);
    for (String str = null; ; str = this.a.getString(i))
      return str;
  }

  public final Double b(String paramString)
  {
    Object localObject = null;
    String str = a(paramString);
    if (TextUtils.isEmpty(str));
    while (true)
    {
      return localObject;
      try
      {
        Double localDouble = Double.valueOf(Double.parseDouble(str));
        localObject = localDouble;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        aq.d("NumberFormatException parsing " + str);
      }
    }
  }

  public final boolean c(String paramString)
  {
    int i = a(paramString, "bool");
    if (i == 0);
    for (boolean bool = false; ; bool = "true".equalsIgnoreCase(this.a.getString(i)))
      return bool;
  }

  public final void d(String paramString)
  {
    this.b = paramString;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.av
 * JD-Core Version:    0.6.0
 */