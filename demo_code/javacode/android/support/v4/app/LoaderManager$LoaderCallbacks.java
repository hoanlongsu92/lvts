package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.Loader;

public abstract interface LoaderManager$LoaderCallbacks
{
  public abstract Loader onCreateLoader(int paramInt, Bundle paramBundle);

  public abstract void onLoadFinished(Loader paramLoader, Object paramObject);

  public abstract void onLoaderReset(Loader paramLoader);
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.LoaderManager.LoaderCallbacks
 * JD-Core Version:    0.6.0
 */