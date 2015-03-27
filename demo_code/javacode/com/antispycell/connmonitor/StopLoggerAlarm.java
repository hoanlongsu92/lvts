package com.antispycell.connmonitor;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class StopLoggerAlarm extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext.stopService(new Intent(paramContext, LoggingService.class));
    if (!by.a(paramContext))
    {
      Intent localIntent = new Intent(paramContext, ConnectionMonitorActivity.class);
      localIntent.putExtra("trial", "true");
      PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, 0, localIntent, 268435456);
      NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
      Notification localNotification = new Notification(2130837520, "Network Connections - Live Capture Stopped", System.currentTimeMillis());
      localNotification.flags = (0x10 | localNotification.flags);
      localNotification.setLatestEventInfo(paramContext, "Network Connections", "Live Capture is limited in the Trial version.", localPendingIntent);
      localNotificationManager.notify(442, localNotification);
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.StopLoggerAlarm
 * JD-Core Version:    0.6.0
 */