package com.google.analytics.tracking.android;

import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;

final class ad extends TimerTask
{
  private ad(y paramy)
  {
  }

  public final void run()
  {
    if ((y.b(this.a) == ac.b) && (y.e(this.a).isEmpty()) && (y.f(this.a) + y.g(this.a) < y.h(this.a).a()))
    {
      aq.c("Disconnecting due to inactivity");
      y.i(this.a);
    }
    while (true)
    {
      return;
      y.j(this.a).schedule(new ad(this.a), y.g(this.a));
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ad
 * JD-Core Version:    0.6.0
 */