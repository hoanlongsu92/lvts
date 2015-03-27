package com.antispycell.connmonitor;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.TextView;
import com.google.analytics.tracking.android.at;

public class ConnectionMonitorActivity extends FragmentActivity
{
  static SharedPreferences a;
  private static final String[] e;
  Boolean b;
  String c;
  com.google.analytics.tracking.android.p d;
  private ConnectionMonitor f;
  private ViewPager g;

  static
  {
    String[] arrayOfString = new String[4];
    arrayOfString[0] = "CURRENT CONNECTIONS";
    arrayOfString[1] = "CONNECTIONS LOG";
    arrayOfString[2] = "APP NETWORK LOG";
    arrayOfString[3] = "SETTINGS";
    e = arrayOfString;
  }

  private void a(Context paramContext, View paramView)
  {
    while (true)
    {
      int i;
      try
      {
        if (!(paramView instanceof ViewGroup))
          continue;
        ViewGroup localViewGroup = (ViewGroup)paramView;
        i = 0;
        if (i < localViewGroup.getChildCount())
        {
          View localView = localViewGroup.getChildAt(i);
          if ((localView instanceof Button))
            break label84;
          a(paramContext, localView);
          break label84;
          if ((paramView instanceof TextView))
            ((TextView)paramView).setTypeface(Typeface.createFromAsset(paramContext.getAssets(), "fonts/Roboto-Light.ttf"));
        }
      }
      catch (Exception localException)
      {
      }
      return;
      label84: i++;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903042);
    this.g = ((ViewPager)findViewById(2131230735));
    this.f = ((ConnectionMonitor)findViewById(2131230734));
    t localt = new t(this, getApplicationContext(), getSupportFragmentManager());
    this.g.setAdapter(localt);
    this.f.a(localt);
    this.g.setOnPageChangeListener(this.f);
    if (Build.VERSION.SDK_INT >= 16)
      this.g.setCurrentItem(1);
    this.g.setCurrentItem(0);
    SharedPreferences localSharedPreferences = getSharedPreferences("ui", 0);
    a = localSharedPreferences;
    if (!localSharedPreferences.getBoolean("skipWelcome", false))
    {
      Dialog localDialog1 = new Dialog(this, 16973840);
      View localView1 = ((LayoutInflater)getApplicationContext().getSystemService("layout_inflater")).inflate(2130903057, (ViewGroup)findViewById(2131230766));
      a(this, localView1);
      ((TextView)localView1.findViewById(2131230786)).setOnClickListener(new p(this));
      ((Button)localView1.findViewById(2131230783)).setOnClickListener(new q(this, localDialog1));
      localDialog1.requestWindowFeature(1);
      localDialog1.setContentView(localView1);
      localDialog1.setCancelable(false);
      localDialog1.show();
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
      localAlphaAnimation.setDuration(2000L);
      localView1.startAnimation(localAlphaAnimation);
      this.d = com.google.analytics.tracking.android.p.a(getApplicationContext());
      this.d.a("&cd", "WELCOME SCREEN");
      this.d.a(at.b().a());
    }
    Boolean localBoolean1 = Boolean.valueOf(false);
    String str = getIntent().getStringExtra("trial");
    if ((str != null) && (str.equals("true")))
      localBoolean1 = Boolean.valueOf(true);
    if (localBoolean1.booleanValue())
    {
      Dialog localDialog2 = new Dialog(this, 16973840);
      View localView2 = ((LayoutInflater)getApplicationContext().getSystemService("layout_inflater")).inflate(2130903056, (ViewGroup)findViewById(2131230766));
      ((TextView)localView2.findViewById(2131230770)).setText("The Live Capture in the Trial version is limited to 15 minutes per capture session. Live capture sessions are unlimited in the PRO version.");
      Button localButton = (Button)localView2.findViewById(2131230783);
      ((Button)localView2.findViewById(2131230782)).setOnClickListener(new r(this, localDialog2));
      localButton.setOnClickListener(new s(this, localDialog2));
      localDialog2.requestWindowFeature(1);
      localDialog2.setContentView(localView2);
      localDialog2.setCancelable(true);
      localDialog2.show();
      this.d = com.google.analytics.tracking.android.p.a(getApplicationContext());
      this.d.a("&cd", "Trial Screen - 15 Mins Capture");
      this.d.a(at.b().a());
    }
    Boolean localBoolean2 = Boolean.valueOf(by.a(this));
    this.b = localBoolean2;
    if (localBoolean2.booleanValue())
    {
      this.c = by.b(this);
      if (this.c.equals(""))
        this.c = "[invalid]";
    }
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82)
      this.g.setCurrentItem(3);
    for (boolean bool = true; ; bool = super.onKeyUp(paramInt, paramKeyEvent))
      return bool;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.ConnectionMonitorActivity
 * JD-Core Version:    0.6.0
 */