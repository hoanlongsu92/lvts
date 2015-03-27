package com.antispycell.connmonitor;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.analytics.tracking.android.at;
import com.google.analytics.tracking.android.p;
import java.util.List;

public class IPDetails extends Activity
{
  static List b = null;
  PackageManager a = null;
  p c;
  private an d;
  private ImageView e = null;

  private String a(String paramString, int paramInt)
  {
    int i = 0;
    Boolean localBoolean = Boolean.valueOf(false);
    Object localObject2;
    if ((paramString != null) && (paramString.startsWith("null")) && (paramInt == 0))
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
          label178: i++;
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
          break label178;
        }
      }
  }

  public void onCreate(Bundle paramBundle)
  {
    boolean bool = false;
    super.onCreate(paramBundle);
    setContentView(2130903043);
    Boolean localBoolean1 = Boolean.valueOf(false);
    System.setProperty("http.keepAlive", "false");
    this.e = ((ImageView)findViewById(2131230744));
    Context localContext = getBaseContext();
    this.a = localContext.getPackageManager();
    String str = getIntent().getStringExtra("IP");
    TextView localTextView1 = (TextView)findViewById(2131230738);
    TextView localTextView2 = (TextView)findViewById(2131230739);
    TextView localTextView3 = (TextView)findViewById(2131230737);
    TextView localTextView4 = (TextView)findViewById(2131230741);
    TextView localTextView5 = (TextView)findViewById(2131230742);
    TextView localTextView6 = (TextView)findViewById(2131230745);
    localTextView1.setText(str);
    try
    {
      av localav = new av(this, localTextView2, str);
      Context[] arrayOfContext3 = new Context[1];
      arrayOfContext3[0] = localContext;
      localav.execute(arrayOfContext3);
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          bb localbb = new bb(this, localTextView4, localTextView3, localTextView5, localTextView6, str);
          Context[] arrayOfContext2 = new Context[1];
          arrayOfContext2[0] = localContext;
          localbb.execute(arrayOfContext2);
          this.d = new an(localContext);
          this.d.a();
          b = this.d.b(str);
          this.d.b();
          localViewGroup = (ViewGroup)findViewById(2131230727);
          localLayoutInflater = (LayoutInflater)localContext.getSystemService("layout_inflater");
          int i = b.size();
          if (i > 0)
          {
            m = 0;
            if (m < i)
              break;
          }
          ((ImageView)findViewById(2131230720)).setOnClickListener(new ap(this));
          ((RelativeLayout)findViewById(2131230736)).setOnClickListener(new aq(this, str));
          if (by.a(this))
            break label774;
          SharedPreferences localSharedPreferences = getSharedPreferences("ui", 0);
          k = localSharedPreferences.getInt("ss", 0);
          if (k < 51)
          {
            k++;
            SharedPreferences.Editor localEditor = localSharedPreferences.edit();
            localEditor.putInt("ss", k);
            localEditor.commit();
          }
          if (((k <= 10) || (k % 3 != 0)) && (k != 50))
            break label764;
          Boolean localBoolean3 = Boolean.valueOf(true);
          j = k;
          localBoolean2 = localBoolean3;
          l = j;
          if (localBoolean2.booleanValue())
          {
            localDialog = new Dialog(this, 16973840);
            View localView = ((LayoutInflater)getApplicationContext().getSystemService("layout_inflater")).inflate(2130903056, (ViewGroup)findViewById(2131230766));
            ((TextView)localView.findViewById(2131230770)).setText("Some features in the FREE version are limited for certain amount of tries. If you like the app and want to use it, please purchase the Unlock key, which unlocks all limitations.");
            localButton = (Button)localView.findViewById(2131230783);
            ((Button)localView.findViewById(2131230782)).setOnClickListener(new ar(this, l, localDialog));
            if (j <= 39)
              break label739;
            localButton.setVisibility(8);
            localDialog.requestWindowFeature(1);
            localDialog.setContentView(localView);
            if (j <= 39)
              break label759;
            localDialog.setCancelable(bool);
            localDialog.show();
            AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
            localAlphaAnimation.setDuration(3000L);
            localView.startAnimation(localAlphaAnimation);
            this.c = p.a(getApplicationContext());
            this.c.a("&cd", "TRIAL SCREEN - IP DETAILS");
            this.c.a(at.b().a());
          }
          return;
          localException1 = localException1;
          localException1.printStackTrace();
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          ViewGroup localViewGroup;
          LayoutInflater localLayoutInflater;
          int m;
          int k;
          long l;
          Dialog localDialog;
          Button localButton;
          localException2.printStackTrace();
          continue;
          try
          {
            aw localaw = new aw(this, localViewGroup, localContext, m, localLayoutInflater);
            Context[] arrayOfContext1 = new Context[1];
            arrayOfContext1[0] = localContext;
            localaw.execute(arrayOfContext1);
            m++;
          }
          catch (Exception localException3)
          {
            while (true)
              localException3.printStackTrace();
          }
          label739: localButton.setOnClickListener(new as(this, l, localDialog));
          continue;
          label759: bool = true;
          continue;
          label764: int j = k;
          Boolean localBoolean2 = localBoolean1;
          continue;
          label774: j = 0;
          localBoolean2 = localBoolean1;
        }
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
 * Qualified Name:     com.antispycell.connmonitor.IPDetails
 * JD-Core Version:    0.6.0
 */