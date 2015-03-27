package com.antispycell.connmonitor;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import java.util.List;

final class y
  implements AdapterView.OnItemLongClickListener
{
  y(w paramw)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    by.a(((ab)w.c.get(paramInt)).b() + ":" + ((ab)w.c.get(paramInt)).d(), this.a.getActivity().getBaseContext());
    return true;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.y
 * JD-Core Version:    0.6.0
 */