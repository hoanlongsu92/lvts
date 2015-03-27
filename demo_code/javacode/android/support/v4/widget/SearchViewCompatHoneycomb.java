package android.support.v4.widget;

import android.content.Context;
import android.view.View;
import android.widget.SearchView;
import android.widget.SearchView.OnQueryTextListener;

class SearchViewCompatHoneycomb
{
  public static Object newOnQueryTextListener(SearchViewCompatHoneycomb.OnQueryTextListenerCompatBridge paramOnQueryTextListenerCompatBridge)
  {
    return new SearchViewCompatHoneycomb.1(paramOnQueryTextListenerCompatBridge);
  }

  public static View newSearchView(Context paramContext)
  {
    return new SearchView(paramContext);
  }

  public static void setOnQueryTextListener(Object paramObject1, Object paramObject2)
  {
    ((SearchView)paramObject1).setOnQueryTextListener((SearchView.OnQueryTextListener)paramObject2);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.SearchViewCompatHoneycomb
 * JD-Core Version:    0.6.0
 */