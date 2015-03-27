package com.google.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;

final class p
{
  static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences(paramString1, 0).edit();
    localEditor.putString(paramString2, paramString3);
    if (Build.VERSION.SDK_INT >= 9)
      localEditor.apply();
    while (true)
    {
      return;
      new Thread(new q(localEditor)).start();
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.p
 * JD-Core Version:    0.6.0
 */