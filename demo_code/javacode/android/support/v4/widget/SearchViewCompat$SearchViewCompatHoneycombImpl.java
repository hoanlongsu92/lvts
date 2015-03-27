package android.support.v4.widget;

import android.content.Context;
import android.view.View;

class SearchViewCompat$SearchViewCompatHoneycombImpl extends SearchViewCompat.SearchViewCompatStubImpl
{
  public Object newOnQueryTextListener(SearchViewCompat.OnQueryTextListenerCompat paramOnQueryTextListenerCompat)
  {
    return SearchViewCompatHoneycomb.newOnQueryTextListener(new SearchViewCompat.SearchViewCompatHoneycombImpl.1(this, paramOnQueryTextListenerCompat));
  }

  public View newSearchView(Context paramContext)
  {
    return SearchViewCompatHoneycomb.newSearchView(paramContext);
  }

  public void setOnQueryTextListener(Object paramObject1, Object paramObject2)
  {
    SearchViewCompatHoneycomb.setOnQueryTextListener(paramObject1, paramObject2);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.SearchViewCompat.SearchViewCompatHoneycombImpl
 * JD-Core Version:    0.6.0
 */