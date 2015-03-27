package com.google.tagmanager;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.google.analytics.tracking.android.CampaignTrackingService;

public final class InstallReferrerService extends IntentService
{
  CampaignTrackingService a;
  Context b;

  public InstallReferrerService()
  {
    super("InstallReferrerService");
  }

  protected final void onHandleIntent(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("referrer");
    if (this.b != null);
    for (Context localContext = this.b; ; localContext = getApplicationContext())
    {
      h.a(localContext, str);
      if (this.a == null)
        this.a = new CampaignTrackingService();
      CampaignTrackingService.a(localContext, paramIntent);
      return;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.InstallReferrerService
 * JD-Core Version:    0.6.0
 */