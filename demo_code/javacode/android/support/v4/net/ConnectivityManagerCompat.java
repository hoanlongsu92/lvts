package android.support.v4.net;

import android.net.ConnectivityManager;
import android.os.Build.VERSION;

public class ConnectivityManagerCompat
{
  private static final ConnectivityManagerCompat.ConnectivityManagerCompatImpl IMPL;

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
      IMPL = new ConnectivityManagerCompat.JellyBeanConnectivityManagerCompatImpl();
    while (true)
    {
      return;
      if (Build.VERSION.SDK_INT >= 13)
      {
        IMPL = new ConnectivityManagerCompat.HoneycombMR2ConnectivityManagerCompatImpl();
        continue;
      }
      if (Build.VERSION.SDK_INT >= 8)
      {
        IMPL = new ConnectivityManagerCompat.GingerbreadConnectivityManagerCompatImpl();
        continue;
      }
      IMPL = new ConnectivityManagerCompat.BaseConnectivityManagerCompatImpl();
    }
  }

  public boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager)
  {
    return IMPL.isActiveNetworkMetered(paramConnectivityManager);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.net.ConnectivityManagerCompat
 * JD-Core Version:    0.6.0
 */