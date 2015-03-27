package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.View;

public class SearchViewCompat
{
  private static final SearchViewCompat.SearchViewCompatImpl IMPL;

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
      IMPL = new SearchViewCompat.SearchViewCompatHoneycombImpl();
    while (true)
    {
      return;
      IMPL = new SearchViewCompat.SearchViewCompatStubImpl();
    }
  }

  private SearchViewCompat(Context paramContext)
  {
  }

  public static View newSearchView(Context paramContext)
  {
    return IMPL.newSearchView(paramContext);
  }

  public static void setOnQueryTextListener(View paramView, SearchViewCompat.OnQueryTextListenerCompat paramOnQueryTextListenerCompat)
  {
    IMPL.setOnQueryTextListener(paramView, paramOnQueryTextListenerCompat.mListener);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.SearchViewCompat
 * JD-Core Version:    0.6.0
 */