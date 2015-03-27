package com.antispycell.connmonitor;

import android.app.Dialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.PermissionInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.analytics.tracking.android.at;
import com.google.analytics.tracking.android.p;
import java.util.List;

public class AppDetails extends ListActivity
{
  static Context b;
  static List c = null;
  PackageManager a = null;
  p d;
  private an e;

  private static CharSequence a(String paramString, PackageManager paramPackageManager)
  {
    try
    {
      String str = (String)paramPackageManager.getPermissionInfo(paramString, 0).loadLabel(paramPackageManager);
      if (str != null)
        paramString = str;
      return paramString;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localNameNotFoundException.printStackTrace();
    }
  }

  private String a(String paramString, int paramInt)
  {
    int i = 0;
    Boolean localBoolean = Boolean.valueOf(false);
    Object localObject2;
    if ((paramString.startsWith("null")) && (paramInt == 0))
    {
      localObject2 = "Android System";
      return localObject2;
    }
    Object localObject1 = null;
    if ((paramString != null) && (paramString.indexOf(":") > 0));
    for (String str = paramString.substring(0, paramString.indexOf(":")); ; str = paramString)
      while (true)
      {
        String[] arrayOfString;
        try
        {
          PackageInfo localPackageInfo = this.a.getPackageInfo(str, 1);
          localObject1 = localPackageInfo;
          if ((localObject1 != null) || (paramInt <= 0))
            continue;
          arrayOfString = this.a.getPackagesForUid(paramInt);
          if ((arrayOfString != null) && (arrayOfString.length > 1) && (i < arrayOfString.length))
            continue;
          if (localObject1 != null)
            localObject2 = ((PackageInfo)localObject1).applicationInfo.loadLabel(this.a).toString();
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException1)
        {
          localBoolean = Boolean.valueOf(true);
          continue;
          if (arrayOfString[i] == null);
        }
        try
        {
          localObject1 = this.a.getPackageInfo(arrayOfString[i], 0);
          i = arrayOfString.length;
          label174: i++;
          continue;
          if (paramInt == 0)
          {
            localObject2 = "Android System";
            break;
          }
          if (localBoolean.booleanValue())
          {
            if (str.length() > 0)
            {
              localObject2 = str + " [noinfo]";
              break;
            }
            localObject2 = "[removed]";
            break;
          }
          localObject2 = str;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException2)
        {
          break label174;
        }
      }
  }

