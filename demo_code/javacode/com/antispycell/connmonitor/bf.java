package com.antispycell.connmonitor;

import android.os.Handler;

final class bf
  implements Runnable
{
  bf(LoggingService paramLoggingService)
  {
  }

  public final void run()
  {
    this.a.a();
    LoggingService.a(this.a).postDelayed(this, 2000L);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bf
 * JD-Core Version:    0.6.0
 */