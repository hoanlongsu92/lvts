package com.google.analytics.tracking.android;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

final class x
  implements Handler.Callback
{
  x(v paramv)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    if ((1 == paramMessage.what) && (v.e().equals(paramMessage.obj)))
    {
      al.a().a(true);
      this.a.c();
      al.a().a(false);
      if ((v.b(this.a) > 0) && (!v.c(this.a)))
        v.d(this.a).sendMessageDelayed(v.d(this.a).obtainMessage(1, v.e()), 1000 * v.b(this.a));
    }
    return true;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.x
 * JD-Core Version:    0.6.0
 */