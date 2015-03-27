package com.antispycell.connmonitor;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.ListFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.analytics.tracking.android.p;
import java.util.List;

public final class h extends ListFragment
{
  static JNI a = JNI.a();
  static Context b;
  static List c;
  static TextView e;
  private static n h = null;
  ViewGroup d = null;
  p f;
  private an g;
  private Handler i = new Handler();
  private Runnable j = new i(this);

  static
  {
    c = null;
    e = null;
  }

  public static Fragment a(Context paramContext, String paramString)
  {
    b = paramContext;
    h localh = new h();
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramString);
    localh.setArguments(localBundle);
    return localh;
  }

  private void a(int paramInt)
  {
    e = (TextView)this.d.findViewById(2131230753);
    if (paramInt == 0)
    {
      Typeface localTypeface = Typeface.createFromAsset(getActivity().getAssets(), "fonts/Roboto-Light.ttf");
      e.setTypeface(localTypeface);
      e.setVisibility(0);
    }
    while (true)
    {
      return;
      e.setVisibility(8);
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

  final void a(ViewGroup paramViewGroup, Integer paramInteger)
  {
    Boolean localBoolean1 = Boolean.valueOf(true);
    SharedPreferences localSharedPreferences = b.getSharedPreferences("ui", 0);
    Integer localInteger = Integer.valueOf(localSharedPreferences.getInt("apporder", 0));
    Boolean localBoolean2 = Boolean.valueOf(localSharedPreferences.getBoolean("appdesc", true));
    if (paramInteger.intValue() == 1000)
      paramInteger = localInteger;
    while (true)
    {
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putInt("apporder", paramInteger.intValue());
      localEditor.putBoolean("appdesc", localBoolean1.booleanValue());
      localEditor.commit();
      this.g = new an(b);
      this.g.a();
      c = this.g.b(paramInteger, localBoolean1);
      this.g.b();
      a(c.size());
      h.notifyDataSetChanged();
      a(paramViewGroup, paramInteger);
      return;
      if ((localInteger != paramInteger) || (!localBoolean2.booleanValue()))
        continue;
      localBoolean1 = Boolean.valueOf(false);
    }
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (b == null)
      b = getActivity().getApplicationContext();
    SharedPreferences localSharedPreferences = b.getSharedPreferences("ui", 0);
    this.d = ((ViewGroup)paramLayoutInflater.inflate(2130903045, null));
    ((Button)this.d.findViewById(2131230747)).setOnClickListener(new j(this));
    ((Button)this.d.findViewById(2131230749)).setOnClickListener(new k(this));
    ((Button)this.d.findViewById(2131230751)).setOnClickListener(new l(this));
    Integer localInteger = Integer.valueOf(localSharedPreferences.getInt("order", 0));
    Boolean localBoolean = Boolean.valueOf(localSharedPreferences.getBoolean("desc", true));
    this.g = new an(b);
    this.g.a();
    c = this.g.b(localInteger, localBoolean);
    this.g.b();
    a(c.size());
    setListAdapter(new n(this, b));
    h = (n)getListAdapter();
    a(this.d, localInteger);
    try
    {
      RelativeLayout localRelativeLayout = (RelativeLayout)this.d.findViewById(2131230754);
      if (by.a(b))
        localRelativeLayout.setVisibility(8);
      while (true)
      {
        label258: return this.d;
        localRelativeLayout.setOnClickListener(new m(this));
        AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
        localAlphaAnimation.setDuration(2500L);
        localRelativeLayout.startAnimation(localAlphaAnimation);
      }
    }
    catch (Exception localException)
    {
      break label258;
    }
  }

  public final void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent(b, AppDetails.class);
    localIntent.putExtra("packageName", ((ao)c.get(paramInt)).d());
    startActivity(localIntent);
  }

  public final void onPause()
  {
    this.i.removeCallbacks(this.j);
    super.onPause();
  }

  public final void onResume()
  {
    this.i.post(this.j);
    super.onResume();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.h
 * JD-Core Version:    0.6.0
 */