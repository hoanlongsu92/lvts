package com.antispycell.connmonitor;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Date;
import java.util.List;

final class f extends BaseAdapter
{
  public f(AppDetails paramAppDetails, Context paramContext)
  {
    AppDetails.b = paramContext;
  }

  public final int getCount()
  {
    return AppDetails.c.size();
  }

  public final Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    g localg;
    if (paramView == null)
    {
      paramView = ((LayoutInflater)AppDetails.b.getSystemService("layout_inflater")).inflate(2130903051, paramViewGroup, false);
      localg = new g();
      localg.a = ((TextView)paramView.findViewById(2131230773));
      localg.b = ((TextView)paramView.findViewById(2131230771));
      localg.c = ((TextView)paramView.findViewById(2131230776));
      localg.d = ((TextView)paramView.findViewById(2131230775));
      paramView.setTag(localg);
    }
    while (true)
    {
      String str = null;
      try
      {
        e locale = new e(this.a, localg.c, ((ao)AppDetails.c.get(paramInt)).b());
        Context[] arrayOfContext = new Context[1];
        arrayOfContext[0] = AppDetails.b;
        locale.execute(arrayOfContext);
        if (((ao)AppDetails.c.get(paramInt)).e() != null)
        {
          Date localDate = new Date(1000L * Long.valueOf(((ao)AppDetails.c.get(paramInt)).e()).longValue());
          java.text.DateFormat localDateFormat1 = android.text.format.DateFormat.getDateFormat(AppDetails.b);
          java.text.DateFormat localDateFormat2 = android.text.format.DateFormat.getTimeFormat(AppDetails.b);
          str = localDateFormat1.format(localDate) + " " + localDateFormat2.format(localDate);
        }
        localg.a.setText(((ao)AppDetails.c.get(paramInt)).b());
        localg.b.setText("Port: " + ((ao)AppDetails.c.get(paramInt)).c());
        localg.d.setText(str);
        return paramView;
        localg = (g)paramView.getTag();
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.f
 * JD-Core Version:    0.6.0
 */