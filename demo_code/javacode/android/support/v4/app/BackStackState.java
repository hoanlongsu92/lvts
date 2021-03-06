package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

final class BackStackState
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new BackStackState.1();
  final int mBreadCrumbShortTitleRes;
  final CharSequence mBreadCrumbShortTitleText;
  final int mBreadCrumbTitleRes;
  final CharSequence mBreadCrumbTitleText;
  final int mIndex;
  final String mName;
  final int[] mOps;
  final int mTransition;
  final int mTransitionStyle;

  public BackStackState(Parcel paramParcel)
  {
    this.mOps = paramParcel.createIntArray();
    this.mTransition = paramParcel.readInt();
    this.mTransitionStyle = paramParcel.readInt();
    this.mName = paramParcel.readString();
    this.mIndex = paramParcel.readInt();
    this.mBreadCrumbTitleRes = paramParcel.readInt();
    this.mBreadCrumbTitleText = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.mBreadCrumbShortTitleRes = paramParcel.readInt();
    this.mBreadCrumbShortTitleText = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
  }

  public BackStackState(FragmentManagerImpl paramFragmentManagerImpl, BackStackRecord paramBackStackRecord)
  {
    BackStackRecord.Op localOp1 = paramBackStackRecord.mHead;
    int i = 0;
    while (localOp1 != null)
    {
      if (localOp1.removed != null)
        i += localOp1.removed.size();
      localOp1 = localOp1.next;
    }
    this.mOps = new int[i + 7 * paramBackStackRecord.mNumOp];
    if (!paramBackStackRecord.mAddToBackStack)
      throw new IllegalStateException("Not on back stack");
    BackStackRecord.Op localOp2 = paramBackStackRecord.mHead;
    int j = 0;
    if (localOp2 != null)
    {
      int[] arrayOfInt1 = this.mOps;
      int k = j + 1;
      arrayOfInt1[j] = localOp2.cmd;
      int[] arrayOfInt2 = this.mOps;
      int m = k + 1;
      int n;
      if (localOp2.fragment != null)
        n = localOp2.fragment.mIndex;
      int i4;
      while (true)
      {
        arrayOfInt2[k] = n;
        int[] arrayOfInt3 = this.mOps;
        int i1 = m + 1;
        arrayOfInt3[m] = localOp2.enterAnim;
        int[] arrayOfInt4 = this.mOps;
        int i2 = i1 + 1;
        arrayOfInt4[i1] = localOp2.exitAnim;
        int[] arrayOfInt5 = this.mOps;
        int i3 = i2 + 1;
        arrayOfInt5[i2] = localOp2.popEnterAnim;
        int[] arrayOfInt6 = this.mOps;
        i4 = i3 + 1;
        arrayOfInt6[i3] = localOp2.popExitAnim;
        if (localOp2.removed == null)
          break;
        int i5 = localOp2.removed.size();
        int[] arrayOfInt8 = this.mOps;
        int i6 = i4 + 1;
        arrayOfInt8[i4] = i5;
        int i7 = 0;
        while (true)
          if (i7 < i5)
          {
            int[] arrayOfInt9 = this.mOps;
            int i8 = i6 + 1;
            arrayOfInt9[i6] = ((Fragment)localOp2.removed.get(i7)).mIndex;
            i7++;
            i6 = i8;
            continue;
            n = -1;
            break;
          }
        j = i6;
      }
      while (true)
      {
        localOp2 = localOp2.next;
        break;
        int[] arrayOfInt7 = this.mOps;
        j = i4 + 1;
        arrayOfInt7[i4] = 0;
      }
    }
    this.mTransition = paramBackStackRecord.mTransition;
    this.mTransitionStyle = paramBackStackRecord.mTransitionStyle;
    this.mName = paramBackStackRecord.mName;
    this.mIndex = paramBackStackRecord.mIndex;
    this.mBreadCrumbTitleRes = paramBackStackRecord.mBreadCrumbTitleRes;
    this.mBreadCrumbTitleText = paramBackStackRecord.mBreadCrumbTitleText;
    this.mBreadCrumbShortTitleRes = paramBackStackRecord.mBreadCrumbShortTitleRes;
    this.mBreadCrumbShortTitleText = paramBackStackRecord.mBreadCrumbShortTitleText;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final BackStackRecord instantiate(FragmentManagerImpl paramFragmentManagerImpl)
  {
    BackStackRecord localBackStackRecord = new BackStackRecord(paramFragmentManagerImpl);
    int i = 0;
    while (i < this.mOps.length)
    {
      BackStackRecord.Op localOp = new BackStackRecord.Op();
      int[] arrayOfInt1 = this.mOps;
      int j = i + 1;
      localOp.cmd = arrayOfInt1[i];
      if (FragmentManagerImpl.DEBUG)
        Log.v("FragmentManager", "BSE " + localBackStackRecord + " set base fragment #" + this.mOps[j]);
      int[] arrayOfInt2 = this.mOps;
      int k = j + 1;
      int m = arrayOfInt2[j];
      if (m >= 0);
      for (localOp.fragment = ((Fragment)paramFragmentManagerImpl.mActive.get(m)); ; localOp.fragment = null)
      {
        int[] arrayOfInt3 = this.mOps;
        int n = k + 1;
        localOp.enterAnim = arrayOfInt3[k];
        int[] arrayOfInt4 = this.mOps;
        int i1 = n + 1;
        localOp.exitAnim = arrayOfInt4[n];
        int[] arrayOfInt5 = this.mOps;
        int i2 = i1 + 1;
        localOp.popEnterAnim = arrayOfInt5[i1];
        int[] arrayOfInt6 = this.mOps;
        int i3 = i2 + 1;
        localOp.popExitAnim = arrayOfInt6[i2];
        int[] arrayOfInt7 = this.mOps;
        i = i3 + 1;
        int i4 = arrayOfInt7[i3];
        if (i4 <= 0)
          break;
        localOp.removed = new ArrayList(i4);
        int i5 = 0;
        while (i5 < i4)
        {
          if (FragmentManagerImpl.DEBUG)
            Log.v("FragmentManager", "BSE " + localBackStackRecord + " set remove fragment #" + this.mOps[i]);
          ArrayList localArrayList = paramFragmentManagerImpl.mActive;
          int[] arrayOfInt8 = this.mOps;
          int i6 = i + 1;
          Fragment localFragment = (Fragment)localArrayList.get(arrayOfInt8[i]);
          localOp.removed.add(localFragment);
          i5++;
          i = i6;
        }
      }
      localBackStackRecord.addOp(localOp);
    }
    localBackStackRecord.mTransition = this.mTransition;
    localBackStackRecord.mTransitionStyle = this.mTransitionStyle;
    localBackStackRecord.mName = this.mName;
    localBackStackRecord.mIndex = this.mIndex;
    localBackStackRecord.mAddToBackStack = true;
    localBackStackRecord.mBreadCrumbTitleRes = this.mBreadCrumbTitleRes;
    localBackStackRecord.mBreadCrumbTitleText = this.mBreadCrumbTitleText;
    localBackStackRecord.mBreadCrumbShortTitleRes = this.mBreadCrumbShortTitleRes;
    localBackStackRecord.mBreadCrumbShortTitleText = this.mBreadCrumbShortTitleText;
    localBackStackRecord.bumpBackStackNesting(1);
    return localBackStackRecord;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(this.mOps);
    paramParcel.writeInt(this.mTransition);
    paramParcel.writeInt(this.mTransitionStyle);
    paramParcel.writeString(this.mName);
    paramParcel.writeInt(this.mIndex);
    paramParcel.writeInt(this.mBreadCrumbTitleRes);
    TextUtils.writeToParcel(this.mBreadCrumbTitleText, paramParcel, 0);
    paramParcel.writeInt(this.mBreadCrumbShortTitleRes);
    TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, paramParcel, 0);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.BackStackState
 * JD-Core Version:    0.6.0
 */