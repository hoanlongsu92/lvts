package android.support.v4.view;

import android.database.DataSetObserver;

class ViewPager$PagerObserver extends DataSetObserver
{
  private ViewPager$PagerObserver(ViewPager paramViewPager)
  {
  }

  public void onChanged()
  {
    this.this$0.dataSetChanged();
  }

  public void onInvalidated()
  {
    this.this$0.dataSetChanged();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager.PagerObserver
 * JD-Core Version:    0.6.0
 */