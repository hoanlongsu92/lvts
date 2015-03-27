package com.google.analytics.tracking.android;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

final class c
  implements ServiceConnection
{
  c(b paramb)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    aq.c("service connected, binder: " + paramIBinder);
    try
    {
      if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(paramIBinder.getInterfaceDescriptor()))
      {
        aq.c("bound to service");
        b.a(this.a, com.google.android.gms.analytics.internal.c.a(paramIBinder));
        b.a(this.a);
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        b.b(this.a).unbindService(this);
        b.c(this.a);
        b.d(this.a).a(2);
      }
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    aq.c("service disconnected: " + paramComponentName);
    b.c(this.a);
    b.e(this.a).b();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.c
 * JD-Core Version:    0.6.0
 */