package com.google.analytics.tracking.android;

import android.util.Log;

final class m
  implements ar
{
  private as a = as.b;

  private static String e(String paramString)
  {
    return Thread.currentThread().toString() + ": " + paramString;
  }

  public final as a()
  {
    return this.a;
  }

  public final void a(as paramas)
  {
    this.a = paramas;
  }

  public final void a(String paramString)
  {
    if (this.a.ordinal() <= as.a.ordinal())
      Log.v("GAV3", e(paramString));
  }

  public final void b(String paramString)
  {
    if (this.a.ordinal() <= as.b.ordinal())
      Log.i("GAV3", e(paramString));
  }

  public final void c(String paramString)
  {
    if (this.a.ordinal() <= as.c.ordinal())
      Log.w("GAV3", e(paramString));
  }

  public final void d(String paramString)
  {
    if (this.a.ordinal() <= as.d.ordinal())
      Log.e("GAV3", e(paramString));
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.m
 * JD-Core Version:    0.6.0
 */