package com.antispycell.connmonitor;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class w extends ListFragment
{
  static JNI a = JNI.a();
  static Context b = null;
  static List c;
  static HashMap d;
  static SparseArray e;
  static SparseArray f;
  private static PackageManager m = null;
  private static ac o;
  SharedPreferences g;
  final int h = 2;
  TextView i = null;
  TextView j = null;
  String k = "-";
  Boolean l = Boolean.valueOf(false);
  private Handler n = new Handler();
  private Runnable p = new x(this);

  static
  {
    c = null;
    d = null;
    e = null;
    f = null;
    o = null;
  }

  public static Fragment a(Context paramContext, String paramString)
  {
    b = paramContext;
    w localw = new w();
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramString);
    localw.setArguments(localBundle);
    return localw;
  }

  private void a(ViewGroup paramViewGroup)
  {
    Button localButton = (Button)paramViewGroup.findViewById(2131230758);
    localButton.setTextColor(-292253036);
    if (this.l.booleanValue())
      localButton.setTextColor(-285212673);
    while (true)
    {
      return;
      localButton.setTextColor(-292253036);
    }
  }

  private List c()
  {
    ArrayList localArrayList = new ArrayList();
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= a.GetCounts())
        return localArrayList;
      JNI localJNI = a;
      ab localab = new ab(this);
      localab.a(localJNI.GetLocalIP(i1));
      localab.b(localJNI.GetRemoteIP(i1));
      localab.a(localJNI.GetLocalPort(i1));
      localab.b(localJNI.GetRemotePort(i1));
      localab.c(localJNI.GetUID(i1));
      localab.c(localJNI.GetStatus(i1));
      localab.d(localJNI.GetProtocol(i1));
      localab.d(localJNI.GetSND(i1));
      localab.e(localJNI.GetRX(i1));
      localArrayList.add(localab);
    }
  }

  public final void a()
  {
    if (a.GetCounts() > 0)
    {
      c = c();
      o.notifyDataSetChanged();
      this.j.setVisibility(8);
    }
    while (true)
    {
      this.i.setText(this.k);
      return;
      if (c.size() != 0)
        continue;
      this.j.setVisibility(0);
    }
  }

  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    y localy = new y(this);
    getListView().setOnItemLongClickListener(localy);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903047, null);
    if (b == null)
      b = getActivity().getApplicationContext();
    m = b.getPackageManager();
    this.g = b.getSharedPreferences("ui", 0);
    this.l = Boolean.valueOf(this.g.getBoolean("resolvehostnames", false));
    this.i = ((TextView)localViewGroup.findViewById(2131230762));
    this.j = ((TextView)localViewGroup.findViewById(2131230759));
    Typeface localTypeface = Typeface.createFromAsset(getActivity().getAssets(), "fonts/Roboto-Light.ttf");
    this.j.setTypeface(localTypeface);
    ((Button)localViewGroup.findViewById(2131230758)).setOnClickListener(new z(this, localViewGroup));
    a(localViewGroup);
    c = c();
    setListAdapter(new ac(this, b));
    o = (ac)getListAdapter();
    return localViewGroup;
  }

  public final void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent(b, IPDetails.class);
    localIntent.putExtra("IP", ((ab)c.get(paramInt)).b());
    startActivity(localIntent);
  }

  public final void onPause()
  {
    this.n.removeCallbacks(this.p);
    a.ncStop();
    d = null;
    super.onPause();
  }

  public final void onResume()
  {
    if (c.size() > 0)
      this.j.setVisibility(8);
    while (true)
    {
      a.ncDataTime(2);
      a.ncStart();
      a.ncDataLoad();
      if (this.l == null)
        this.l = Boolean.valueOf(this.g.getBoolean("resolvehostnames", false));
      if ((this.l.booleanValue()) && (d == null))
        d = new HashMap();
      this.n.post(this.p);
      super.onResume();
      return;
      this.j.setVisibility(0);
    }
  }

  public final void onStop()
  {
    this.n.removeCallbacks(this.p);
    a.ncStop();
    d = null;
    super.onStop();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.w
 * JD-Core Version:    0.6.0
 */