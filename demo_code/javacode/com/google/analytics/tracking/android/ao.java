package com.google.analytics.tracking.android;

import android.text.TextUtils;

final class ao
{
  private String a = null;
  private final long b;
  private final long c;
  private String d = "https:";

  ao(long paramLong1, long paramLong2)
  {
    this.b = paramLong1;
    this.c = paramLong2;
  }

  final String a()
  {
    return this.a;
  }

  final void a(String paramString)
  {
    this.a = paramString;
  }

  final long b()
  {
    return this.b;
  }

  final void b(String paramString)
  {
    if ((paramString == null) || (TextUtils.isEmpty(paramString.trim())));
    while (true)
    {
      return;
      if (paramString.toLowerCase().startsWith("http:"))
      {
        this.d = "http:";
        continue;
      }
    }
  }

  final long c()
  {
    return this.c;
  }

  final String d()
  {
    return this.d;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ao
 * JD-Core Version:    0.6.0
 */