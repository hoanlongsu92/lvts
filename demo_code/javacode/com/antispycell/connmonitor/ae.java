package com.antispycell.connmonitor;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.ListFragment;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.google.analytics.tracking.android.p;
import java.util.Iterator;
import java.util.List;

public final class ae extends ListFragment
{
  static JNI a = JNI.a();
  static Context b;
  static List c;
  static Boolean d;
  static TextView g;
  static SparseArray i;
  private static al k = null;
  ViewGroup e = null;
  SharedPreferences f;
  p h;
  private an j;
  private Handler l = new Handler();
  private Runnable m = new af(this);

  static
  {
    c = null;
    g = null;
    i = null;
  }

  public static Fragment a(Context paramContext, String paramString)
  {
    b = paramContext;
    ae localae = new ae();
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramString);
    localae.setArguments(localBundle);
    return localae;
  }

  private void a(int paramInt)
  {
    g = (TextView)this.e.findViewById(2131230753);
    if (paramInt == 0)
    {
      Typeface localTypeface = Typeface.createFromAsset(getActivity().getAssets(), "fonts/Roboto-Light.ttf");
      g.setTypeface(localTypeface);
      g.setVisibility(0);
    }
    while (true)
    {
      return;
      g.setVisibility(8);
    }
  }

  private static void a(View paramView, Integer paramInteger)
  {
    Button localButton1 = (Button)paramView.findViewById(2131230747);
    Button localButton2 = (Button)paramView.findViewById(2131230749);
    Button localButton3 = (Button)paramView.findViewById(2131230751);
    localButton1.setTextColor(-292253036);
    localButton2.setTextColor(-292253036);
    localButton3.setTextColor(-292253036);
    switch (paramInteger.intValue())
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      localButton1.setTextColor(-285212673);
      continue;
      localButton2.setTextColor(-285212673);
      continue;
      localButton3.setTextColor(-285212673);
    }
  }

  private boolean a()
  {
    Iterator localIterator = ((ActivityManager)b.getSystemService("activity")).getRunningServices(2147483647).iterator();
    if (!localIterator.hasNext())
    {
      d = Boolean.valueOf(b(0));
      d = Boolean.valueOf(false);
    }
    for (int n = 0; ; n = 1)
    {
      return n;
      ActivityManager.RunningServiceInfo localRunningServiceInfo = (ActivityManager.RunningServiceInfo)localIterator.next();
      if (!LoggingService.class.getName().equals(localRunningServiceInfo.service.getClassName()))
        break;
      d = Boolean.valueOf(b(1));
      d = Boolean.valueOf(true);
    }
  }

  private boolean b(int paramInt)
  {
    boolean bool = false;
    SharedPreferences.Editor localEditor = this.f.edit();
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return bool;
      localEditor.putBoolean("logger", false);
      localEditor.commit();
      d = Boolean.valueOf(false);
      continue;
      localEditor.putBoolean("logger", true);
      localEditor.commit();
      d = Boolean.valueOf(true);
      bool = true;
      continue;
      bool = this.f.getBoolean("logger", false);
    }
  }

  final void a(ViewGroup paramViewGroup, Integer paramInteger)
  {
    Boolean localBoolean1 = Boolean.valueOf(true);
    Integer localInteger = Integer.valueOf(this.f.getInt("order", 0));
    Boolean localBoolean2 = Boolean.valueOf(this.f.getBoolean("desc", true));
    Button localButton;
    if (paramInteger.intValue() == 1000)
    {
      paramInteger = localInteger;
      this.j = new an(b);
      this.j.a();
      c = this.j.a(paramInteger, localBoolean1);
      this.j.b();
      a(c.size());
      k.notifyDataSetChanged();
      d = Boolean.valueOf(a());
      localButton = (Button)this.e.findViewById(2131230757);
      if (d.booleanValue())
        break label242;
      localButton.setText("Start Live Capture");
      localButton.setBackgroundDrawable(getResources().getDrawable(2130837511));
    }
    while (true)
    {
      a(paramViewGroup, paramInteger);
      return;
      if ((localInteger == paramInteger) && (localBoolean2.booleanValue()))
        localBoolean1 = Boolean.valueOf(false);
      SharedPreferences.Editor localEditor = this.f.edit();
      localEditor.putInt("order", paramInteger.intValue());
      localEditor.putBoolean("desc", localBoolean1.booleanValue());
      localEditor.commit();
      break;
      label242: localButton.setText("Stop Live Capture");
      localButton.setBackgroundDrawable(getResources().getDrawable(2130837522));
    }
  }

  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    ak localak = new ak(this);
    getListView().setOnItemLongClickListener(localak);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (b == null)
      b = getActivity().getApplicationContext();
    this.f = b.getSharedPreferences("ui", 0);
    this.e = ((ViewGroup)paramLayoutInflater.inflate(2130903046, null));
    a();
    Button localButton = (Button)this.e.findViewById(2131230757);
    if (!d.booleanValue())
    {
      localButton.setText("Start Live Capture");
      localButton.setBackgroundDrawable(getResources().getDrawable(2130837511));
    }
    while (true)
    {
      localButton.setOnClickListener(new ag(this, localButton));
      ((Button)this.e.findViewById(2131230747)).setOnClickListener(new ah(this));
      ((Button)this.e.findViewById(2131230749)).setOnClickListener(new ai(this));
      ((Button)this.e.findViewById(2131230751)).setOnClickListener(new aj(this));
      Integer localInteger = Integer.valueOf(this.f.getInt("order", 0));
      Boolean localBoolean = Boolean.valueOf(this.f.getBoolean("desc", true));
      this.j = new an(b);
      this.j.a();
      c = this.j.a(localInteger, localBoolean);
      this.j.b();
      a(c.size());
      setListAdapter(new al(this, b));
      k = (al)getListAdapter();
      a(this.e, localInteger);
      return this.e;
      localButton.setText("Stop Live Capture");
      localButton.setBackgroundDrawable(getResources().getDrawable(2130837522));
    }
  }

  public final void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent(b, IPDetails.class);
    localIntent.putExtra("IP", ((ao)c.get(paramInt)).b());
    startActivity(localIntent);
  }

  public final void onPause()
  {
    this.l.removeCallbacks(this.m);
    super.onPause();
  }

  public final void onResume()
  {
    a();
    this.l.post(this.m);
    super.onResume();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.ae
 * JD-Core Version:    0.6.0
 */