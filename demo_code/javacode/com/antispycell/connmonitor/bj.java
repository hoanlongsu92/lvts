package com.antispycell.connmonitor;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.analytics.tracking.android.p;
import java.util.Iterator;
import java.util.List;

public final class bj extends Fragment
{
  static Context a;
  ViewGroup b = null;
  SharedPreferences c;
  p d;

  public static Fragment a(Context paramContext, String paramString)
  {
    a = paramContext;
    bj localbj = new bj();
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramString);
    localbj.setArguments(localBundle);
    return localbj;
  }

  private static boolean a()
  {
    Iterator localIterator = ((ActivityManager)a.getSystemService("activity")).getRunningServices(2147483647).iterator();
    if (!localIterator.hasNext());
    for (int i = 0; ; i = 1)
    {
      return i;
      ActivityManager.RunningServiceInfo localRunningServiceInfo = (ActivityManager.RunningServiceInfo)localIterator.next();
      if (!LoggingService.class.getName().equals(localRunningServiceInfo.service.getClassName()))
        break;
    }
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
    if (a == null)
      a = getActivity().getApplicationContext();
    this.c = a.getSharedPreferences("ui", 0);
    this.b = ((ViewGroup)paramLayoutInflater.inflate(2130903048, null));
    LinearLayout localLinearLayout = (LinearLayout)this.b.findViewById(2131230765);
    String[] arrayOfString1 = new String[5];
    arrayOfString1[0] = "Auto-stop live capture after 24 hours";
    arrayOfString1[1] = "Disable notification in status bar";
    arrayOfString1[2] = "Loopback connections";
    arrayOfString1[3] = "Android System";
    arrayOfString1[4] = "Established Connections";
    String[] arrayOfString2 = new String[5];
    arrayOfString2[0] = "Keeping the live-capture on for long period of time may drain your battery.";
    arrayOfString2[1] = "Don’t show notification in status bar when the live-capture is running.";
    arrayOfString2[2] = "Don’t log loopback connections and connections to localhost.";
    arrayOfString2[3] = "Don’t log connections from Android core.\nNote: Disable if you want to capture fast connections with no UID (app) assigned.";
    arrayOfString2[4] = "Log only established connections. Note: This will skip all other connection states and log only established.";
    View localView1 = paramLayoutInflater.inflate(2130903053, this.b, false);
    ((TextView)localView1.findViewById(16842752)).setText("LIVE CAPTURE OPTIONS");
    localLinearLayout.addView(localView1);
    int i = 0;
    int j = 0;
    String[] arrayOfString3;
    String[] arrayOfString4;
    int i1;
    CheckBox localCheckBox1;
    boolean bool1;
    if (j >= arrayOfString1.length)
    {
      arrayOfString3 = new String[2];
      arrayOfString3[0] = "Hidden Apps";
      arrayOfString3[1] = "System Apps";
      arrayOfString4 = new String[2];
      arrayOfString4[0] = "Show notification when hidden apps (with no launcher) are making connections";
      arrayOfString4[1] = "Skip hidden apps notifications for system packages";
      View localView4 = paramLayoutInflater.inflate(2130903053, this.b, false);
      ((TextView)localView4.findViewById(16842752)).setText("ALERTS");
      localLinearLayout.addView(localView4);
      i1 = i;
      if (i1 >= i + arrayOfString3.length)
      {
        View localView7 = paramLayoutInflater.inflate(2130903053, this.b, false);
        ((TextView)localView7.findViewById(16842752)).setText("DATABASE");
        localLinearLayout.addView(localView7);
        View localView8 = paramLayoutInflater.inflate(2130903055, localLinearLayout, false);
        View localView9 = paramLayoutInflater.inflate(2130903054, localLinearLayout, false);
        TextView localTextView5 = (TextView)localView9.findViewById(2131230780);
        TextView localTextView6 = (TextView)localView9.findViewById(2131230781);
        ((CheckBox)localView9.findViewById(2131230779)).setVisibility(8);
        localTextView5.setText("Clear Database");
        localTextView6.setText("Click to clear all captured connections.");
        localView9.setOnClickListener(new bq(this));
        localLinearLayout.addView(localView9);
        localLinearLayout.addView(localView8);
        View localView10 = paramLayoutInflater.inflate(2130903054, localLinearLayout, false);
        View localView11 = paramLayoutInflater.inflate(2130903055, localLinearLayout, false);
        TextView localTextView7 = (TextView)localView10.findViewById(2131230780);
        TextView localTextView8 = (TextView)localView10.findViewById(2131230781);
        ((CheckBox)localView10.findViewById(2131230779)).setVisibility(8);
        localTextView7.setText("Export Database And Send");
        localTextView8.setText("Click to export DB to CSV file and send it.");
        localView10.setOnClickListener(new bt(this));
        localLinearLayout.addView(localView10);
        localLinearLayout.addView(localView11);
        View localView12 = paramLayoutInflater.inflate(2130903053, this.b, false);
        ((TextView)localView12.findViewById(16842752)).setText("OTHER");
        localLinearLayout.addView(localView12);
        if (!by.a(a))
        {
          View localView17 = paramLayoutInflater.inflate(2130903054, localLinearLayout, false);
          View localView18 = paramLayoutInflater.inflate(2130903055, localLinearLayout, false);
          TextView localTextView13 = (TextView)localView17.findViewById(2131230780);
          TextView localTextView14 = (TextView)localView17.findViewById(2131230781);
          ((CheckBox)localView17.findViewById(2131230779)).setVisibility(8);
          localTextView13.setText("Download Unlock Key");
          localTextView14.setText("The Unlock License Key removes all app limitations");
          localView17.setOnClickListener(new bu(this));
          localLinearLayout.addView(localView17);
          localLinearLayout.addView(localView18);
        }
        View localView13 = paramLayoutInflater.inflate(2130903054, localLinearLayout, false);
        View localView14 = paramLayoutInflater.inflate(2130903055, localLinearLayout, false);
        TextView localTextView9 = (TextView)localView13.findViewById(2131230780);
        TextView localTextView10 = (TextView)localView13.findViewById(2131230781);
        ((CheckBox)localView13.findViewById(2131230779)).setVisibility(8);
        localTextView9.setText("Legal Terms");
        localTextView10.setText("Terms and Conditions of use");
        localView13.setOnClickListener(new bv(this));
        localLinearLayout.addView(localView13);
        localLinearLayout.addView(localView14);
        View localView15 = paramLayoutInflater.inflate(2130903054, localLinearLayout, false);
        View localView16 = paramLayoutInflater.inflate(2130903055, localLinearLayout, false);
        TextView localTextView11 = (TextView)localView15.findViewById(2131230780);
        TextView localTextView12 = (TextView)localView15.findViewById(2131230781);
        ((CheckBox)localView15.findViewById(2131230779)).setVisibility(8);
        localTextView11.setText("Exit");
        localTextView12.setText("Exit the app. If you want to stop Live capture, use the 'Stop Live Capture' button.");
        localView15.setOnClickListener(new bw(this));
        localLinearLayout.addView(localView15);
        localLinearLayout.addView(localView16);
        return this.b;
      }
    }
    else
    {
      if ((j == 1) && (Build.VERSION.SDK_INT >= 18))
        break label1496;
      View localView2 = paramLayoutInflater.inflate(2130903055, localLinearLayout, false);
      View localView3 = paramLayoutInflater.inflate(2130903054, localLinearLayout, false);
      TextView localTextView1 = (TextView)localView3.findViewById(2131230780);
      TextView localTextView2 = (TextView)localView3.findViewById(2131230781);
      localCheckBox1 = (CheckBox)localView3.findViewById(2131230779);
      localCheckBox1.setOnCheckedChangeListener(null);
      SharedPreferences localSharedPreferences1 = this.c;
      String str1 = "value" + j;
      if ((j == 0) || (j == 2) || (j == 3) || (j == 5) || (j == 6))
      {
        bool1 = true;
        label1010: if (!localSharedPreferences1.getBoolean(str1, bool1))
          break label1272;
        localCheckBox1.setChecked(true);
        label1030: localCheckBox1.setOnCheckedChangeListener(new bk(this, j));
        if (a())
          localCheckBox1.setOnClickListener(new bl(this));
        localCheckBox1.setId(j + 100);
        localTextView1.setText(arrayOfString1[j]);
        localTextView2.setText(arrayOfString2[j]);
        if (j == 0)
        {
          Long localLong1 = Long.valueOf(this.c.getLong("nextAlarm", 0L));
          Long localLong2 = Long.valueOf(System.currentTimeMillis());
          if ((localLong1.longValue() > 0L) && (localLong2.longValue() > 0L))
          {
            StringBuilder localStringBuilder = new StringBuilder("The live capture will be stopped in ");
            int m = (int)((localLong1.longValue() - localLong2.longValue()) / 1000L) / 60;
            int n = m % 60;
            localTextView2.setText(new StringBuilder(String.valueOf(m / 60 % 24)).append("h ").append(n).append("m").toString());
          }
        }
        localLinearLayout.addView(localView3);
        localLinearLayout.addView(localView2);
      }
    }
    label1496: for (int k = j + 1; ; k = i)
    {
      j++;
      i = k;
      break;
      bool1 = false;
      break label1010;
      label1272: localCheckBox1.setChecked(false);
      break label1030;
      View localView5 = paramLayoutInflater.inflate(2130903055, localLinearLayout, false);
      View localView6 = paramLayoutInflater.inflate(2130903054, localLinearLayout, false);
      TextView localTextView3 = (TextView)localView6.findViewById(2131230780);
      TextView localTextView4 = (TextView)localView6.findViewById(2131230781);
      CheckBox localCheckBox2 = (CheckBox)localView6.findViewById(2131230779);
      localCheckBox2.setOnCheckedChangeListener(new bn(this, i1));
      if (a())
        localCheckBox2.setOnClickListener(new bo(this));
      SharedPreferences localSharedPreferences2 = this.c;
      String str2 = "value" + i1;
      if ((i1 == 0) || (i1 == 2) || (i1 == 3));
      for (boolean bool2 = true; ; bool2 = false)
      {
        localCheckBox2.setChecked(localSharedPreferences2.getBoolean(str2, bool2));
        localCheckBox2.setId(i1 + 100);
        localTextView3.setText(arrayOfString3[(i1 - i)]);
        localTextView4.setText(arrayOfString4[(i1 - i)]);
        localLinearLayout.addView(localView6);
        localLinearLayout.addView(localView5);
        i1++;
        break;
      }
    }
  }

  public final void onPause()
  {
    super.onPause();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.bj
 * JD-Core Version:    0.6.0
 */