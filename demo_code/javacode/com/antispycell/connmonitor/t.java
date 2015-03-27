package com.antispycell.connmonitor;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.view.LayoutInflater;
import android.widget.TextView;
import com.google.analytics.tracking.android.at;
import com.google.analytics.tracking.android.p;

final class t extends FragmentPagerAdapter
  implements v
{
  private final Context b;

  public t(ConnectionMonitorActivity paramConnectionMonitorActivity, Context paramContext, FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
    this.b = paramContext;
  }

  public final TextView a(int paramInt, ConnectionMonitor paramConnectionMonitor)
  {
    TextView localTextView = (TextView)LayoutInflater.from(this.b).inflate(2130903044, paramConnectionMonitor, false);
    localTextView.setText(ConnectionMonitorActivity.a()[paramInt]);
    localTextView.setOnClickListener(new u(this, paramInt));
    return localTextView;
  }

  public final int getCount()
  {
    return ConnectionMonitorActivity.a().length;
  }

  public final Fragment getItem(int paramInt)
  {
    this.a.d = p.a(this.a.getApplicationContext());
    this.a.d.a("&cd", ConnectionMonitorActivity.a()[paramInt]);
    p localp = this.a.d;
    String str;
    Fragment localFragment;
    if (this.a.b.booleanValue())
    {
      str = this.a.c;
      localp.a("&av", str);
      this.a.d.a(at.b().a());
      switch (paramInt)
      {
      default:
        localFragment = w.a(this.b, ConnectionMonitorActivity.a()[paramInt]);
      case 0:
      case 1:
      case 2:
      case 3:
      }
    }
    while (true)
    {
      return localFragment;
      str = "FREE";
      break;
      localFragment = w.a(this.b, ConnectionMonitorActivity.a()[paramInt]);
      continue;
      localFragment = ae.a(this.b, ConnectionMonitorActivity.a()[paramInt]);
      continue;
      localFragment = h.a(this.b, ConnectionMonitorActivity.a()[paramInt]);
      continue;
      localFragment = bj.a(this.b, ConnectionMonitorActivity.a()[paramInt]);
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.t
 * JD-Core Version:    0.6.0
 */