package android.support.v4.os;

import android.os.Parcel;

public abstract interface ParcelableCompatCreatorCallbacks
{
  public abstract Object createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader);

  public abstract Object[] newArray(int paramInt);
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.os.ParcelableCompatCreatorCallbacks
 * JD-Core Version:    0.6.0
 */