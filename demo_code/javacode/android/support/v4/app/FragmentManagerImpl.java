package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

final class FragmentManagerImpl extends FragmentManager
{
  static final Interpolator ACCELERATE_CUBIC;
  static final Interpolator ACCELERATE_QUINT;
  static final int ANIM_DUR = 220;
  public static final int ANIM_STYLE_CLOSE_ENTER = 3;
  public static final int ANIM_STYLE_CLOSE_EXIT = 4;
  public static final int ANIM_STYLE_FADE_ENTER = 5;
  public static final int ANIM_STYLE_FADE_EXIT = 6;
  public static final int ANIM_STYLE_OPEN_ENTER = 1;
  public static final int ANIM_STYLE_OPEN_EXIT = 2;
  static boolean DEBUG = false;
  static final Interpolator DECELERATE_CUBIC;
  static final Interpolator DECELERATE_QUINT;
  static final boolean HONEYCOMB = false;
  static final String TAG = "FragmentManager";
  static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
  static final String TARGET_STATE_TAG = "android:target_state";
  static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
  static final String VIEW_STATE_TAG = "android:view_state";
  ArrayList mActive;
  FragmentActivity mActivity;
  ArrayList mAdded;
  ArrayList mAvailBackStackIndices;
  ArrayList mAvailIndices;
  ArrayList mBackStack;
  ArrayList mBackStackChangeListeners;
  ArrayList mBackStackIndices;
  ArrayList mCreatedMenus;
  int mCurState = 0;
  boolean mDestroyed;
  Runnable mExecCommit = new FragmentManagerImpl.1(this);
  boolean mExecutingActions;
  boolean mHavePendingDeferredStart;
  boolean mNeedMenuInvalidate;
  String mNoTransactionsBecause;
  ArrayList mPendingActions;
  SparseArray mStateArray = null;
  Bundle mStateBundle = null;
  boolean mStateSaved;
  Runnable[] mTmpActions;

  static
  {
    boolean bool = false;
    DEBUG = false;
    if (Build.VERSION.SDK_INT >= 11)
      bool = true;
    HONEYCOMB = bool;
    DECELERATE_QUINT = new DecelerateInterpolator(2.5F);
    DECELERATE_CUBIC = new DecelerateInterpolator(1.5F);
    ACCELERATE_QUINT = new AccelerateInterpolator(2.5F);
    ACCELERATE_CUBIC = new AccelerateInterpolator(1.5F);
  }

  private void checkStateLoss()
  {
    if (this.mStateSaved)
      throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    if (this.mNoTransactionsBecause != null)
      throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
  }

