package com.antispycell.connmonitor;

import android.os.Handler;

final class x
  implements Runnable
{
  x(w paramw)
  {
  }

  public final void run()
  {
    if (w.a.ncDataLoad() == 1)
      this.a.a();
    w.a(this.a).postDelayed(this, 2000L);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.x
 * JD-Core Version:    0.6.0
 */