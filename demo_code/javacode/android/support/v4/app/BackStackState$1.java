package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class BackStackState$1
  implements Parcelable.Creator
{
  public final BackStackState createFromParcel(Parcel paramParcel)
  {
    return new BackStackState(paramParcel);
  }

  public final BackStackState[] newArray(int paramInt)
  {
    return new BackStackState[paramInt];
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.BackStackState.1
 * JD-Core Version:    0.6.0
 */