  static Animation makeFadeAnimation(Context paramContext, float paramFloat1, float paramFloat2)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat1, paramFloat2);
    localAlphaAnimation.setInterpolator(DECELERATE_CUBIC);
    localAlphaAnimation.setDuration(220L);
    return localAlphaAnimation;
  }

  static Animation makeOpenCloseAnimation(Context paramContext, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    AnimationSet localAnimationSet = new AnimationSet(false);
    ScaleAnimation localScaleAnimation = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 0.5F, 1, 0.5F);
    localScaleAnimation.setInterpolator(DECELERATE_QUINT);
    localScaleAnimation.setDuration(220L);
    localAnimationSet.addAnimation(localScaleAnimation);
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat3, paramFloat4);
    localAlphaAnimation.setInterpolator(DECELERATE_CUBIC);
    localAlphaAnimation.setDuration(220L);
    localAnimationSet.addAnimation(localAlphaAnimation);
    return localAnimationSet;
  }

  public static int reverseTransit(int paramInt)
  {
    int i = 0;
    switch (paramInt)
    {
    default:
    case 4097:
    case 8194:
    case 4099:
    }
    while (true)
    {
      return i;
      i = 8194;
      continue;
      i = 4097;
      continue;
      i = 4099;
    }
  }

  public static int transitToStyleIndex(int paramInt, boolean paramBoolean)
  {
    int i = -1;
    switch (paramInt)
    {
    default:
    case 4097:
    case 8194:
    case 4099:
    }
    while (true)
    {
      return i;
      if (paramBoolean)
      {
        i = 1;
        continue;
      }
      i = 2;
      continue;
      if (paramBoolean)
      {
        i = 3;
        continue;
      }
      i = 4;
      continue;
      if (paramBoolean)
      {
        i = 5;
        continue;
      }
      i = 6;
    }
  }

  final void addBackStackState(BackStackRecord paramBackStackRecord)
  {
    if (this.mBackStack == null)
      this.mBackStack = new ArrayList();
    this.mBackStack.add(paramBackStackRecord);
    reportBackStackChanged();
  }

  public final void addFragment(Fragment paramFragment, boolean paramBoolean)
  {
    if (this.mAdded == null)
      this.mAdded = new ArrayList();
    if (DEBUG)
      Log.v("FragmentManager", "add: " + paramFragment);
    makeActive(paramFragment);
    if (!paramFragment.mDetached)
    {
      this.mAdded.add(paramFragment);
      paramFragment.mAdded = true;
      paramFragment.mRemoving = false;
      if ((paramFragment.mHasMenu) && (paramFragment.mMenuVisible))
        this.mNeedMenuInvalidate = true;
      if (paramBoolean)
        moveToState(paramFragment);
    }
  }

  public final void addOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener paramOnBackStackChangedListener)
  {
    if (this.mBackStackChangeListeners == null)
      this.mBackStackChangeListeners = new ArrayList();
    this.mBackStackChangeListeners.add(paramOnBackStackChangedListener);
  }

  public final int allocBackStackIndex(BackStackRecord paramBackStackRecord)
  {
    monitorenter;
    int i;
    try
    {
      if ((this.mAvailBackStackIndices == null) || (this.mAvailBackStackIndices.size() <= 0))
      {
        if (this.mBackStackIndices == null)
          this.mBackStackIndices = new ArrayList();
        i = this.mBackStackIndices.size();
        if (DEBUG)
          Log.v("FragmentManager", "Setting back stack index " + i + " to " + paramBackStackRecord);
        this.mBackStackIndices.add(paramBackStackRecord);
        monitorexit;
      }
      else
      {
        i = ((Integer)this.mAvailBackStackIndices.remove(-1 + this.mAvailBackStackIndices.size())).intValue();
        if (DEBUG)
          Log.v("FragmentManager", "Adding back stack index " + i + " with " + paramBackStackRecord);
        this.mBackStackIndices.set(i, paramBackStackRecord);
        monitorexit;
      }
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
    return i;
  }

  public final void attachActivity(FragmentActivity paramFragmentActivity)
  {
    if (this.mActivity != null)
      throw new IllegalStateException();
    this.mActivity = paramFragmentActivity;
  }

  public final void attachFragment(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      Log.v("FragmentManager", "attach: " + paramFragment);
    if (paramFragment.mDetached)
    {
      paramFragment.mDetached = false;
      if (!paramFragment.mAdded)
      {
        if (this.mAdded == null)
          this.mAdded = new ArrayList();
        this.mAdded.add(paramFragment);
        paramFragment.mAdded = true;
        if ((paramFragment.mHasMenu) && (paramFragment.mMenuVisible))
          this.mNeedMenuInvalidate = true;
        moveToState(paramFragment, this.mCurState, paramInt1, paramInt2, false);
      }
    }
  }

  public final FragmentTransaction beginTransaction()
  {
    return new BackStackRecord(this);
  }

  public final void detachFragment(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      Log.v("FragmentManager", "detach: " + paramFragment);
    if (!paramFragment.mDetached)
    {
      paramFragment.mDetached = true;
      if (paramFragment.mAdded)
      {
        if (this.mAdded != null)
          this.mAdded.remove(paramFragment);
        if ((paramFragment.mHasMenu) && (paramFragment.mMenuVisible))
          this.mNeedMenuInvalidate = true;
        paramFragment.mAdded = false;
        moveToState(paramFragment, 1, paramInt1, paramInt2, false);
      }
    }
  }

  public final void dispatchActivityCreated()
  {
    this.mStateSaved = false;
    moveToState(2, false);
  }

  public final void dispatchConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.mAdded != null)
      for (int i = 0; i < this.mAdded.size(); i++)
      {
        Fragment localFragment = (Fragment)this.mAdded.get(i);
        if (localFragment == null)
          continue;
        localFragment.onConfigurationChanged(paramConfiguration);
      }
  }

  public final boolean dispatchContextItemSelected(MenuItem paramMenuItem)
  {
    int i = 0;
    if (this.mAdded != null);
    for (int j = 0; ; j++)
    {
      if (j < this.mAdded.size())
      {
        Fragment localFragment = (Fragment)this.mAdded.get(j);
        if ((localFragment == null) || (localFragment.mHidden) || (!localFragment.mUserVisibleHint) || (!localFragment.onContextItemSelected(paramMenuItem)))
          continue;
        i = 1;
      }
      return i;
    }
  }

  public final void dispatchCreate()
  {
    this.mStateSaved = false;
    moveToState(1, false);
  }

  public final boolean dispatchCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    int i = 0;
    ArrayList localArrayList = null;
    if (this.mAdded != null)
    {
      int k = 0;
      int m;
      for (j = 0; k < this.mAdded.size(); j = m)
      {
        Fragment localFragment2 = (Fragment)this.mAdded.get(k);
        if ((localFragment2 != null) && (!localFragment2.mHidden) && (localFragment2.mHasMenu) && (localFragment2.mMenuVisible))
        {
          j = 1;
          localFragment2.onCreateOptionsMenu(paramMenu, paramMenuInflater);
          if (localArrayList == null)
            localArrayList = new ArrayList();
          localArrayList.add(localFragment2);
        }
        m = j;
        k++;
      }
    }
    int j = 0;
    if (this.mCreatedMenus != null)
      while (i < this.mCreatedMenus.size())
      {
        Fragment localFragment1 = (Fragment)this.mCreatedMenus.get(i);
        if ((localArrayList == null) || (!localArrayList.contains(localFragment1)))
          localFragment1.onDestroyOptionsMenu();
        i++;
      }
    this.mCreatedMenus = localArrayList;
    return j;
  }

  public final void dispatchDestroy()
  {
    this.mDestroyed = true;
    execPendingActions();
    moveToState(0, false);
    this.mActivity = null;
  }

  public final void dispatchLowMemory()
  {
    if (this.mAdded != null)
      for (int i = 0; i < this.mAdded.size(); i++)
      {
        Fragment localFragment = (Fragment)this.mAdded.get(i);
        if (localFragment == null)
          continue;
        localFragment.onLowMemory();
      }
  }

  public final boolean dispatchOptionsItemSelected(MenuItem paramMenuItem)
  {
    int i = 0;
    if (this.mAdded != null);
    for (int j = 0; ; j++)
    {
      if (j < this.mAdded.size())
      {
        Fragment localFragment = (Fragment)this.mAdded.get(j);
        if ((localFragment == null) || (localFragment.mHidden) || (!localFragment.mHasMenu) || (!localFragment.mMenuVisible) || (!localFragment.onOptionsItemSelected(paramMenuItem)))
          continue;
        i = 1;
      }
      return i;
    }
  }

  public final void dispatchOptionsMenuClosed(Menu paramMenu)
  {
    if (this.mAdded != null)
      for (int i = 0; i < this.mAdded.size(); i++)
      {
        Fragment localFragment = (Fragment)this.mAdded.get(i);
        if ((localFragment == null) || (localFragment.mHidden) || (!localFragment.mHasMenu) || (!localFragment.mMenuVisible))
          continue;
        localFragment.onOptionsMenuClosed(paramMenu);
      }
  }

  public final void dispatchPause()
  {
    moveToState(4, false);
  }

  public final boolean dispatchPrepareOptionsMenu(Menu paramMenu)
  {
    if (this.mAdded != null)
    {
      int j = 0;
      i = 0;
      while (j < this.mAdded.size())
      {
        Fragment localFragment = (Fragment)this.mAdded.get(j);
        if ((localFragment != null) && (!localFragment.mHidden) && (localFragment.mHasMenu) && (localFragment.mMenuVisible))
        {
          i = 1;
          localFragment.onPrepareOptionsMenu(paramMenu);
        }
        j++;
      }
    }
    int i = 0;
    return i;
  }

  public final void dispatchReallyStop()
  {
    moveToState(2, false);
  }

  public final void dispatchResume()
  {
    this.mStateSaved = false;
    moveToState(5, false);
  }

  public final void dispatchStart()
  {
    this.mStateSaved = false;
    moveToState(4, false);
  }

  public final void dispatchStop()
  {
    this.mStateSaved = true;
    moveToState(3, false);
  }

  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i = 0;
    String str = paramString + "    ";
    if (this.mActive != null)
    {
      int i6 = this.mActive.size();
      if (i6 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("Active Fragments in ");
        paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
        paramPrintWriter.println(":");
        for (int i7 = 0; i7 < i6; i7++)
        {
          Fragment localFragment3 = (Fragment)this.mActive.get(i7);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i7);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localFragment3);
          if (localFragment3 == null)
            continue;
          localFragment3.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        }
      }
    }
    if (this.mAdded != null)
    {
      int i4 = this.mAdded.size();
      if (i4 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Added Fragments:");
        for (int i5 = 0; i5 < i4; i5++)
        {
          Fragment localFragment2 = (Fragment)this.mAdded.get(i5);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i5);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localFragment2.toString());
        }
      }
    }
    if (this.mCreatedMenus != null)
    {
      int i2 = this.mCreatedMenus.size();
      if (i2 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Fragments Created Menus:");
        for (int i3 = 0; i3 < i2; i3++)
        {
          Fragment localFragment1 = (Fragment)this.mCreatedMenus.get(i3);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i3);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localFragment1.toString());
        }
      }
    }
    if (this.mBackStack != null)
    {
      int n = this.mBackStack.size();
      if (n > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Back Stack:");
        for (int i1 = 0; i1 < n; i1++)
        {
          BackStackRecord localBackStackRecord2 = (BackStackRecord)this.mBackStack.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localBackStackRecord2.toString());
          localBackStackRecord2.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        }
      }
    }
    monitorenter;
    label694: 
    try
    {
      if (this.mBackStackIndices != null)
      {
        int k = this.mBackStackIndices.size();
        if (k > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Back Stack Indices:");
          for (int m = 0; m < k; m++)
          {
            BackStackRecord localBackStackRecord1 = (BackStackRecord)this.mBackStackIndices.get(m);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(m);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(localBackStackRecord1);
          }
        }
      }
      if ((this.mAvailBackStackIndices != null) && (this.mAvailBackStackIndices.size() > 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mAvailBackStackIndices: ");
        paramPrintWriter.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
      }
      monitorexit;
      if (this.mPendingActions != null)
      {
        int j = this.mPendingActions.size();
        if (j > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Pending Actions:");
          if (i >= j)
            break label694;
          Runnable localRunnable = (Runnable)this.mPendingActions.get(i);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localRunnable);
          i++;
        }
      }
    }
    finally
    {
      monitorexit;
    }
    paramPrintWriter.println("FragmentManager misc state:");
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mCurState=");
    paramPrintWriter.print(this.mCurState);
    paramPrintWriter.print(" mStateSaved=");
    paramPrintWriter.print(this.mStateSaved);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(this.mDestroyed);
    if (this.mNeedMenuInvalidate)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNeedMenuInvalidate=");
      paramPrintWriter.println(this.mNeedMenuInvalidate);
    }
    if (this.mNoTransactionsBecause != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNoTransactionsBecause=");
      paramPrintWriter.println(this.mNoTransactionsBecause);
    }
    if ((this.mAvailIndices != null) && (this.mAvailIndices.size() > 0))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mAvailIndices: ");
      paramPrintWriter.println(Arrays.toString(this.mAvailIndices.toArray()));
    }
  }

  public final void enqueueAction(Runnable paramRunnable, boolean paramBoolean)
  {
    if (!paramBoolean)
      checkStateLoss();
    monitorenter;
    try
    {
      if (this.mActivity == null)
        throw new IllegalStateException("Activity has been destroyed");
    }
    finally
    {
      monitorexit;
    }
    if (this.mPendingActions == null)
      this.mPendingActions = new ArrayList();
    this.mPendingActions.add(paramRunnable);
    if (this.mPendingActions.size() == 1)
    {
      this.mActivity.mHandler.removeCallbacks(this.mExecCommit);
      this.mActivity.mHandler.post(this.mExecCommit);
    }
    monitorexit;
  }

  public final boolean execPendingActions()
  {
    if (this.mExecutingActions)
      throw new IllegalStateException("Recursive entry to executePendingTransactions");
    if (Looper.myLooper() != this.mActivity.mHandler.getLooper())
      throw new IllegalStateException("Must be called from main thread of process");
    int i = 0;
    while (true)
    {
      monitorenter;
      boolean bool;
      try
      {
        if ((this.mPendingActions == null) || (this.mPendingActions.size() == 0))
        {
          monitorexit;
          if (!this.mHavePendingDeferredStart)
            break;
          int j = 0;
          bool = false;
          while (j < this.mActive.size())
          {
            Fragment localFragment = (Fragment)this.mActive.get(j);
            if ((localFragment != null) && (localFragment.mLoaderManager != null))
              bool |= localFragment.mLoaderManager.hasRunningLoaders();
            j++;
          }
        }
        int k = this.mPendingActions.size();
        if ((this.mTmpActions == null) || (this.mTmpActions.length < k))
          this.mTmpActions = new Runnable[k];
        this.mPendingActions.toArray(this.mTmpActions);
        this.mPendingActions.clear();
        this.mActivity.mHandler.removeCallbacks(this.mExecCommit);
        monitorexit;
        this.mExecutingActions = true;
        for (int m = 0; m < k; m++)
        {
          this.mTmpActions[m].run();
          this.mTmpActions[m] = null;
        }
      }
      finally
      {
        monitorexit;
      }
      this.mExecutingActions = false;
      i = 1;
      continue;
      if (bool)
        break;
      this.mHavePendingDeferredStart = false;
      startPendingDeferredFragments();
    }
    return i;
  }

  public final boolean executePendingTransactions()
  {
    return execPendingActions();
  }

  public final Fragment findFragmentById(int paramInt)
  {
    int j;
    Fragment localFragment;
    if (this.mAdded != null)
    {
      j = -1 + this.mAdded.size();
      if (j >= 0)
      {
        localFragment = (Fragment)this.mAdded.get(j);
        if ((localFragment == null) || (localFragment.mFragmentId != paramInt));
      }
    }
    while (true)
    {
      return localFragment;
      j--;
      break;
      if (this.mActive != null)
        for (int i = -1 + this.mActive.size(); ; i--)
        {
          if (i < 0)
            break label109;
          localFragment = (Fragment)this.mActive.get(i);
          if ((localFragment != null) && (localFragment.mFragmentId == paramInt))
            break;
        }
      label109: localFragment = null;
    }
  }

  public final Fragment findFragmentByTag(String paramString)
  {
    int j;
    Fragment localFragment;
    if ((this.mAdded != null) && (paramString != null))
    {
      j = -1 + this.mAdded.size();
      if (j >= 0)
      {
        localFragment = (Fragment)this.mAdded.get(j);
        if ((localFragment == null) || (!paramString.equals(localFragment.mTag)));
      }
    }
    while (true)
    {
      return localFragment;
      j--;
      break;
      if ((this.mActive != null) && (paramString != null))
        for (int i = -1 + this.mActive.size(); ; i--)
        {
          if (i < 0)
            break label123;
          localFragment = (Fragment)this.mActive.get(i);
          if ((localFragment != null) && (paramString.equals(localFragment.mTag)))
            break;
        }
      label123: localFragment = null;
    }
  }

  public final Fragment findFragmentByWho(String paramString)
  {
    int i;
    Fragment localFragment;
    if ((this.mActive != null) && (paramString != null))
    {
      i = -1 + this.mActive.size();
      if (i >= 0)
      {
        localFragment = (Fragment)this.mActive.get(i);
        if ((localFragment == null) || (!paramString.equals(localFragment.mWho)));
      }
    }
    while (true)
    {
      return localFragment;
      i--;
      break;
      localFragment = null;
    }
  }

  public final void freeBackStackIndex(int paramInt)
  {
    monitorenter;
    try
    {
      this.mBackStackIndices.set(paramInt, null);
      if (this.mAvailBackStackIndices == null)
        this.mAvailBackStackIndices = new ArrayList();
      if (DEBUG)
        Log.v("FragmentManager", "Freeing back stack index " + paramInt);
      this.mAvailBackStackIndices.add(Integer.valueOf(paramInt));
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final FragmentManager.BackStackEntry getBackStackEntryAt(int paramInt)
  {
    return (FragmentManager.BackStackEntry)this.mBackStack.get(paramInt);
  }

  public final int getBackStackEntryCount()
  {
    if (this.mBackStack != null);
    for (int i = this.mBackStack.size(); ; i = 0)
      return i;
  }

  public final Fragment getFragment(Bundle paramBundle, String paramString)
  {
    int i = paramBundle.getInt(paramString, -1);
    Fragment localFragment;
    if (i == -1)
      localFragment = null;
    do
    {
      return localFragment;
      if (i >= this.mActive.size())
        throw new IllegalStateException("Fragement no longer exists for key " + paramString + ": index " + i);
      localFragment = (Fragment)this.mActive.get(i);
    }
    while (localFragment != null);
    throw new IllegalStateException("Fragement no longer exists for key " + paramString + ": index " + i);
  }

  public final void hideFragment(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      Log.v("FragmentManager", "hide: " + paramFragment);
    if (!paramFragment.mHidden)
    {
      paramFragment.mHidden = true;
      if (paramFragment.mView != null)
      {
        Animation localAnimation = loadAnimation(paramFragment, paramInt1, true, paramInt2);
        if (localAnimation != null)
          paramFragment.mView.startAnimation(localAnimation);
        paramFragment.mView.setVisibility(8);
      }
      if ((paramFragment.mAdded) && (paramFragment.mHasMenu) && (paramFragment.mMenuVisible))
        this.mNeedMenuInvalidate = true;
      paramFragment.onHiddenChanged(true);
    }
  }

  final Animation loadAnimation(Fragment paramFragment, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    Animation localAnimation = paramFragment.onCreateAnimation(paramInt1, paramBoolean, paramFragment.mNextAnim);
    if (localAnimation != null);
    while (true)
    {
      return localAnimation;
      if (paramFragment.mNextAnim != 0)
      {
        localAnimation = AnimationUtils.loadAnimation(this.mActivity, paramFragment.mNextAnim);
        if (localAnimation != null)
          continue;
      }
      if (paramInt1 == 0)
      {
        localAnimation = null;
        continue;
      }
      int i = transitToStyleIndex(paramInt1, paramBoolean);
      if (i < 0)
      {
        localAnimation = null;
        continue;
      }
      switch (i)
      {
      default:
        if ((paramInt2 == 0) && (this.mActivity.getWindow() != null))
          paramInt2 = this.mActivity.getWindow().getAttributes().windowAnimations;
        if (paramInt2 == 0)
          localAnimation = null;
        break;
      case 1:
        localAnimation = makeOpenCloseAnimation(this.mActivity, 1.125F, 1.0F, 0.0F, 1.0F);
        break;
      case 2:
        localAnimation = makeOpenCloseAnimation(this.mActivity, 1.0F, 0.975F, 1.0F, 0.0F);
        break;
      case 3:
        localAnimation = makeOpenCloseAnimation(this.mActivity, 0.975F, 1.0F, 0.0F, 1.0F);
        break;
      case 4:
        localAnimation = makeOpenCloseAnimation(this.mActivity, 1.0F, 1.075F, 1.0F, 0.0F);
        break;
      case 5:
        localAnimation = makeFadeAnimation(this.mActivity, 0.0F, 1.0F);
        break;
      case 6:
        localAnimation = makeFadeAnimation(this.mActivity, 1.0F, 0.0F);
        continue;
        localAnimation = null;
      }
    }
  }

  final void makeActive(Fragment paramFragment)
  {
    if (paramFragment.mIndex >= 0);
    label136: 
    while (true)
    {
      return;
      if ((this.mAvailIndices == null) || (this.mAvailIndices.size() <= 0))
      {
        if (this.mActive == null)
          this.mActive = new ArrayList();
        paramFragment.setIndex(this.mActive.size());
        this.mActive.add(paramFragment);
      }
      while (true)
      {
        if (!DEBUG)
          break label136;
        Log.v("FragmentManager", "Allocated fragment index " + paramFragment);
        break;
        paramFragment.setIndex(((Integer)this.mAvailIndices.remove(-1 + this.mAvailIndices.size())).intValue());
        this.mActive.set(paramFragment.mIndex, paramFragment);
      }
    }
  }

  final void makeInactive(Fragment paramFragment)
  {
    if (paramFragment.mIndex < 0);
    while (true)
    {
      return;
      if (DEBUG)
        Log.v("FragmentManager", "Freeing fragment index " + paramFragment);
      this.mActive.set(paramFragment.mIndex, null);
      if (this.mAvailIndices == null)
        this.mAvailIndices = new ArrayList();
      this.mAvailIndices.add(Integer.valueOf(paramFragment.mIndex));
      this.mActivity.invalidateSupportFragmentIndex(paramFragment.mIndex);
      paramFragment.initState();
    }
  }

  final void moveToState(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if ((this.mActivity == null) && (paramInt1 != 0))
      throw new IllegalStateException("No activity");
    if ((!paramBoolean) && (this.mCurState == paramInt1));
    do
    {
      return;
      this.mCurState = paramInt1;
    }
    while (this.mActive == null);
    int i = 0;
    boolean bool1 = false;
    label54: Fragment localFragment;
    if (i < this.mActive.size())
    {
      localFragment = (Fragment)this.mActive.get(i);
      if (localFragment == null)
        break label172;
      moveToState(localFragment, paramInt1, paramInt2, paramInt3, false);
      if (localFragment.mLoaderManager == null)
        break label172;
    }
    label172: for (boolean bool2 = bool1 | localFragment.mLoaderManager.hasRunningLoaders(); ; bool2 = bool1)
    {
      i++;
      bool1 = bool2;
      break label54;
      if (!bool1)
        startPendingDeferredFragments();
      if ((!this.mNeedMenuInvalidate) || (this.mActivity == null) || (this.mCurState != 5))
        break;
      this.mActivity.supportInvalidateOptionsMenu();
      this.mNeedMenuInvalidate = false;
      break;
    }
  }

  final void moveToState(int paramInt, boolean paramBoolean)
  {
    moveToState(paramInt, 0, 0, paramBoolean);
  }

  final void moveToState(Fragment paramFragment)
  {
    moveToState(paramFragment, this.mCurState, 0, 0, false);
  }

  final void moveToState(Fragment paramFragment, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if ((!paramFragment.mAdded) && (paramInt1 > 1))
      paramInt1 = 1;
    if ((paramFragment.mRemoving) && (paramInt1 > paramFragment.mState))
      paramInt1 = paramFragment.mState;
    if ((paramFragment.mDeferStart) && (paramFragment.mState < 4) && (paramInt1 > 3))
      paramInt1 = 3;
    if (paramFragment.mState < paramInt1)
    {
      if ((paramFragment.mFromLayout) && (!paramFragment.mInLayout))
        return;
      if (paramFragment.mAnimatingAway != null)
      {
        paramFragment.mAnimatingAway = null;
        moveToState(paramFragment, paramFragment.mStateAfterAnimating, 0, 0, true);
      }
      switch (paramFragment.mState)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      }
    }
    while (true)
    {
      paramFragment.mState = paramInt1;
      break;
      if (DEBUG)
        Log.v("FragmentManager", "moveto CREATED: " + paramFragment);
      if (paramFragment.mSavedFragmentState != null)
      {
        paramFragment.mSavedViewState = paramFragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        paramFragment.mTarget = getFragment(paramFragment.mSavedFragmentState, "android:target_state");
        if (paramFragment.mTarget != null)
          paramFragment.mTargetRequestCode = paramFragment.mSavedFragmentState.getInt("android:target_req_state", 0);
        paramFragment.mUserVisibleHint = paramFragment.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        if (!paramFragment.mUserVisibleHint)
        {
          paramFragment.mDeferStart = true;
          if (paramInt1 > 3)
            paramInt1 = 3;
        }
      }
      paramFragment.mActivity = this.mActivity;
      paramFragment.mFragmentManager = this.mActivity.mFragments;
      paramFragment.mCalled = false;
      paramFragment.onAttach(this.mActivity);
      if (!paramFragment.mCalled)
        throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onAttach()");
      this.mActivity.onAttachFragment(paramFragment);
      if (!paramFragment.mRetaining)
      {
        paramFragment.mCalled = false;
        paramFragment.onCreate(paramFragment.mSavedFragmentState);
        if (!paramFragment.mCalled)
          throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onCreate()");
      }
      paramFragment.mRetaining = false;
      if (paramFragment.mFromLayout)
      {
        paramFragment.mView = paramFragment.onCreateView(paramFragment.getLayoutInflater(paramFragment.mSavedFragmentState), null, paramFragment.mSavedFragmentState);
        if (paramFragment.mView == null)
          break label605;
        paramFragment.mInnerView = paramFragment.mView;
        paramFragment.mView = NoSaveStateFrameLayout.wrap(paramFragment.mView);
        if (paramFragment.mHidden)
          paramFragment.mView.setVisibility(8);
        paramFragment.onViewCreated(paramFragment.mView, paramFragment.mSavedFragmentState);
      }
      ViewGroup localViewGroup;
      while (true)
      {
        if (paramInt1 <= 1)
          break label812;
        if (DEBUG)
          Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + paramFragment);
        if (paramFragment.mFromLayout)
          break label737;
        if (paramFragment.mContainerId != 0)
        {
          localViewGroup = (ViewGroup)this.mActivity.findViewById(paramFragment.mContainerId);
          if ((localViewGroup != null) || (paramFragment.mRestored))
            break;
          throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(paramFragment.mContainerId) + " for fragment " + paramFragment);
          label605: paramFragment.mInnerView = null;
          continue;
        }
        else
        {
          localViewGroup = null;
        }
      }
      paramFragment.mContainer = localViewGroup;
      paramFragment.mView = paramFragment.onCreateView(paramFragment.getLayoutInflater(paramFragment.mSavedFragmentState), localViewGroup, paramFragment.mSavedFragmentState);
      if (paramFragment.mView != null)
      {
        paramFragment.mInnerView = paramFragment.mView;
        paramFragment.mView = NoSaveStateFrameLayout.wrap(paramFragment.mView);
        if (localViewGroup != null)
        {
          Animation localAnimation2 = loadAnimation(paramFragment, paramInt2, true, paramInt3);
          if (localAnimation2 != null)
            paramFragment.mView.startAnimation(localAnimation2);
          localViewGroup.addView(paramFragment.mView);
        }
        if (paramFragment.mHidden)
          paramFragment.mView.setVisibility(8);
        paramFragment.onViewCreated(paramFragment.mView, paramFragment.mSavedFragmentState);
      }
      while (true)
      {
        label737: paramFragment.mCalled = false;
        paramFragment.onActivityCreated(paramFragment.mSavedFragmentState);
        if (paramFragment.mCalled)
          break;
        throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onActivityCreated()");
        paramFragment.mInnerView = null;
      }
      if (paramFragment.mView != null)
        paramFragment.restoreViewState();
      paramFragment.mSavedFragmentState = null;
      label812: if (paramInt1 > 3)
      {
        if (DEBUG)
          Log.v("FragmentManager", "moveto STARTED: " + paramFragment);
        paramFragment.mCalled = false;
        paramFragment.performStart();
        if (!paramFragment.mCalled)
          throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onStart()");
      }
      if (paramInt1 <= 4)
        continue;
      if (DEBUG)
        Log.v("FragmentManager", "moveto RESUMED: " + paramFragment);
      paramFragment.mCalled = false;
      paramFragment.mResumed = true;
      paramFragment.onResume();
      if (!paramFragment.mCalled)
        throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onResume()");
      paramFragment.mSavedFragmentState = null;
      paramFragment.mSavedViewState = null;
      continue;
      if (paramFragment.mState <= paramInt1)
        continue;
      switch (paramFragment.mState)
      {
      default:
      case 1:
      case 5:
      case 4:
      case 3:
      case 2:
      }
    }
    label1043: 
    do
    {
      if (paramInt1 > 0)
        break;
      if ((this.mDestroyed) && (paramFragment.mAnimatingAway != null))
      {
        View localView = paramFragment.mAnimatingAway;
        paramFragment.mAnimatingAway = null;
        localView.clearAnimation();
      }
      if (paramFragment.mAnimatingAway == null)
        break label1518;
      paramFragment.mStateAfterAnimating = paramInt1;
      paramInt1 = 1;
      break;
      if (paramInt1 < 5)
      {
        if (DEBUG)
          Log.v("FragmentManager", "movefrom RESUMED: " + paramFragment);
        paramFragment.mCalled = false;
        paramFragment.onPause();
        if (!paramFragment.mCalled)
          throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onPause()");
        paramFragment.mResumed = false;
      }
      if (paramInt1 < 4)
      {
        if (DEBUG)
          Log.v("FragmentManager", "movefrom STARTED: " + paramFragment);
        paramFragment.mCalled = false;
        paramFragment.performStop();
        if (!paramFragment.mCalled)
          throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onStop()");
      }
      if (paramInt1 >= 3)
        continue;
      if (DEBUG)
        Log.v("FragmentManager", "movefrom STOPPED: " + paramFragment);
      paramFragment.performReallyStop();
    }
    while (paramInt1 >= 2);
    if (DEBUG)
      Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + paramFragment);
    if ((paramFragment.mView != null) && (!this.mActivity.isFinishing()) && (paramFragment.mSavedViewState == null))
      saveFragmentViewState(paramFragment);
    paramFragment.mCalled = false;
    paramFragment.performDestroyView();
    if (!paramFragment.mCalled)
      throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onDestroyView()");
    if ((paramFragment.mView != null) && (paramFragment.mContainer != null))
      if ((this.mCurState <= 0) || (this.mDestroyed))
        break label1681;
    label1681: for (Animation localAnimation1 = loadAnimation(paramFragment, paramInt2, false, paramInt3); ; localAnimation1 = null)
    {
      if (localAnimation1 != null)
      {
        paramFragment.mAnimatingAway = paramFragment.mView;
        paramFragment.mStateAfterAnimating = paramInt1;
        localAnimation1.setAnimationListener(new FragmentManagerImpl.5(this, paramFragment));
        paramFragment.mView.startAnimation(localAnimation1);
      }
      paramFragment.mContainer.removeView(paramFragment.mView);
      paramFragment.mContainer = null;
      paramFragment.mView = null;
      paramFragment.mInnerView = null;
      break label1043;
      label1518: if (DEBUG)
        Log.v("FragmentManager", "movefrom CREATED: " + paramFragment);
      if (!paramFragment.mRetaining)
      {
        paramFragment.mCalled = false;
        paramFragment.onDestroy();
        if (!paramFragment.mCalled)
          throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onDestroy()");
      }
      paramFragment.mCalled = false;
      paramFragment.onDetach();
      if (!paramFragment.mCalled)
        throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onDetach()");
      if (paramBoolean)
        break;
      if (!paramFragment.mRetaining)
      {
        makeInactive(paramFragment);
        break;
      }
      paramFragment.mActivity = null;
      paramFragment.mFragmentManager = null;
      break;
    }
  }

  public final void noteStateNotSaved()
  {
    this.mStateSaved = false;
  }

  public final void performPendingDeferredStart(Fragment paramFragment)
  {
    if (paramFragment.mDeferStart)
    {
      if (!this.mExecutingActions)
        break label20;
      this.mHavePendingDeferredStart = true;
    }
    while (true)
    {
      return;
      label20: paramFragment.mDeferStart = false;
      moveToState(paramFragment, this.mCurState, 0, 0, false);
    }
  }

  public final void popBackStack()
  {
    enqueueAction(new FragmentManagerImpl.2(this), false);
  }

  public final void popBackStack(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException("Bad id: " + paramInt1);
    enqueueAction(new FragmentManagerImpl.4(this, paramInt1, paramInt2), false);
  }

  public final void popBackStack(String paramString, int paramInt)
  {
    enqueueAction(new FragmentManagerImpl.3(this, paramString, paramInt), false);
  }

  public final boolean popBackStackImmediate()
  {
    checkStateLoss();
    executePendingTransactions();
    return popBackStackState(this.mActivity.mHandler, null, -1, 0);
  }

  public final boolean popBackStackImmediate(int paramInt1, int paramInt2)
  {
    checkStateLoss();
    executePendingTransactions();
    if (paramInt1 < 0)
      throw new IllegalArgumentException("Bad id: " + paramInt1);
    return popBackStackState(this.mActivity.mHandler, null, paramInt1, paramInt2);
  }

  public final boolean popBackStackImmediate(String paramString, int paramInt)
  {
    checkStateLoss();
    executePendingTransactions();
    return popBackStackState(this.mActivity.mHandler, paramString, -1, paramInt);
  }

  final boolean popBackStackState(Handler paramHandler, String paramString, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (this.mBackStack == null);
    int j;
    do
      while (true)
      {
        return i;
        if ((paramString == null) && (paramInt1 < 0) && ((paramInt2 & 0x1) == 0))
        {
          int i2 = -1 + this.mBackStack.size();
          if (i2 < 0)
            continue;
          ((BackStackRecord)this.mBackStack.remove(i2)).popFromBackStack(true);
          reportBackStackChanged();
          i = 1;
          continue;
        }
        j = -1;
        if ((paramString == null) && (paramInt1 < 0))
          break;
        for (int k = -1 + this.mBackStack.size(); k >= 0; k--)
        {
          BackStackRecord localBackStackRecord3 = (BackStackRecord)this.mBackStack.get(k);
          if (((paramString != null) && (paramString.equals(localBackStackRecord3.getName()))) || ((paramInt1 >= 0) && (paramInt1 == localBackStackRecord3.mIndex)))
            break;
        }
        if (k < 0)
          continue;
        if ((paramInt2 & 0x1) != 0)
        {
          k--;
          while (k >= 0)
          {
            BackStackRecord localBackStackRecord2 = (BackStackRecord)this.mBackStack.get(k);
            if (((paramString == null) || (!paramString.equals(localBackStackRecord2.getName()))) && ((paramInt1 < 0) || (paramInt1 != localBackStackRecord2.mIndex)))
              break;
            k--;
          }
        }
        j = k;
      }
    while (j == -1 + this.mBackStack.size());
    ArrayList localArrayList = new ArrayList();
    for (int m = -1 + this.mBackStack.size(); m > j; m--)
      localArrayList.add(this.mBackStack.remove(m));
    int n = -1 + localArrayList.size();
    int i1 = 0;
    label299: BackStackRecord localBackStackRecord1;
    if (i1 <= n)
    {
      if (DEBUG)
        Log.v("FragmentManager", "Popping back stack state: " + localArrayList.get(i1));
      localBackStackRecord1 = (BackStackRecord)localArrayList.get(i1);
      if (i1 != n)
        break label376;
    }
    label376: for (boolean bool = true; ; bool = false)
    {
      localBackStackRecord1.popFromBackStack(bool);
      i1++;
      break label299;
      break;
    }
  }

  public final void putFragment(Bundle paramBundle, String paramString, Fragment paramFragment)
  {
    if (paramFragment.mIndex < 0)
      throw new IllegalStateException("Fragment " + paramFragment + " is not currently in the FragmentManager");
    paramBundle.putInt(paramString, paramFragment.mIndex);
  }

  public final void removeFragment(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      Log.v("FragmentManager", "remove: " + paramFragment + " nesting=" + paramFragment.mBackStackNesting);
    int i;
    if (!paramFragment.isInBackStack())
    {
      i = 1;
      if ((!paramFragment.mDetached) || (i != 0))
      {
        if (this.mAdded != null)
          this.mAdded.remove(paramFragment);
        if ((paramFragment.mHasMenu) && (paramFragment.mMenuVisible))
          this.mNeedMenuInvalidate = true;
        paramFragment.mAdded = false;
        paramFragment.mRemoving = true;
        if (i == 0)
          break label134;
      }
    }
    label134: for (int j = 0; ; j = 1)
    {
      moveToState(paramFragment, j, paramInt1, paramInt2, false);
      return;
      i = 0;
      break;
    }
  }

  public final void removeOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener paramOnBackStackChangedListener)
  {
    if (this.mBackStackChangeListeners != null)
      this.mBackStackChangeListeners.remove(paramOnBackStackChangedListener);
  }

  final void reportBackStackChanged()
  {
    if (this.mBackStackChangeListeners != null)
      for (int i = 0; i < this.mBackStackChangeListeners.size(); i++)
        ((FragmentManager.OnBackStackChangedListener)this.mBackStackChangeListeners.get(i)).onBackStackChanged();
  }

  final void restoreAllState(Parcelable paramParcelable, ArrayList paramArrayList)
  {
    int i = 0;
    if (paramParcelable == null);
    while (true)
    {
      return;
      FragmentManagerState localFragmentManagerState = (FragmentManagerState)paramParcelable;
      if (localFragmentManagerState.mActive == null)
        continue;
      if (paramArrayList != null)
        for (int n = 0; n < paramArrayList.size(); n++)
        {
          Fragment localFragment4 = (Fragment)paramArrayList.get(n);
          if (DEBUG)
            Log.v("FragmentManager", "restoreAllState: re-attaching retained " + localFragment4);
          FragmentState localFragmentState2 = localFragmentManagerState.mActive[localFragment4.mIndex];
          localFragmentState2.mInstance = localFragment4;
          localFragment4.mSavedViewState = null;
          localFragment4.mBackStackNesting = 0;
          localFragment4.mInLayout = false;
          localFragment4.mAdded = false;
          localFragment4.mTarget = null;
          if (localFragmentState2.mSavedFragmentState == null)
            continue;
          localFragmentState2.mSavedFragmentState.setClassLoader(this.mActivity.getClassLoader());
          localFragment4.mSavedViewState = localFragmentState2.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        }
      this.mActive = new ArrayList(localFragmentManagerState.mActive.length);
      if (this.mAvailIndices != null)
        this.mAvailIndices.clear();
      int j = 0;
      if (j < localFragmentManagerState.mActive.length)
      {
        FragmentState localFragmentState1 = localFragmentManagerState.mActive[j];
        if (localFragmentState1 != null)
        {
          Fragment localFragment3 = localFragmentState1.instantiate(this.mActivity);
          if (DEBUG)
            Log.v("FragmentManager", "restoreAllState: adding #" + j + ": " + localFragment3);
          this.mActive.add(localFragment3);
          localFragmentState1.mInstance = null;
        }
        while (true)
        {
          j++;
          break;
          if (DEBUG)
            Log.v("FragmentManager", "restoreAllState: adding #" + j + ": (null)");
          this.mActive.add(null);
          if (this.mAvailIndices == null)
            this.mAvailIndices = new ArrayList();
          if (DEBUG)
            Log.v("FragmentManager", "restoreAllState: adding avail #" + j);
          this.mAvailIndices.add(Integer.valueOf(j));
        }
      }
      if (paramArrayList != null)
      {
        int m = 0;
        if (m < paramArrayList.size())
        {
          Fragment localFragment2 = (Fragment)paramArrayList.get(m);
          if (localFragment2.mTargetIndex >= 0)
            if (localFragment2.mTargetIndex >= this.mActive.size())
              break label491;
          for (localFragment2.mTarget = ((Fragment)this.mActive.get(localFragment2.mTargetIndex)); ; localFragment2.mTarget = null)
          {
            m++;
            break;
            label491: Log.w("FragmentManager", "Re-attaching retained fragment " + localFragment2 + " target no longer exists: " + localFragment2.mTargetIndex);
          }
        }
      }
      if (localFragmentManagerState.mAdded != null)
      {
        this.mAdded = new ArrayList(localFragmentManagerState.mAdded.length);
        for (int k = 0; k < localFragmentManagerState.mAdded.length; k++)
        {
          Fragment localFragment1 = (Fragment)this.mActive.get(localFragmentManagerState.mAdded[k]);
          if (localFragment1 == null)
            throw new IllegalStateException("No instantiated fragment for index #" + localFragmentManagerState.mAdded[k]);
          localFragment1.mAdded = true;
          if (DEBUG)
            Log.v("FragmentManager", "restoreAllState: making added #" + k + ": " + localFragment1);
          this.mAdded.add(localFragment1);
        }
      }
      this.mAdded = null;
      if (localFragmentManagerState.mBackStack != null)
      {
        this.mBackStack = new ArrayList(localFragmentManagerState.mBackStack.length);
        while (i < localFragmentManagerState.mBackStack.length)
        {
          BackStackRecord localBackStackRecord = localFragmentManagerState.mBackStack[i].instantiate(this);
          if (DEBUG)
            Log.v("FragmentManager", "restoreAllState: adding bse #" + i + " (index " + localBackStackRecord.mIndex + "): " + localBackStackRecord);
          this.mBackStack.add(localBackStackRecord);
          if (localBackStackRecord.mIndex >= 0)
            setBackStackIndex(localBackStackRecord.mIndex, localBackStackRecord);
          i++;
        }
        continue;
      }
      this.mBackStack = null;
    }
  }

  final ArrayList retainNonConfig()
  {
    ArrayList localArrayList = null;
    if (this.mActive != null)
    {
      int i = 0;
      if (i < this.mActive.size())
      {
        Fragment localFragment = (Fragment)this.mActive.get(i);
        if ((localFragment != null) && (localFragment.mRetainInstance))
        {
          if (localArrayList == null)
            localArrayList = new ArrayList();
          localArrayList.add(localFragment);
          localFragment.mRetaining = true;
          if (localFragment.mTarget == null)
            break label125;
        }
        label125: for (int j = localFragment.mTarget.mIndex; ; j = -1)
        {
          localFragment.mTargetIndex = j;
          if (DEBUG)
            Log.v("FragmentManager", "retainNonConfig: keeping retained " + localFragment);
          i++;
          break;
        }
      }
    }
    return localArrayList;
  }

  final Parcelable saveAllState()
  {
    Object localObject = null;
    execPendingActions();
    if (HONEYCOMB)
      this.mStateSaved = true;
    if ((this.mActive == null) || (this.mActive.size() <= 0))
      return localObject;
    int i = this.mActive.size();
    FragmentState[] arrayOfFragmentState = new FragmentState[i];
    int j = 0;
    int k = 0;
    label57: Fragment localFragment;
    FragmentState localFragmentState;
    if (j < i)
    {
      localFragment = (Fragment)this.mActive.get(j);
      if (localFragment == null)
        break label825;
      if (localFragment.mIndex < 0)
      {
        String str3 = "Failure saving state: active " + localFragment + " has cleared index: " + localFragment.mIndex;
        Log.e("FragmentManager", str3);
        dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), new String[0]);
        throw new IllegalStateException(str3);
      }
      localFragmentState = new FragmentState(localFragment);
      arrayOfFragmentState[j] = localFragmentState;
      if ((localFragment.mState > 0) && (localFragmentState.mSavedFragmentState == null))
      {
        localFragmentState.mSavedFragmentState = saveFragmentBasicState(localFragment);
        if (localFragment.mTarget != null)
        {
          if (localFragment.mTarget.mIndex < 0)
          {
            String str2 = "Failure saving state: " + localFragment + " has target not in fragment manager: " + localFragment.mTarget;
            Log.e("FragmentManager", str2);
            dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), new String[0]);
            throw new IllegalStateException(str2);
          }
          if (localFragmentState.mSavedFragmentState == null)
            localFragmentState.mSavedFragmentState = new Bundle();
          putFragment(localFragmentState.mSavedFragmentState, "android:target_state", localFragment.mTarget);
          if (localFragment.mTargetRequestCode != 0)
            localFragmentState.mSavedFragmentState.putInt("android:target_req_state", localFragment.mTargetRequestCode);
        }
        label373: if (DEBUG)
          Log.v("FragmentManager", "Saved state of " + localFragment + ": " + localFragmentState.mSavedFragmentState);
      }
    }
    label825: for (int i3 = 1; ; i3 = k)
    {
      j++;
      k = i3;
      break label57;
      localFragmentState.mSavedFragmentState = localFragment.mSavedFragmentState;
      break label373;
      if (k == 0)
      {
        if (!DEBUG)
          break;
        Log.v("FragmentManager", "saveAllState: no fragments!");
        break;
      }
      if (this.mAdded != null)
      {
        int i1 = this.mAdded.size();
        if (i1 > 0)
        {
          arrayOfInt = new int[i1];
          for (int i2 = 0; i2 < i1; i2++)
          {
            arrayOfInt[i2] = ((Fragment)this.mAdded.get(i2)).mIndex;
            if (arrayOfInt[i2] < 0)
            {
              String str1 = "Failure saving state: active " + this.mAdded.get(i2) + " has cleared index: " + arrayOfInt[i2];
              Log.e("FragmentManager", str1);
              dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), new String[0]);
              throw new IllegalStateException(str1);
            }
            if (!DEBUG)
              continue;
            Log.v("FragmentManager", "saveAllState: adding fragment #" + i2 + ": " + this.mAdded.get(i2));
          }
        }
      }
      int[] arrayOfInt = null;
      if (this.mBackStack != null)
      {
        int m = this.mBackStack.size();
        if (m > 0)
        {
          localObject = new BackStackState[m];
          for (int n = 0; n < m; n++)
          {
            localObject[n] = new BackStackState(this, (BackStackRecord)this.mBackStack.get(n));
            if (!DEBUG)
              continue;
            Log.v("FragmentManager", "saveAllState: adding back stack #" + n + ": " + this.mBackStack.get(n));
          }
        }
      }
      FragmentManagerState localFragmentManagerState = new FragmentManagerState();
      localFragmentManagerState.mActive = arrayOfFragmentState;
      localFragmentManagerState.mAdded = arrayOfInt;
      localFragmentManagerState.mBackStack = ((BackStackState)localObject);
      localObject = localFragmentManagerState;
      break;
    }
  }

  final Bundle saveFragmentBasicState(Fragment paramFragment)
  {
    if (this.mStateBundle == null)
      this.mStateBundle = new Bundle();
    paramFragment.onSaveInstanceState(this.mStateBundle);
    Bundle localBundle;
    if (!this.mStateBundle.isEmpty())
    {
      localBundle = this.mStateBundle;
      this.mStateBundle = null;
    }
    while (true)
    {
      if (paramFragment.mView != null)
        saveFragmentViewState(paramFragment);
      if (paramFragment.mSavedViewState != null)
      {
        if (localBundle == null)
          localBundle = new Bundle();
        localBundle.putSparseParcelableArray("android:view_state", paramFragment.mSavedViewState);
      }
      if (!paramFragment.mUserVisibleHint)
      {
        if (localBundle == null)
          localBundle = new Bundle();
        localBundle.putBoolean("android:user_visible_hint", paramFragment.mUserVisibleHint);
      }
      return localBundle;
      localBundle = null;
    }
  }

  public final Fragment.SavedState saveFragmentInstanceState(Fragment paramFragment)
  {
    Fragment.SavedState localSavedState = null;
    if (paramFragment.mIndex < 0)
      throw new IllegalStateException("Fragment " + paramFragment + " is not currently in the FragmentManager");
    if (paramFragment.mState > 0)
    {
      Bundle localBundle = saveFragmentBasicState(paramFragment);
      if (localBundle != null)
        localSavedState = new Fragment.SavedState(localBundle);
    }
    return localSavedState;
  }

  final void saveFragmentViewState(Fragment paramFragment)
  {
    if (paramFragment.mInnerView == null)
      return;
    if (this.mStateArray == null)
      this.mStateArray = new SparseArray();
    while (true)
    {
      paramFragment.mInnerView.saveHierarchyState(this.mStateArray);
      if (this.mStateArray.size() <= 0)
        break;
      paramFragment.mSavedViewState = this.mStateArray;
      this.mStateArray = null;
      break;
      this.mStateArray.clear();
    }
  }

  public final void setBackStackIndex(int paramInt, BackStackRecord paramBackStackRecord)
  {
    monitorenter;
    try
    {
      if (this.mBackStackIndices == null)
        this.mBackStackIndices = new ArrayList();
      int i = this.mBackStackIndices.size();
      if (paramInt < i)
      {
        if (DEBUG)
          Log.v("FragmentManager", "Setting back stack index " + paramInt + " to " + paramBackStackRecord);
        this.mBackStackIndices.set(paramInt, paramBackStackRecord);
        return;
      }
      while (i < paramInt)
      {
        this.mBackStackIndices.add(null);
        if (this.mAvailBackStackIndices == null)
          this.mAvailBackStackIndices = new ArrayList();
        if (DEBUG)
          Log.v("FragmentManager", "Adding available back stack index " + i);
        this.mAvailBackStackIndices.add(Integer.valueOf(i));
        i++;
      }
      if (DEBUG)
        Log.v("FragmentManager", "Adding back stack index " + paramInt + " with " + paramBackStackRecord);
      this.mBackStackIndices.add(paramBackStackRecord);
    }
    finally
    {
      monitorexit;
    }
  }

  public final void showFragment(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      Log.v("FragmentManager", "show: " + paramFragment);
    if (paramFragment.mHidden)
    {
      paramFragment.mHidden = false;
      if (paramFragment.mView != null)
      {
        Animation localAnimation = loadAnimation(paramFragment, paramInt1, true, paramInt2);
        if (localAnimation != null)
          paramFragment.mView.startAnimation(localAnimation);
        paramFragment.mView.setVisibility(0);
      }
      if ((paramFragment.mAdded) && (paramFragment.mHasMenu) && (paramFragment.mMenuVisible))
        this.mNeedMenuInvalidate = true;
      paramFragment.onHiddenChanged(false);
    }
  }

  final void startPendingDeferredFragments()
  {
    if (this.mActive == null);
    while (true)
    {
      return;
      for (int i = 0; i < this.mActive.size(); i++)
      {
        Fragment localFragment = (Fragment)this.mActive.get(i);
        if (localFragment == null)
          continue;
        performPendingDeferredStart(localFragment);
      }
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("FragmentManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    DebugUtils.buildShortClassTag(this.mActivity, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentManagerImpl
 * JD-Core Version:    0.6.0
 */