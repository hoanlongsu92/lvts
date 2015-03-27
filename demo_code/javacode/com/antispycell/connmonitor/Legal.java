package com.antispycell.connmonitor;

import android.app.Activity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.widget.TextView;
import com.google.analytics.tracking.android.at;
import com.google.analytics.tracking.android.p;

public class Legal extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903049);
    TextView localTextView = (TextView)findViewById(2131230769);
    try
    {
      localTextView.append("ver: " + getPackageManager().getPackageInfo(getPackageName(), 0).versionName);
      Boolean localBoolean = Boolean.valueOf(by.a(this));
      String str = by.b(this);
      if (localBoolean.booleanValue())
      {
        localTextView.append("\n LICENSE");
        if (str.length() > 1)
          localTextView.append(" - " + str);
        p localp = p.a(getApplicationContext());
        localp.a("&cd", "LEGAL TERMS");
        localp.a(at.b().a());
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        continue;
        localTextView.append("\n (FREE TRIAL LICENSE)");
      }
    }
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.Legal
 * JD-Core Version:    0.6.0
 */