package com.google.analytics.tracking.android;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class CampaignTrackingService extends IntentService
{
  public CampaignTrackingService()
  {
    super("CampaignIntentService");
  }

  public static void a(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("referrer");
    try
    {
      FileOutputStream localFileOutputStream = paramContext.openFileOutput("gaInstallData", 0);
      localFileOutputStream.write(str.getBytes());
      localFileOutputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        aq.a("Error storing install campaign.");
    }
  }

  public void onHandleIntent(Intent paramIntent)
  {
    a(this, paramIntent);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.CampaignTrackingService
 * JD-Core Version:    0.6.0
 */