package com.antispycell.connmonitor;

import android.content.ClipData;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build.VERSION;
import android.widget.Toast;

public abstract class by
{
  private static Boolean a(Context paramContext, String paramString)
  {
    try
    {
      Signature[] arrayOfSignature = paramContext.getPackageManager().getPackageInfo(paramString, 64).signatures;
      int i = arrayOfSignature.length;
      for (int j = 0; ; j++)
      {
        if (j >= i);
        Boolean localBoolean;
        for (Object localObject = Boolean.valueOf(false); ; localObject = localBoolean)
        {
          return localObject;
          if (arrayOfSignature[j].hashCode() != -147383096)
            break;
          localBoolean = Boolean.valueOf(true);
        }
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localNameNotFoundException.printStackTrace();
    }
  }

  public static String a(Integer paramInteger)
  {
    String str = "";
    Integer localInteger1 = Integer.valueOf(-1 + Integer.valueOf(paramInteger.intValue() << 1).intValue());
    int i = localInteger1.intValue() % 60;
    Integer localInteger2 = Integer.valueOf(localInteger1.intValue() / 60);
    int j = localInteger2.intValue() % 60;
    Integer localInteger3 = Integer.valueOf(localInteger2.intValue() / 60);
    int k = localInteger3.intValue() % 24;
    int m = Integer.valueOf(localInteger3.intValue() / 24).intValue();
    if (m > 0)
      str = m + "d ";
    if (k > 0)
      str = str + k + "h ";
    if (j > 0)
      str = str + j + "m ";
    if (i > 0)
      str = str + i + "s";
    return str;
  }

  static void a(String paramString, Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 11)
      ((android.text.ClipboardManager)paramContext.getSystemService("clipboard")).setText(paramString);
    while (true)
    {
      Toast.makeText(paramContext, "Copied to clipboard: " + paramString, 0).show();
      return;
      try
      {
        ((android.content.ClipboardManager)paramContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(paramString, paramString));
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  public static boolean a(Context paramContext)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = "com.antispycell.connmonitor.unlock";
    arrayOfString[1] = "com.antispycell.connmonitor.unlockxda";
    PackageManager localPackageManager = paramContext.getPackageManager();
    int i = 0;
    int j = 0;
    while (true)
    {
      if (i >= arrayOfString.length)
        label31: return j;
      try
      {
        localPackageManager.getPackageInfo(arrayOfString[i], 1);
        String str1 = localPackageManager.getInstallerPackageName(arrayOfString[i]);
        if ((str1 != null) && ((str1.equals("com.google.android.feedback")) || (str1.equals("com.android.vending"))))
          if (a(paramContext, arrayOfString[i]).booleanValue())
          {
            String str2 = b(paramContext);
            if (str2 == null);
          }
        for (j = 1; ; j = 0)
        {
          if (j != 0)
            break label31;
          i++;
          break;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        while (true)
          j = 0;
      }
    }
  }

  public static String b(Context paramContext)
  {
    Uri localUri = Uri.parse("content://com.antispycell.connmonitor.license");
    ContentResolver localContentResolver = paramContext.getContentResolver();
    String str;
    if (localContentResolver == null)
      str = "";
    while (true)
    {
      return str;
      str = localContentResolver.getType(localUri);
      if (str != null)
        continue;
      str = "";
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.by
 * JD-Core Version:    0.6.0
 */