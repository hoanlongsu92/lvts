package com.google.tagmanager;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;

public class PreviewActivity extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    try
    {
      super.onCreate(paramBundle);
      i.c("Preview activity");
      Uri localUri = getIntent().getData();
      if (!r.a(this).a(localUri))
      {
        i.b("Cannot preview the app with the uri: " + localUri);
        return;
      }
      Intent localIntent = getPackageManager().getLaunchIntentForPackage(getPackageName());
      if (localIntent != null)
      {
        i.c("Invoke the launch activity for package name: " + getPackageName());
        startActivity(localIntent);
      }
    }
    catch (Exception localException)
    {
      i.a("Calling preview threw an exception: " + localException.getMessage());
    }
    i.c("No launch activity found for package name: " + getPackageName());
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.PreviewActivity
 * JD-Core Version:    0.6.0
 */