  private static CharSequence b(String paramString, PackageManager paramPackageManager)
  {
    try
    {
      CharSequence localCharSequence2 = paramPackageManager.getPermissionInfo(paramString, 0).loadDescription(paramPackageManager);
      localCharSequence1 = localCharSequence2;
      return localCharSequence1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        CharSequence localCharSequence1 = null;
      }
    }
  }

  private String b(String paramString)
  {
    Object localObject = null;
    try
    {
      String str = this.a.getPackageInfo(paramString, 0).versionName;
      localObject = str;
      label32: return localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      break label32;
    }
  }

  public final void a(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
    localIntent.addCategory("android.intent.category.DEFAULT");
    localIntent.setData(Uri.parse("package:" + paramString));
    localIntent.addFlags(268435456);
    try
    {
      startActivity(localIntent);
      label58: return;
    }
    catch (Exception localException)
    {
      break label58;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = this;
    Boolean localBoolean1 = Boolean.valueOf(false);
    this.a = b.getPackageManager();
    setContentView(2130903040);
    Context localContext = getBaseContext();
    String str1 = getIntent().getStringExtra("packageName");
    TextView localTextView1 = (TextView)findViewById(2131230726);
    TextView localTextView2 = (TextView)findViewById(2131230724);
    TextView localTextView3 = (TextView)findViewById(2131230725);
    ImageView localImageView = (ImageView)findViewById(2131230723);
    Integer localInteger = Integer.valueOf(0);
    Object localObject1;
    String str2;
    Object localObject2;
    if (str1.indexOf(":") > 0)
    {
      localInteger = Integer.valueOf(Integer.parseInt(str1.substring(1 + str1.lastIndexOf(":"))));
      localObject1 = str1.substring(0, str1.indexOf(":"));
      str2 = a((String)localObject1, localInteger.intValue());
      if ((localObject1 == null) || (((String)localObject1).equals("null")))
        localObject1 = str2;
      ((RelativeLayout)findViewById(2131230722)).setOnClickListener(new a(this, (String)localObject1));
      localObject2 = null;
    }
    while (true)
    {
      int k;
      try
      {
        Drawable localDrawable = this.a.getApplicationIcon((String)localObject1);
        localObject2 = localDrawable;
        if (localObject2 == null)
          continue;
        localImageView.setImageDrawable(localObject2);
        String str3 = b((String)localObject1);
        localTextView1.setText((CharSequence)localObject1);
        localTextView3.setText(str2);
        if (str3 == null)
          continue;
        localTextView2.setText("ver: " + str3);
        this.e = new an(localContext);
        this.e.a();
        c = this.e.a(str1);
        this.e.b();
        setListAdapter(new f(this, localContext));
        getListAdapter();
        TextView localTextView4 = (TextView)findViewById(2131230730);
        try
        {
          arrayOfString = this.a.getPackageInfo((String)localObject1, 4096).requestedPermissions;
          k = 0;
          str4 = "";
        }
        catch (Exception localException2)
        {
          try
          {
            String[] arrayOfString;
            int m = arrayOfString.length;
            if (k < m)
              continue;
            localTextView4.setText(Html.fromHtml(str4));
            ((ImageView)findViewById(2131230720)).setOnClickListener(new b(this));
            if (by.a(this))
              continue;
            SharedPreferences localSharedPreferences = getSharedPreferences("ui", 0);
            j = localSharedPreferences.getInt("ss", 0);
            if (j >= 51)
              continue;
            j++;
            SharedPreferences.Editor localEditor = localSharedPreferences.edit();
            localEditor.putInt("ss", j);
            localEditor.commit();
            if (((j <= 10) || (j % 3 != 0)) && (j != 50))
              continue;
            Boolean localBoolean3 = Boolean.valueOf(true);
            i = j;
            localBoolean2 = localBoolean3;
            long l = i;
            if (!localBoolean2.booleanValue())
              continue;
            Dialog localDialog = new Dialog(this, 16973840);
            View localView = ((LayoutInflater)getApplicationContext().getSystemService("layout_inflater")).inflate(2130903056, (ViewGroup)findViewById(2131230766));
            ((TextView)localView.findViewById(2131230770)).setText("Some features in the FREE version are limited for certain amount of tries. If you like the app and want to use it, please purchase the Unlock key, which unlocks all limitations.");
            Button localButton = (Button)localView.findViewById(2131230783);
            ((Button)localView.findViewById(2131230782)).setOnClickListener(new c(this, l, localDialog));
            if (i <= 39)
              continue;
            localButton.setVisibility(8);
            localDialog.requestWindowFeature(1);
            localDialog.setContentView(localView);
            if (i <= 39)
              continue;
            boolean bool = false;
            localDialog.setCancelable(bool);
            localDialog.show();
            AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
            localAlphaAnimation.setDuration(3000L);
            localView.startAnimation(localAlphaAnimation);
            this.d = p.a(getApplicationContext());
            this.d.a("&cd", "TRIAL SCREEN - APP DETAILS");
            this.d.a(at.b().a());
            this.d = p.a(getApplicationContext());
            this.d.a("&cd", "APP DETAILS");
            this.d.a(at.b().a());
            return;
            localImageView.setImageResource(2130837513);
            continue;
            if (arrayOfString[k] == null)
              break label1044;
            StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf(str4)).append("<font color='#00ff00'>✔</font> <b>").append(a(arrayOfString[k], this.a)).append("</b><font color='#dddddd'>");
            if (b(arrayOfString[k], this.a) == null)
              break label1050;
            str5 = "<br>" + b(arrayOfString[k], this.a);
            StringBuilder localStringBuilder2 = localStringBuilder1.append(str5).append("</font>");
            if (k + 1 != arrayOfString.length)
              continue;
            String str6 = "";
            String str4 = str6;
            break label1044;
            str6 = "<br><br>";
            continue;
            localException2 = localException2;
            str4 = "";
            Exception localException3 = localException2;
            localException3.printStackTrace();
            findViewById(2131230728).setVisibility(8);
            findViewById(2131230729).setVisibility(8);
            continue;
            localButton.setOnClickListener(new d(this, l, localDialog));
            continue;
            bool = true;
            continue;
          }
          catch (Exception localException4)
          {
            continue;
          }
        }
      }
      catch (Exception localException1)
      {
        int j;
        continue;
        int i = j;
        Boolean localBoolean2 = localBoolean1;
        continue;
        i = 0;
        localBoolean2 = localBoolean1;
        continue;
      }
      localObject1 = str1;
      break;
      label1044: k++;
      continue;
      label1050: String str5 = "";
    }
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent(b, IPDetails.class).setFlags(131072);
    localIntent.putExtra("IP", ((ao)c.get(paramInt)).b());
    startActivity(localIntent);
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
 * Qualified Name:     com.antispycell.connmonitor.AppDetails
 * JD-Core Version:    0.6.0
 */