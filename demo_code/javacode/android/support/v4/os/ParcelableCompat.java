package android.support.v4.os;

import android.os.Build.VERSION;
import android.os.Parcelable.Creator;

public class ParcelableCompat
{
  public static Parcelable.Creator newCreator(ParcelableCompatCreatorCallbacks paramParcelableCompatCreatorCallbacks)
  {
    if (Build.VERSION.SDK_INT >= 13)
      ParcelableCompatCreatorHoneycombMR2Stub.instantiate(paramParcelableCompatCreatorCallbacks);
    return new ParcelableCompat.CompatCreator(paramParcelableCompatCreatorCallbacks);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.os.ParcelableCompat
 * JD-Core Version:    0.6.0
 */