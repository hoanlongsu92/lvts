package android.support.v4.net;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;

class ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl
  implements ConnectivityManagerCompat.ConnectivityManagerCompatImpl
{
  public boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager)
  {
    int i = 1;
    NetworkInfo localNetworkInfo = paramConnectivityManager.getActiveNetworkInfo();
    if (localNetworkInfo == null);
    while (true)
    {
      return i;
      switch (localNetworkInfo.getType())
      {
      case 0:
      default:
        break;
      case 1:
        i = 0;
      }
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.net.ConnectivityManagerCompat.BaseConnectivityManagerCompatImpl
 * JD-Core Version:    0.6.0
 */