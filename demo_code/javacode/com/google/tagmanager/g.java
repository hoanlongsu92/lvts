package com.google.tagmanager;

import android.util.Log;

final class g
  implements j
{
  private k a = k.d;

  public final void a(String paramString)
  {
    if (this.a.ordinal() <= k.e.ordinal())
      Log.e("GoogleTagManager", paramString);
  }

  public final void b(String paramString)
  {
    if (this.a.ordinal() <= k.d.ordinal())
      Log.w("GoogleTagManager", paramString);
  }

  public final void c(String paramString)
  {
    if (this.a.ordinal() <= k.c.ordinal())
      Log.i("GoogleTagManager", paramString);
  }

  public final void d(String paramString)
  {
    if (this.a.ordinal() <= k.a.ordinal())
      Log.v("GoogleTagManager", paramString);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.g
 * JD-Core Version:    0.6.0
 */