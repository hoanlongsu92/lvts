package com.google.analytics.tracking.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;

class u extends BroadcastReceiver
{
  static final String a = u.class.getName();
  private final ba b;

  u(ba paramba)
  {
    this.b = paramba;
  }

  public static void b(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.analytics.RADIO_POWERED");
    localIntent.addCategory(paramContext.getPackageName());
    localIntent.putExtra(a, true);
    paramContext.sendBroadcast(localIntent);
  }

  public final void a(Context paramContext)
  {
    IntentFilter localIntentFilter1 = new IntentFilter();
    localIntentFilter1.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    paramContext.registerReceiver(this, localIntentFilter1);
    IntentFilter localIntentFilter2 = new IntentFilter();
    localIntentFilter2.addAction("com.google.analytics.RADIO_POWERED");
    localIntentFilter2.addCategory(paramContext.getPackageName());
    paramContext.registerReceiver(this, localIntentFilter2);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    boolean bool;
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(str))
    {
      Bundle localBundle = paramIntent.getExtras();
      Boolean localBoolean = Boolean.FALSE;
      if (localBundle != null)
        localBoolean = Boolean.valueOf(paramIntent.getExtras().getBoolean("noConnectivity"));
      ba localba = this.b;
      if (!localBoolean.booleanValue())
      {
        bool = true;
        localba.a(bool);
      }
    }
    while (true)
    {
      return;
      bool = false;
      break;
      if ((!"com.google.analytics.RADIO_POWERED".equals(str)) || (paramIntent.hasExtra(a)))
        continue;
      this.b.d();
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.u
 * JD-Core Version:    0.6.0
 */