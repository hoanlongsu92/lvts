package android.support.v4.app;

import android.os.Build.VERSION;

public class NotificationCompat
{
  public static final int FLAG_HIGH_PRIORITY = 128;
  private static final NotificationCompat.NotificationCompatImpl IMPL;
  public static final int PRIORITY_DEFAULT = 0;
  public static final int PRIORITY_HIGH = 1;
  public static final int PRIORITY_LOW = -1;
  public static final int PRIORITY_MAX = 2;
  public static final int PRIORITY_MIN = -2;

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
      IMPL = new NotificationCompat.NotificationCompatImplJellybean();
    while (true)
    {
      return;
      if (Build.VERSION.SDK_INT >= 13)
      {
        IMPL = new NotificationCompat.NotificationCompatImplIceCreamSandwich();
        continue;
      }
      if (Build.VERSION.SDK_INT >= 11)
      {
        IMPL = new NotificationCompat.NotificationCompatImplHoneycomb();
        continue;
      }
      IMPL = new NotificationCompat.NotificationCompatImplBase();
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationCompat
 * JD-Core Version:    0.6.0
 */