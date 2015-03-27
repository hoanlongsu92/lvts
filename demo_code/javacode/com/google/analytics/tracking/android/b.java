package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;

final class b
  implements a
{
  private ServiceConnection a;
  private d b;
  private e c;
  private Context d;
  private com.google.android.gms.analytics.internal.b e;

  public b(Context paramContext, d paramd, e parame)
  {
    this.d = paramContext;
    if (paramd == null)
      throw new IllegalArgumentException("onConnectedListener cannot be null");
    this.b = paramd;
    if (parame == null)
      throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
    this.c = parame;
  }

  private com.google.android.gms.analytics.internal.b d()
  {
    if (this.e != null);
    for (int i = 1; i == 0; i = 0)
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    return this.e;
  }

  public final void a()
  {
    try
    {
      d().a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        aq.a("clear hits failed: " + localRemoteException);
    }
  }

  public final void a(Map paramMap, long paramLong, String paramString, List paramList)
  {
    try
    {
      d().a(paramMap, paramLong, paramString, paramList);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        aq.a("sendHit failed: " + localRemoteException);
    }
  }

  public final void b()
  {
    Intent localIntent = new Intent("com.google.android.gms.analytics.service.START");
    localIntent.putExtra("app_package_name", this.d.getPackageName());
    if (this.a != null)
      aq.a("Calling connect() while still connected, missing disconnect().");
    while (true)
    {
      return;
      this.a = new c(this);
      boolean bool = this.d.bindService(localIntent, this.a, 129);
      aq.c("connect: bindService returned " + bool + " for " + localIntent);
      if (bool)
        continue;
      this.a = null;
      this.c.a(1);
    }
  }

  public final void c()
  {
    this.e = null;
    if (this.a != null);
    try
    {
      this.d.unbindService(this.a);
      label23: this.a = null;
      this.b.b();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label23;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      break label23;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.b
 * JD-Core Version:    0.6.0
 */