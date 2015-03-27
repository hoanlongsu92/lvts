package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager extends ViewGroup
{
  private static final int CLOSE_ENOUGH = 2;
  private static final Comparator COMPARATOR;
  private static final boolean DEBUG = false;
  private static final int DEFAULT_GUTTER_SIZE = 16;
  private static final int DEFAULT_OFFSCREEN_PAGES = 1;
  private static final int INVALID_POINTER = -1;
  private static final int[] LAYOUT_ATTRS;
  private static final int MAX_SETTLE_DURATION = 600;
  private static final int MIN_DISTANCE_FOR_FLING = 25;
  public static final int SCROLL_STATE_DRAGGING = 1;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_SETTLING = 2;
  private static final String TAG = "ViewPager";
  private static final boolean USE_CACHE;
  private static final Interpolator sInterpolator;
  private int mActivePointerId = -1;
  private PagerAdapter mAdapter;
  private ViewPager.OnAdapterChangeListener mAdapterChangeListener;
  private int mBottomPageBounds;
  private boolean mCalledSuper;
  private int mChildHeightMeasureSpec;
  private int mChildWidthMeasureSpec;
  private int mCloseEnough;
  private int mCurItem;
  private int mDecorChildCount;
  private int mDefaultGutterSize;
  private long mFakeDragBeginTime;
  private boolean mFakeDragging;
  private boolean mFirstLayout = true;
  private float mFirstOffset = -3.402824E+038F;
  private int mFlingDistance;
  private int mGutterSize;
  private boolean mIgnoreGutter;
  private boolean mInLayout;
  private float mInitialMotionX;
  private ViewPager.OnPageChangeListener mInternalPageChangeListener;
  private boolean mIsBeingDragged;
  private boolean mIsUnableToDrag;
  private final ArrayList mItems = new ArrayList();
  private float mLastMotionX;
  private float mLastMotionY;
  private float mLastOffset = 3.4028235E+38F;
  private EdgeEffectCompat mLeftEdge;
  private Drawable mMarginDrawable;
  private int mMaximumVelocity;
  private int mMinimumVelocity;
  private boolean mNeedCalculatePageOffsets = false;
  private ViewPager.PagerObserver mObserver;
  private int mOffscreenPageLimit = 1;
  private ViewPager.OnPageChangeListener mOnPageChangeListener;
  private int mPageMargin;
  private boolean mPopulatePending;
  private Parcelable mRestoredAdapterState = null;
  private ClassLoader mRestoredClassLoader = null;
  private int mRestoredCurItem = -1;
  private EdgeEffectCompat mRightEdge;
  private int mScrollState = 0;
  private Scroller mScroller;
  private boolean mScrollingCacheEnabled;
  private final ViewPager.ItemInfo mTempItem = new ViewPager.ItemInfo();
  private final Rect mTempRect = new Rect();
  private int mTopPageBounds;
  private int mTouchSlop;
  private VelocityTracker mVelocityTracker;

  static
  {
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = 16842931;
    LAYOUT_ATTRS = arrayOfInt;
    COMPARATOR = new ViewPager.1();
    sInterpolator = new ViewPager.2();
  }

  public ViewPager(Context paramContext)
  {
    super(paramContext);
    initViewPager();
  }

  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initViewPager();
  }

  private void calculatePageOffsets(ViewPager.ItemInfo paramItemInfo1, int paramInt, ViewPager.ItemInfo paramItemInfo2)
  {
    int i = this.mAdapter.getCount();
    int j = getWidth();
    float f1;
    int i7;
    float f9;
    int i10;
    int i11;
    if (j > 0)
    {
      f1 = this.mPageMargin / j;
      if (paramItemInfo2 == null)
        break label373;
      i7 = paramItemInfo2.position;
      if (i7 < paramItemInfo1.position)
      {
        f9 = f1 + (paramItemInfo2.offset + paramItemInfo2.widthFactor);
        i10 = i7 + 1;
        i11 = 0;
      }
    }
    else
    {
      while (true)
      {
        if ((i10 > paramItemInfo1.position) || (i11 >= this.mItems.size()))
          break label373;
        ViewPager.ItemInfo localItemInfo4 = (ViewPager.ItemInfo)this.mItems.get(i11);
        while (true)
          if ((i10 > localItemInfo4.position) && (i11 < -1 + this.mItems.size()))
          {
            i11++;
            localItemInfo4 = (ViewPager.ItemInfo)this.mItems.get(i11);
            continue;
            f1 = 0.0F;
            break;
          }
        while (i10 < localItemInfo4.position)
        {
          f9 += f1 + this.mAdapter.getPageWidth(i10);
          i10++;
        }
        localItemInfo4.offset = f9;
        f9 += f1 + localItemInfo4.widthFactor;
        i10++;
      }
    }
    if (i7 > paramItemInfo1.position)
    {
      int i8 = -1 + this.mItems.size();
      float f8 = paramItemInfo2.offset;
      for (int i9 = i7 - 1; (i9 >= paramItemInfo1.position) && (i8 >= 0); i9--)
      {
        for (ViewPager.ItemInfo localItemInfo3 = (ViewPager.ItemInfo)this.mItems.get(i8); (i9 < localItemInfo3.position) && (i8 > 0); localItemInfo3 = (ViewPager.ItemInfo)this.mItems.get(i8))
          i8--;
        while (i9 > localItemInfo3.position)
        {
          f8 -= f1 + this.mAdapter.getPageWidth(i9);
          i9--;
        }
        f8 -= f1 + localItemInfo3.widthFactor;
        localItemInfo3.offset = f8;
      }
    }
    label373: int k = this.mItems.size();
    float f2 = paramItemInfo1.offset;
    int m = -1 + paramItemInfo1.position;
    float f3;
    float f4;
    if (paramItemInfo1.position == 0)
    {
      f3 = paramItemInfo1.offset;
      this.mFirstOffset = f3;
      if (paramItemInfo1.position != i - 1)
        break label525;
      f4 = paramItemInfo1.offset + paramItemInfo1.widthFactor - 1.0F;
      label440: this.mLastOffset = f4;
    }
    label525: int i5;
    for (int n = paramInt - 1; ; n = i5)
    {
      if (n < 0)
        break label582;
      ViewPager.ItemInfo localItemInfo2 = (ViewPager.ItemInfo)this.mItems.get(n);
      float f7 = f2;
      while (true)
        if (m > localItemInfo2.position)
        {
          PagerAdapter localPagerAdapter2 = this.mAdapter;
          int i6 = m - 1;
          f7 -= f1 + localPagerAdapter2.getPageWidth(m);
          m = i6;
          continue;
          f3 = -3.402824E+038F;
          break;
          f4 = 3.4028235E+38F;
          break label440;
        }
      f2 = f7 - (f1 + localItemInfo2.widthFactor);
      localItemInfo2.offset = f2;
      if (localItemInfo2.position == 0)
        this.mFirstOffset = f2;
      i5 = n - 1;
      m--;
    }
    label582: float f5 = f1 + (paramItemInfo1.offset + paramItemInfo1.widthFactor);
    int i1 = 1 + paramItemInfo1.position;
    int i3;
    for (int i2 = paramInt + 1; i2 < k; i2 = i3)
    {
      ViewPager.ItemInfo localItemInfo1 = (ViewPager.ItemInfo)this.mItems.get(i2);
      float f6 = f5;
      while (i1 < localItemInfo1.position)
      {
        PagerAdapter localPagerAdapter1 = this.mAdapter;
        int i4 = i1 + 1;
        f6 += f1 + localPagerAdapter1.getPageWidth(i1);
        i1 = i4;
      }
      if (localItemInfo1.position == i - 1)
        this.mLastOffset = (f6 + localItemInfo1.widthFactor - 1.0F);
      localItemInfo1.offset = f6;
      f5 = f6 + (f1 + localItemInfo1.widthFactor);
      i3 = i2 + 1;
      i1++;
    }
    this.mNeedCalculatePageOffsets = false;
  }

  private void completeScroll()
  {
    if (this.mScrollState == 2);
    int k;
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        setScrollingCacheEnabled(false);
        this.mScroller.abortAnimation();
        int m = getScrollX();
        int n = getScrollY();
        int i1 = this.mScroller.getCurrX();
        int i2 = this.mScroller.getCurrY();
        if ((m != i1) || (n != i2))
          scrollTo(i1, i2);
        setScrollState(0);
      }
      this.mPopulatePending = false;
      int j = 0;
      k = i;
      while (j < this.mItems.size())
      {
        ViewPager.ItemInfo localItemInfo = (ViewPager.ItemInfo)this.mItems.get(j);
        if (localItemInfo.scrolling)
        {
          localItemInfo.scrolling = false;
          k = 1;
        }
        j++;
      }
    }
    if (k != 0)
      populate();
  }

  private int determineTargetPage(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    if ((Math.abs(paramInt3) > this.mFlingDistance) && (Math.abs(paramInt2) > this.mMinimumVelocity))
      if (paramInt2 <= 0);
    while (true)
    {
      if (this.mItems.size() > 0)
      {
        ViewPager.ItemInfo localItemInfo1 = (ViewPager.ItemInfo)this.mItems.get(0);
        ViewPager.ItemInfo localItemInfo2 = (ViewPager.ItemInfo)this.mItems.get(-1 + this.mItems.size());
        paramInt1 = Math.max(localItemInfo1.position, Math.min(paramInt1, localItemInfo2.position));
      }
      return paramInt1;
      paramInt1++;
      continue;
      paramInt1 = (int)(0.5F + (paramFloat + paramInt1));
    }
  }

  private void endDrag()
  {
    this.mIsBeingDragged = false;
    this.mIsUnableToDrag = false;
    if (this.mVelocityTracker != null)
    {
      this.mVelocityTracker.recycle();
      this.mVelocityTracker = null;
    }
  }

  private Rect getChildRectInPagerCoordinates(Rect paramRect, View paramView)
  {
    if (paramRect == null);
    for (Rect localRect1 = new Rect(); ; localRect1 = paramRect)
    {
      if (paramView == null)
        localRect1.set(0, 0, 0, 0);
      for (Rect localRect2 = localRect1; ; localRect2 = localRect1)
      {
        return localRect2;
        localRect1.left = paramView.getLeft();
        localRect1.right = paramView.getRight();
        localRect1.top = paramView.getTop();
        localRect1.bottom = paramView.getBottom();
        ViewGroup localViewGroup;
        for (ViewParent localViewParent = paramView.getParent(); ((localViewParent instanceof ViewGroup)) && (localViewParent != this); localViewParent = localViewGroup.getParent())
        {
          localViewGroup = (ViewGroup)localViewParent;
          localRect1.left += localViewGroup.getLeft();
          localRect1.right += localViewGroup.getRight();
          localRect1.top += localViewGroup.getTop();
          localRect1.bottom += localViewGroup.getBottom();
        }
      }
    }
  }

  private ViewPager.ItemInfo infoForCurrentScrollPosition()
  {
    int i = getWidth();
    float f1;
    float f2;
    label31: float f3;
    float f4;
    int j;
    int k;
    int m;
    Object localObject;
    label50: ViewPager.ItemInfo localItemInfo1;
    ViewPager.ItemInfo localItemInfo3;
    int n;
    if (i > 0)
    {
      f1 = getScrollX() / i;
      if (i <= 0)
        break label212;
      f2 = this.mPageMargin / i;
      f3 = 0.0F;
      f4 = 0.0F;
      j = -1;
      k = 0;
      m = 1;
      localObject = null;
      if (k < this.mItems.size())
      {
        localItemInfo1 = (ViewPager.ItemInfo)this.mItems.get(k);
        if ((m != 0) || (localItemInfo1.position == j + 1))
          break label263;
        localItemInfo3 = this.mTempItem;
        localItemInfo3.offset = (f2 + (f3 + f4));
        localItemInfo3.position = (j + 1);
        localItemInfo3.widthFactor = this.mAdapter.getPageWidth(localItemInfo3.position);
        n = k - 1;
      }
    }
    for (ViewPager.ItemInfo localItemInfo2 = localItemInfo3; ; localItemInfo2 = localItemInfo1)
    {
      float f5 = localItemInfo2.offset;
      float f6 = f2 + (f5 + localItemInfo2.widthFactor);
      if ((m != 0) || (f1 >= f5))
      {
        if ((f1 < f6) || (n == -1 + this.mItems.size()))
          localObject = localItemInfo2;
      }
      else
      {
        return localObject;
        f1 = 0.0F;
        break;
        label212: f2 = 0.0F;
        break label31;
      }
      int i1 = localItemInfo2.position;
      float f7 = localItemInfo2.widthFactor;
      int i2 = n + 1;
      f4 = f5;
      j = i1;
      m = 0;
      f3 = f7;
      localObject = localItemInfo2;
      k = i2;
      break label50;
      label263: n = k;
    }
  }

  private boolean isGutterDrag(float paramFloat1, float paramFloat2)
  {
    if (((paramFloat1 < this.mGutterSize) && (paramFloat2 > 0.0F)) || ((paramFloat1 > getWidth() - this.mGutterSize) && (paramFloat2 < 0.0F)));
    for (int i = 1; ; i = 0)
      return i;
  }

  private void onSecondaryPointerUp(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i) == this.mActivePointerId)
      if (i != 0)
        break label56;
    label56: for (int j = 1; ; j = 0)
    {
      this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, j);
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, j);
      if (this.mVelocityTracker != null)
        this.mVelocityTracker.clear();
      return;
    }
  }

  private boolean pageScrolled(int paramInt)
  {
    int i = 0;
    if (this.mItems.size() == 0)
    {
      this.mCalledSuper = false;
      onPageScrolled(0, 0.0F, 0);
      if (!this.mCalledSuper)
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }
    else
    {
      ViewPager.ItemInfo localItemInfo = infoForCurrentScrollPosition();
      int j = getWidth();
      int k = j + this.mPageMargin;
      float f1 = this.mPageMargin / j;
      int m = localItemInfo.position;
      float f2 = (paramInt / j - localItemInfo.offset) / (f1 + localItemInfo.widthFactor);
      int n = (int)(f2 * k);
      this.mCalledSuper = false;
      onPageScrolled(m, f2, n);
      if (!this.mCalledSuper)
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      i = 1;
    }
    return i;
  }

  private boolean performDrag(float paramFloat)
  {
    int i = 1;
    boolean bool = false;
    float f1 = this.mLastMotionX - paramFloat;
    this.mLastMotionX = paramFloat;
    float f2 = f1 + getScrollX();
    int j = getWidth();
    float f3 = j * this.mFirstOffset;
    float f4 = j * this.mLastOffset;
    ViewPager.ItemInfo localItemInfo1 = (ViewPager.ItemInfo)this.mItems.get(0);
    ViewPager.ItemInfo localItemInfo2 = (ViewPager.ItemInfo)this.mItems.get(-1 + this.mItems.size());
    if (localItemInfo1.position != 0)
      f3 = localItemInfo1.offset * j;
    for (int k = 0; ; k = i)
    {
      float f5;
      if (localItemInfo2.position != -1 + this.mAdapter.getCount())
      {
        f5 = localItemInfo2.offset * j;
        i = 0;
      }
      while (true)
      {
        if (f2 < f3)
          if (k != 0)
          {
            float f7 = f3 - f2;
            bool = this.mLeftEdge.onPull(Math.abs(f7) / j);
          }
        while (true)
        {
          this.mLastMotionX += f3 - (int)f3;
          scrollTo((int)f3, getScrollY());
          pageScrolled((int)f3);
          return bool;
          if (f2 > f5)
          {
            if (i != 0)
            {
              float f6 = f2 - f5;
              bool = this.mRightEdge.onPull(Math.abs(f6) / j);
            }
            f3 = f5;
            continue;
          }
          f3 = f2;
        }
        f5 = f4;
      }
    }
  }

  private void recomputeScrollPosition(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!this.mItems.isEmpty()))
    {
      int j = paramInt1 + paramInt3;
      int k = paramInt2 + paramInt4;
      int m = (int)(getScrollX() / k * j);
      scrollTo(m, getScrollY());
      if (!this.mScroller.isFinished())
      {
        int n = this.mScroller.getDuration() - this.mScroller.timePassed();
        ViewPager.ItemInfo localItemInfo2 = infoForPosition(this.mCurItem);
        this.mScroller.startScroll(m, 0, (int)(localItemInfo2.offset * paramInt1), 0, n);
      }
      return;
    }
    ViewPager.ItemInfo localItemInfo1 = infoForPosition(this.mCurItem);
    float f;
    if (localItemInfo1 != null)
      f = Math.min(localItemInfo1.offset, this.mLastOffset);
    while (true)
    {
      int i = (int)(f * paramInt1);
      if (i == getScrollX())
        break;
      completeScroll();
      scrollTo(i, getScrollY());
      break;
      f = 0.0F;
    }
  }

  private void removeNonDecorViews()
  {
    for (int i = 0; i < getChildCount(); i++)
    {
      if (((ViewPager.LayoutParams)getChildAt(i).getLayoutParams()).isDecor)
        continue;
      removeViewAt(i);
      i--;
    }
  }

  private void setScrollState(int paramInt)
  {
    if (this.mScrollState == paramInt);
    while (true)
    {
      return;
      this.mScrollState = paramInt;
      if (this.mOnPageChangeListener == null)
        continue;
      this.mOnPageChangeListener.onPageScrollStateChanged(paramInt);
    }
  }

  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.mScrollingCacheEnabled != paramBoolean)
      this.mScrollingCacheEnabled = paramBoolean;
  }

  public void addFocusables(ArrayList paramArrayList, int paramInt1, int paramInt2)
  {
    int i = paramArrayList.size();
    int j = getDescendantFocusability();
    if (j != 393216)
      for (int k = 0; k < getChildCount(); k++)
      {
        View localView = getChildAt(k);
        if (localView.getVisibility() != 0)
          continue;
        ViewPager.ItemInfo localItemInfo = infoForChild(localView);
        if ((localItemInfo == null) || (localItemInfo.position != this.mCurItem))
          continue;
        localView.addFocusables(paramArrayList, paramInt1, paramInt2);
      }
    if (((j == 262144) && (i != paramArrayList.size())) || (!isFocusable()));
    while (true)
    {
      return;
      if ((((paramInt2 & 0x1) != 1) || (!isInTouchMode()) || (isFocusableInTouchMode())) && (paramArrayList != null))
      {
        paramArrayList.add(this);
        continue;
      }
    }
  }

  ViewPager.ItemInfo addNewItem(int paramInt1, int paramInt2)
  {
    ViewPager.ItemInfo localItemInfo = new ViewPager.ItemInfo();
    localItemInfo.position = paramInt1;
    localItemInfo.object = this.mAdapter.instantiateItem(this, paramInt1);
    localItemInfo.widthFactor = this.mAdapter.getPageWidth(paramInt1);
    if ((paramInt2 < 0) || (paramInt2 >= this.mItems.size()))
      this.mItems.add(localItemInfo);
    while (true)
    {
      return localItemInfo;
      this.mItems.add(paramInt2, localItemInfo);
    }
  }

  public void addTouchables(ArrayList paramArrayList)
  {
    for (int i = 0; i < getChildCount(); i++)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() != 0)
        continue;
      ViewPager.ItemInfo localItemInfo = infoForChild(localView);
      if ((localItemInfo == null) || (localItemInfo.position != this.mCurItem))
        continue;
      localView.addTouchables(paramArrayList);
    }
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams));
    for (ViewGroup.LayoutParams localLayoutParams = generateLayoutParams(paramLayoutParams); ; localLayoutParams = paramLayoutParams)
    {
      ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localLayoutParams;
      localLayoutParams1.isDecor |= paramView instanceof ViewPager.Decor;
      if (this.mInLayout)
      {
        if ((localLayoutParams1 != null) && (localLayoutParams1.isDecor))
          throw new IllegalStateException("Cannot add pager decor view during layout");
        localLayoutParams1.needsMeasure = true;
        addViewInLayout(paramView, paramInt, localLayoutParams);
      }
      while (true)
      {
        return;
        super.addView(paramView, paramInt, localLayoutParams);
      }
    }
  }

  public boolean arrowScroll(int paramInt)
  {
    View localView1 = findFocus();
    if (localView1 == this)
      localView1 = null;
    View localView2 = FocusFinder.getInstance().findNextFocus(this, localView1, paramInt);
    boolean bool;
    if ((localView2 != null) && (localView2 != localView1))
      if (paramInt == 17)
      {
        int k = getChildRectInPagerCoordinates(this.mTempRect, localView2).left;
        int m = getChildRectInPagerCoordinates(this.mTempRect, localView1).left;
        if ((localView1 != null) && (k >= m))
          bool = pageLeft();
      }
    while (true)
    {
      if (bool)
        playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
      return bool;
      bool = localView2.requestFocus();
      continue;
      if (paramInt == 66)
      {
        int i = getChildRectInPagerCoordinates(this.mTempRect, localView2).left;
        int j = getChildRectInPagerCoordinates(this.mTempRect, localView1).left;
        if ((localView1 == null) || (i > j))
        {
          bool = localView2.requestFocus();
          continue;
          if ((paramInt == 17) || (paramInt == 1))
          {
            bool = pageLeft();
            continue;
          }
          if ((paramInt != 66) && (paramInt != 2));
        }
        else
        {
          bool = pageRight();
          continue;
        }
      }
      bool = false;
    }
  }

  public boolean beginFakeDrag()
  {
    int i = 0;
    if (this.mIsBeingDragged)
      return i;
    this.mFakeDragging = true;
    setScrollState(1);
    this.mLastMotionX = 0.0F;
    this.mInitialMotionX = 0.0F;
    if (this.mVelocityTracker == null)
      this.mVelocityTracker = VelocityTracker.obtain();
    while (true)
    {
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 0, 0.0F, 0.0F, 0);
      this.mVelocityTracker.addMovement(localMotionEvent);
      localMotionEvent.recycle();
      this.mFakeDragBeginTime = l;
      i = 1;
      break;
      this.mVelocityTracker.clear();
    }
  }

  protected boolean canScroll(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool = true;
    int k;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i = paramView.getScrollX();
      int j = paramView.getScrollY();
      k = -1 + localViewGroup.getChildCount();
      if (k >= 0)
      {
        View localView = localViewGroup.getChildAt(k);
        if ((paramInt2 + i < localView.getLeft()) || (paramInt2 + i >= localView.getRight()) || (paramInt3 + j < localView.getTop()) || (paramInt3 + j >= localView.getBottom()) || (!canScroll(localView, bool, paramInt1, paramInt2 + i - localView.getLeft(), paramInt3 + j - localView.getTop())));
      }
    }
    while (true)
    {
      return bool;
      k--;
      break;
      if ((paramBoolean) && (ViewCompat.canScrollHorizontally(paramView, -paramInt1)))
        continue;
      bool = false;
    }
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (((paramLayoutParams instanceof ViewPager.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams)));
    for (int i = 1; ; i = 0)
      return i;
  }

  public void computeScroll()
  {
    if ((!this.mScroller.isFinished()) && (this.mScroller.computeScrollOffset()))
    {
      int i = getScrollX();
      int j = getScrollY();
      int k = this.mScroller.getCurrX();
      int m = this.mScroller.getCurrY();
      if ((i != k) || (j != m))
      {
        scrollTo(k, m);
        if (!pageScrolled(k))
        {
          this.mScroller.abortAnimation();
          scrollTo(0, m);
        }
      }
      ViewCompat.postInvalidateOnAnimation(this);
    }
    while (true)
    {
      return;
      completeScroll();
    }
  }

  void dataSetChanged()
  {
    int i;
    int k;
    int m;
    int n;
    int i1;
    label53: ViewPager.ItemInfo localItemInfo;
    int i4;
    int i10;
    int i5;
    int i6;
    int i7;
    int i8;
    if ((this.mItems.size() < 1 + (this.mOffscreenPageLimit << 1)) && (this.mItems.size() < this.mAdapter.getCount()))
    {
      i = 1;
      int j = this.mCurItem;
      k = 0;
      m = j;
      n = i;
      i1 = 0;
      if (i1 >= this.mItems.size())
        break label283;
      localItemInfo = (ViewPager.ItemInfo)this.mItems.get(i1);
      i4 = this.mAdapter.getItemPosition(localItemInfo.object);
      if (i4 == -1)
        break label373;
      if (i4 != -2)
        break label233;
      this.mItems.remove(i1);
      i10 = i1 - 1;
      if (k == 0)
      {
        this.mAdapter.startUpdate(this);
        k = 1;
      }
      this.mAdapter.destroyItem(this, localItemInfo.position, localItemInfo.object);
      if (this.mCurItem != localItemInfo.position)
        break label391;
      int i11 = Math.max(0, Math.min(this.mCurItem, -1 + this.mAdapter.getCount()));
      i5 = i10;
      i6 = k;
      i7 = i11;
      i8 = 1;
    }
    while (true)
    {
      int i9 = i5 + 1;
      n = i8;
      m = i7;
      k = i6;
      i1 = i9;
      break label53;
      i = 0;
      break;
      label233: if (localItemInfo.position != i4)
      {
        if (localItemInfo.position == this.mCurItem)
          m = i4;
        localItemInfo.position = i4;
        i5 = i1;
        i6 = k;
        i7 = m;
        i8 = 1;
        continue;
        if (k != 0)
          this.mAdapter.finishUpdate(this);
        Collections.sort(this.mItems, COMPARATOR);
        if (n != 0)
        {
          int i2 = getChildCount();
          for (int i3 = 0; i3 < i2; i3++)
          {
            ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)getChildAt(i3).getLayoutParams();
            if (localLayoutParams.isDecor)
              continue;
            localLayoutParams.widthFactor = 0.0F;
          }
          setCurrentItemInternal(m, false, true);
          requestLayout();
        }
        return;
      }
      label283: label373: i5 = i1;
      i6 = k;
      i7 = m;
      i8 = n;
      continue;
      label391: i5 = i10;
      i6 = k;
      i7 = m;
      i8 = 1;
    }
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((super.dispatchKeyEvent(paramKeyEvent)) || (executeKeyEvent(paramKeyEvent)));
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    int i = 0;
    int j = getChildCount();
    for (int k = 0; ; k++)
    {
      if (k < j)
      {
        View localView = getChildAt(k);
        if (localView.getVisibility() != 0)
          continue;
        ViewPager.ItemInfo localItemInfo = infoForChild(localView);
        if ((localItemInfo == null) || (localItemInfo.position != this.mCurItem) || (!localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent)))
          continue;
        i = 1;
      }
      return i;
    }
  }

  float distanceInfluenceForSnapDuration(float paramFloat)
  {
    return (float)Math.sin((float)(0.47123891676382D * (paramFloat - 0.5F)));
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    boolean bool = false;
    int i = ViewCompat.getOverScrollMode(this);
    if ((i == 0) || ((i == 1) && (this.mAdapter != null) && (this.mAdapter.getCount() > 1)))
    {
      if (!this.mLeftEdge.isFinished())
      {
        int n = paramCanvas.save();
        int i1 = getHeight() - getPaddingTop() - getPaddingBottom();
        int i2 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i1 + getPaddingTop(), this.mFirstOffset * i2);
        this.mLeftEdge.setSize(i1, i2);
        bool = false | this.mLeftEdge.draw(paramCanvas);
        paramCanvas.restoreToCount(n);
      }
      if (!this.mRightEdge.isFinished())
      {
        int j = paramCanvas.save();
        int k = getWidth();
        int m = getHeight() - getPaddingTop() - getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(1.0F + this.mLastOffset) * k);
        this.mRightEdge.setSize(m, k);
        bool |= this.mRightEdge.draw(paramCanvas);
        paramCanvas.restoreToCount(j);
      }
    }
    while (true)
    {
      if (bool)
        ViewCompat.postInvalidateOnAnimation(this);
      return;
      this.mLeftEdge.finish();
      this.mRightEdge.finish();
    }
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.mMarginDrawable;
    if ((localDrawable != null) && (localDrawable.isStateful()))
      localDrawable.setState(getDrawableState());
  }

  public void endFakeDrag()
  {
    if (!this.mFakeDragging)
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    VelocityTracker localVelocityTracker = this.mVelocityTracker;
    localVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
    int i = (int)VelocityTrackerCompat.getXVelocity(localVelocityTracker, this.mActivePointerId);
    this.mPopulatePending = true;
    int j = getWidth();
    int k = getScrollX();
    ViewPager.ItemInfo localItemInfo = infoForCurrentScrollPosition();
    setCurrentItemInternal(determineTargetPage(localItemInfo.position, (k / j - localItemInfo.offset) / localItemInfo.widthFactor, i, (int)(this.mLastMotionX - this.mInitialMotionX)), true, true, i);
    endDrag();
    this.mFakeDragging = false;
  }

  public boolean executeKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramKeyEvent.getAction() == 0)
      switch (paramKeyEvent.getKeyCode())
      {
      default:
      case 21:
      case 22:
      case 61:
      }
    while (true)
    {
      return bool;
      bool = arrowScroll(17);
      continue;
      bool = arrowScroll(66);
      continue;
      if (Build.VERSION.SDK_INT < 11)
        continue;
      if (KeyEventCompat.hasNoModifiers(paramKeyEvent))
      {
        bool = arrowScroll(2);
        continue;
      }
      if (!KeyEventCompat.hasModifiers(paramKeyEvent, 1))
        continue;
      bool = arrowScroll(1);
    }
  }

  public void fakeDragBy(float paramFloat)
  {
    if (!this.mFakeDragging)
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    this.mLastMotionX = (paramFloat + this.mLastMotionX);
    float f1 = getScrollX() - paramFloat;
    int i = getWidth();
    float f2 = i * this.mFirstOffset;
    float f3 = i * this.mLastOffset;
    ViewPager.ItemInfo localItemInfo1 = (ViewPager.ItemInfo)this.mItems.get(0);
    ViewPager.ItemInfo localItemInfo2 = (ViewPager.ItemInfo)this.mItems.get(-1 + this.mItems.size());
    float f4;
    if (localItemInfo1.position != 0)
      f4 = localItemInfo1.offset * i;
    while (true)
    {
      float f5;
      if (localItemInfo2.position != -1 + this.mAdapter.getCount())
        f5 = localItemInfo2.offset * i;
      while (true)
      {
        if (f1 < f4);
        while (true)
        {
          this.mLastMotionX += f4 - (int)f4;
          scrollTo((int)f4, getScrollY());
          pageScrolled((int)f4);
          long l = SystemClock.uptimeMillis();
          MotionEvent localMotionEvent = MotionEvent.obtain(this.mFakeDragBeginTime, l, 2, this.mLastMotionX, 0.0F, 0);
          this.mVelocityTracker.addMovement(localMotionEvent);
          localMotionEvent.recycle();
          return;
          if (f1 > f5)
          {
            f4 = f5;
            continue;
          }
          f4 = f1;
        }
        f5 = f3;
      }
      f4 = f2;
    }
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewPager.LayoutParams();
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewPager.LayoutParams(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }

  public PagerAdapter getAdapter()
  {
    return this.mAdapter;
  }

  public int getCurrentItem()
  {
    return this.mCurItem;
  }

  public int getOffscreenPageLimit()
  {
    return this.mOffscreenPageLimit;
  }

  public int getPageMargin()
  {
    return this.mPageMargin;
  }

  ViewPager.ItemInfo infoForAnyChild(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if (localViewParent != this)
      if ((localViewParent != null) && ((localViewParent instanceof View)));
    for (ViewPager.ItemInfo localItemInfo = null; ; localItemInfo = infoForChild(paramView))
    {
      return localItemInfo;
      paramView = (View)localViewParent;
      break;
    }
  }

  ViewPager.ItemInfo infoForChild(View paramView)
  {
    int i = 0;
    ViewPager.ItemInfo localItemInfo;
    if (i < this.mItems.size())
    {
      localItemInfo = (ViewPager.ItemInfo)this.mItems.get(i);
      if (!this.mAdapter.isViewFromObject(paramView, localItemInfo.object));
    }
    while (true)
    {
      return localItemInfo;
      i++;
      break;
      localItemInfo = null;
    }
  }

  ViewPager.ItemInfo infoForPosition(int paramInt)
  {
    int i = 0;
    ViewPager.ItemInfo localItemInfo;
    if (i < this.mItems.size())
    {
      localItemInfo = (ViewPager.ItemInfo)this.mItems.get(i);
      if (localItemInfo.position != paramInt);
    }
    while (true)
    {
      return localItemInfo;
      i++;
      break;
      localItemInfo = null;
    }
  }

  void initViewPager()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.mScroller = new Scroller(localContext, sInterpolator);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
    this.mMinimumVelocity = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.mMaximumVelocity = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.mLeftEdge = new EdgeEffectCompat(localContext);
    this.mRightEdge = new EdgeEffectCompat(localContext);
    float f = localContext.getResources().getDisplayMetrics().density;
    this.mFlingDistance = (int)(25.0F * f);
    this.mCloseEnough = (int)(2.0F * f);
    this.mDefaultGutterSize = (int)(f * 16.0F);
    ViewCompat.setAccessibilityDelegate(this, new ViewPager.MyAccessibilityDelegate(this));
    if (ViewCompat.getImportantForAccessibility(this) == 0)
      ViewCompat.setImportantForAccessibility(this, 1);
  }

  public boolean isFakeDragging()
  {
    return this.mFakeDragging;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.mFirstLayout = true;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.mPageMargin > 0) && (this.mMarginDrawable != null) && (this.mItems.size() > 0) && (this.mAdapter != null))
    {
      int i = getScrollX();
      int j = getWidth();
      float f1 = this.mPageMargin / j;
      ViewPager.ItemInfo localItemInfo = (ViewPager.ItemInfo)this.mItems.get(0);
      float f2 = localItemInfo.offset;
      int k = this.mItems.size();
      int m = localItemInfo.position;
      int n = ((ViewPager.ItemInfo)this.mItems.get(k - 1)).position;
      int i1 = 0;
      int i2 = m;
      if (i2 < n)
      {
        while ((i2 > localItemInfo.position) && (i1 < k))
        {
          ArrayList localArrayList = this.mItems;
          i1++;
          localItemInfo = (ViewPager.ItemInfo)localArrayList.get(i1);
        }
        float f4;
        if (i2 == localItemInfo.position)
        {
          f4 = (localItemInfo.offset + localItemInfo.widthFactor) * j;
          f2 = f1 + (localItemInfo.offset + localItemInfo.widthFactor);
        }
        while (true)
        {
          if (f4 + this.mPageMargin > i)
          {
            this.mMarginDrawable.setBounds((int)f4, this.mTopPageBounds, (int)(0.5F + (f4 + this.mPageMargin)), this.mBottomPageBounds);
            this.mMarginDrawable.draw(paramCanvas);
          }
          if (f4 > i + j)
            return;
          i2++;
          break;
          float f3 = this.mAdapter.getPageWidth(i2);
          f4 = (f2 + f3) * j;
          f2 += f3 + f1;
        }
      }
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    int i = 0xFF & paramMotionEvent.getAction();
    if ((i == 3) || (i == 1))
    {
      this.mIsBeingDragged = false;
      this.mIsUnableToDrag = false;
      this.mActivePointerId = -1;
      if (this.mVelocityTracker != null)
      {
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
      }
    }
    do
      while (true)
      {
        return bool;
        if (i == 0)
          break label81;
        if (!this.mIsBeingDragged)
          break;
        bool = true;
      }
    while (this.mIsUnableToDrag);
    label81: switch (i)
    {
    default:
    case 2:
    case 0:
    case 6:
    }
    while (true)
    {
      if (this.mVelocityTracker == null)
        this.mVelocityTracker = VelocityTracker.obtain();
      this.mVelocityTracker.addMovement(paramMotionEvent);
      bool = this.mIsBeingDragged;
      break;
      int j = this.mActivePointerId;
      if (j == -1)
        continue;
      int k = MotionEventCompat.findPointerIndex(paramMotionEvent, j);
      float f2 = MotionEventCompat.getX(paramMotionEvent, k);
      float f3 = f2 - this.mLastMotionX;
      float f4 = Math.abs(f3);
      float f5 = MotionEventCompat.getY(paramMotionEvent, k);
      float f6 = Math.abs(f5 - this.mLastMotionY);
      if ((f3 != 0.0F) && (!isGutterDrag(this.mLastMotionX, f3)) && (canScroll(this, false, (int)f3, (int)f2, (int)f5)))
      {
        this.mLastMotionX = f2;
        this.mInitialMotionX = f2;
        this.mLastMotionY = f5;
        this.mIsUnableToDrag = true;
        break;
      }
      float f7;
      if ((f4 > this.mTouchSlop) && (f4 > f6))
      {
        this.mIsBeingDragged = true;
        setScrollState(1);
        if (f3 > 0.0F)
        {
          f7 = this.mInitialMotionX + this.mTouchSlop;
          label323: this.mLastMotionX = f7;
          setScrollingCacheEnabled(true);
        }
      }
      while ((this.mIsBeingDragged) && (performDrag(f2)))
      {
        ViewCompat.postInvalidateOnAnimation(this);
        break;
        f7 = this.mInitialMotionX - this.mTouchSlop;
        break label323;
        if (f6 <= this.mTouchSlop)
          continue;
        this.mIsUnableToDrag = true;
      }
      float f1 = paramMotionEvent.getX();
      this.mInitialMotionX = f1;
      this.mLastMotionX = f1;
      this.mLastMotionY = paramMotionEvent.getY();
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      this.mIsUnableToDrag = false;
      this.mScroller.computeScrollOffset();
      if ((this.mScrollState == 2) && (Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) > this.mCloseEnough))
      {
        this.mScroller.abortAnimation();
        this.mPopulatePending = false;
        populate();
        this.mIsBeingDragged = true;
        setScrollState(1);
        continue;
      }
      completeScroll();
      this.mIsBeingDragged = false;
      continue;
      onSecondaryPointerUp(paramMotionEvent);
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mInLayout = true;
    populate();
    this.mInLayout = false;
    int i = getChildCount();
    int j = paramInt3 - paramInt1;
    int k = paramInt4 - paramInt2;
    int m = getPaddingLeft();
    int n = getPaddingTop();
    int i1 = getPaddingRight();
    int i2 = getPaddingBottom();
    int i3 = getScrollX();
    int i4 = 0;
    int i5 = 0;
    View localView2;
    int i15;
    label172: int i16;
    int i18;
    int i19;
    label224: int i8;
    int i9;
    int i10;
    if (i5 < i)
    {
      localView2 = getChildAt(i5);
      if (localView2.getVisibility() == 8)
        break label653;
      ViewPager.LayoutParams localLayoutParams2 = (ViewPager.LayoutParams)localView2.getLayoutParams();
      if (!localLayoutParams2.isDecor)
        break label653;
      int i12 = 0x7 & localLayoutParams2.gravity;
      int i13 = 0x70 & localLayoutParams2.gravity;
      switch (i12)
      {
      case 2:
      case 4:
      default:
        i15 = m;
        switch (i13)
        {
        default:
          i16 = n;
          int i24 = i2;
          i18 = n;
          i19 = i24;
          int i20 = i15 + i3;
          localView2.layout(i20, i16, i20 + localView2.getMeasuredWidth(), i16 + localView2.getMeasuredHeight());
          i8 = i4 + 1;
          i9 = i18;
          i2 = i19;
          i10 = i1;
        case 48:
        case 16:
        case 80:
        }
      case 3:
      case 1:
      case 5:
      }
    }
    for (int i11 = m; ; i11 = m)
    {
      i5++;
      m = i11;
      i1 = i10;
      n = i9;
      i4 = i8;
      break;
      int i25 = m + localView2.getMeasuredWidth();
      i15 = m;
      m = i25;
      break label172;
      i15 = Math.max((j - localView2.getMeasuredWidth()) / 2, m);
      break label172;
      int i14 = j - i1 - localView2.getMeasuredWidth();
      i1 += localView2.getMeasuredWidth();
      i15 = i14;
      break label172;
      int i22 = n + localView2.getMeasuredHeight();
      int i23 = n;
      i19 = i2;
      i18 = i22;
      i16 = i23;
      break label224;
      i16 = Math.max((k - localView2.getMeasuredHeight()) / 2, n);
      int i21 = i2;
      i18 = n;
      i19 = i21;
      break label224;
      i16 = k - i2 - localView2.getMeasuredHeight();
      int i17 = i2 + localView2.getMeasuredHeight();
      i18 = n;
      i19 = i17;
      break label224;
      for (int i6 = 0; i6 < i; i6++)
      {
        View localView1 = getChildAt(i6);
        if (localView1.getVisibility() == 8)
          continue;
        ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localView1.getLayoutParams();
        if (localLayoutParams1.isDecor)
          continue;
        ViewPager.ItemInfo localItemInfo = infoForChild(localView1);
        if (localItemInfo == null)
          continue;
        int i7 = m + (int)(j * localItemInfo.offset);
        if (localLayoutParams1.needsMeasure)
        {
          localLayoutParams1.needsMeasure = false;
          localView1.measure(View.MeasureSpec.makeMeasureSpec((int)((j - m - i1) * localLayoutParams1.widthFactor), 1073741824), View.MeasureSpec.makeMeasureSpec(k - n - i2, 1073741824));
        }
        localView1.layout(i7, n, i7 + localView1.getMeasuredWidth(), n + localView1.getMeasuredHeight());
      }
      this.mTopPageBounds = n;
      this.mBottomPageBounds = (k - i2);
      this.mDecorChildCount = i4;
      this.mFirstLayout = false;
      return;
      label653: i8 = i4;
      i9 = n;
      i10 = i1;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    int i = getMeasuredWidth();
    this.mGutterSize = Math.min(i / 10, this.mDefaultGutterSize);
    int j = i - getPaddingLeft() - getPaddingRight();
    int k = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int m = getChildCount();
    int n = 0;
    View localView2;
    ViewPager.LayoutParams localLayoutParams2;
    int i5;
    int i6;
    int i7;
    label167: int i8;
    label182: label192: int i9;
    int i10;
    if (n < m)
    {
      localView2 = getChildAt(n);
      if (localView2.getVisibility() != 8)
      {
        localLayoutParams2 = (ViewPager.LayoutParams)localView2.getLayoutParams();
        if ((localLayoutParams2 != null) && (localLayoutParams2.isDecor))
        {
          int i3 = 0x7 & localLayoutParams2.gravity;
          int i4 = 0x70 & localLayoutParams2.gravity;
          i5 = -2147483648;
          i6 = -2147483648;
          if ((i4 != 48) && (i4 != 80))
            break label296;
          i7 = 1;
          if ((i3 != 3) && (i3 != 5))
            break label302;
          i8 = 1;
          if (i7 == 0)
            break label308;
          i5 = 1073741824;
          if (localLayoutParams2.width == -2)
            break label480;
          i9 = 1073741824;
          if (localLayoutParams2.width == -1)
            break label473;
          i10 = localLayoutParams2.width;
        }
      }
    }
    while (true)
    {
      if (localLayoutParams2.height != -2)
      {
        i6 = 1073741824;
        if (localLayoutParams2.height == -1);
      }
      for (int i11 = localLayoutParams2.height; ; i11 = k)
      {
        localView2.measure(View.MeasureSpec.makeMeasureSpec(i10, i9), View.MeasureSpec.makeMeasureSpec(i11, i6));
        if (i7 != 0)
          k -= localView2.getMeasuredHeight();
        while (true)
        {
          n++;
          break;
          label296: i7 = 0;
          break label167;
          label302: i8 = 0;
          break label182;
          label308: if (i8 == 0)
            break label192;
          i6 = 1073741824;
          break label192;
          if (i8 == 0)
            continue;
          j -= localView2.getMeasuredWidth();
        }
        this.mChildWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
        this.mChildHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
        this.mInLayout = true;
        populate();
        this.mInLayout = false;
        int i1 = getChildCount();
        for (int i2 = 0; i2 < i1; i2++)
        {
          View localView1 = getChildAt(i2);
          if (localView1.getVisibility() == 8)
            continue;
          ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localView1.getLayoutParams();
          if ((localLayoutParams1 != null) && (localLayoutParams1.isDecor))
            continue;
          localView1.measure(View.MeasureSpec.makeMeasureSpec((int)(j * localLayoutParams1.widthFactor), 1073741824), this.mChildHeightMeasureSpec);
        }
        return;
      }
      label473: i10 = j;
      continue;
      label480: i9 = i5;
      i10 = j;
    }
  }

  protected void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    int j;
    int k;
    int m;
    int i1;
    View localView;
    int i6;
    int i3;
    int i4;
    if (this.mDecorChildCount > 0)
    {
      int i = getScrollX();
      j = getPaddingLeft();
      k = getPaddingRight();
      m = getWidth();
      int n = getChildCount();
      i1 = 0;
      if (i1 < n)
      {
        localView = getChildAt(i1);
        ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)localView.getLayoutParams();
        if (!localLayoutParams.isDecor)
          break label314;
        switch (0x7 & localLayoutParams.gravity)
        {
        case 2:
        case 4:
        default:
          i6 = j;
          int i12 = k;
          i3 = j;
          i4 = i12;
          label132: int i8 = i6 + i - localView.getLeft();
          if (i8 == 0)
            break;
          localView.offsetLeftAndRight(i8);
        case 3:
        case 1:
        case 5:
        }
      }
    }
    while (true)
    {
      i1++;
      int i5 = i4;
      j = i3;
      k = i5;
      break;
      int i10 = j + localView.getWidth();
      int i11 = j;
      i4 = k;
      i3 = i10;
      i6 = i11;
      break label132;
      i6 = Math.max((m - localView.getMeasuredWidth()) / 2, j);
      int i9 = k;
      i3 = j;
      i4 = i9;
      break label132;
      i6 = m - k - localView.getMeasuredWidth();
      int i7 = k + localView.getMeasuredWidth();
      i3 = j;
      i4 = i7;
      break label132;
      if (this.mOnPageChangeListener != null)
        this.mOnPageChangeListener.onPageScrolled(paramInt1, paramFloat, paramInt2);
      if (this.mInternalPageChangeListener != null)
        this.mInternalPageChangeListener.onPageScrolled(paramInt1, paramFloat, paramInt2);
      this.mCalledSuper = true;
      return;
      label314: int i2 = k;
      i3 = j;
      i4 = i2;
    }
  }

  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i = 1;
    int j = -1;
    int k = getChildCount();
    int m;
    if ((paramInt & 0x2) != 0)
    {
      j = i;
      m = 0;
      if (m == k)
        break label107;
      View localView = getChildAt(m);
      if (localView.getVisibility() != 0)
        break label97;
      ViewPager.ItemInfo localItemInfo = infoForChild(localView);
      if ((localItemInfo == null) || (localItemInfo.position != this.mCurItem) || (!localView.requestFocus(paramInt, paramRect)))
        break label97;
    }
    while (true)
    {
      return i;
      m = k - 1;
      k = j;
      break;
      label97: m += j;
      break;
      label107: i = 0;
    }
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ViewPager.SavedState))
      super.onRestoreInstanceState(paramParcelable);
    while (true)
    {
      return;
      ViewPager.SavedState localSavedState = (ViewPager.SavedState)paramParcelable;
      super.onRestoreInstanceState(localSavedState.getSuperState());
      if (this.mAdapter != null)
      {
        this.mAdapter.restoreState(localSavedState.adapterState, localSavedState.loader);
        setCurrentItemInternal(localSavedState.position, false, true);
        continue;
      }
      this.mRestoredCurItem = localSavedState.position;
      this.mRestoredAdapterState = localSavedState.adapterState;
      this.mRestoredClassLoader = localSavedState.loader;
    }
  }

  public Parcelable onSaveInstanceState()
  {
    ViewPager.SavedState localSavedState = new ViewPager.SavedState(super.onSaveInstanceState());
    localSavedState.position = this.mCurItem;
    if (this.mAdapter != null)
      localSavedState.adapterState = this.mAdapter.saveState();
    return localSavedState;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
      recomputeScrollPosition(paramInt1, paramInt3, this.mPageMargin, this.mPageMargin);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    int i;
    if (this.mFakeDragging)
      i = 1;
    while (true)
    {
      return i;
      if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0))
      {
        i = 0;
        continue;
      }
      if ((this.mAdapter != null) && (this.mAdapter.getCount() != 0))
        break;
      i = 0;
    }
    if (this.mVelocityTracker == null)
      this.mVelocityTracker = VelocityTracker.obtain();
    this.mVelocityTracker.addMovement(paramMotionEvent);
    switch (0xFF & paramMotionEvent.getAction())
    {
    case 4:
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    case 5:
    case 6:
    }
    while (true)
    {
      if (bool)
        ViewCompat.postInvalidateOnAnimation(this);
      i = 1;
      break;
      this.mScroller.abortAnimation();
      this.mPopulatePending = false;
      populate();
      this.mIsBeingDragged = true;
      setScrollState(1);
      float f5 = paramMotionEvent.getX();
      this.mInitialMotionX = f5;
      this.mLastMotionX = f5;
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      continue;
      float f4;
      if (!this.mIsBeingDragged)
      {
        int i1 = MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId);
        float f1 = MotionEventCompat.getX(paramMotionEvent, i1);
        float f2 = Math.abs(f1 - this.mLastMotionX);
        float f3 = Math.abs(MotionEventCompat.getY(paramMotionEvent, i1) - this.mLastMotionY);
        if ((f2 > this.mTouchSlop) && (f2 > f3))
        {
          this.mIsBeingDragged = true;
          if (f1 - this.mInitialMotionX <= 0.0F)
            break label343;
          f4 = this.mInitialMotionX + this.mTouchSlop;
        }
      }
      while (true)
      {
        this.mLastMotionX = f4;
        setScrollState(1);
        setScrollingCacheEnabled(true);
        if (!this.mIsBeingDragged)
          break;
        bool = false | performDrag(MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId)));
        break;
        label343: f4 = this.mInitialMotionX - this.mTouchSlop;
      }
      if (!this.mIsBeingDragged)
        continue;
      VelocityTracker localVelocityTracker = this.mVelocityTracker;
      localVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
      int k = (int)VelocityTrackerCompat.getXVelocity(localVelocityTracker, this.mActivePointerId);
      this.mPopulatePending = true;
      int m = getWidth();
      int n = getScrollX();
      ViewPager.ItemInfo localItemInfo = infoForCurrentScrollPosition();
      setCurrentItemInternal(determineTargetPage(localItemInfo.position, (n / m - localItemInfo.offset) / localItemInfo.widthFactor, k, (int)(MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId)) - this.mInitialMotionX)), true, true, k);
      this.mActivePointerId = -1;
      endDrag();
      bool = this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
      continue;
      if (!this.mIsBeingDragged)
        continue;
      setCurrentItemInternal(this.mCurItem, true, true);
      this.mActivePointerId = -1;
      endDrag();
      bool = this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
      continue;
      int j = MotionEventCompat.getActionIndex(paramMotionEvent);
      this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, j);
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, j);
      continue;
      onSecondaryPointerUp(paramMotionEvent);
      this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId));
    }
  }

  boolean pageLeft()
  {
    boolean bool = true;
    if (this.mCurItem > 0)
      setCurrentItem(-1 + this.mCurItem, bool);
    while (true)
    {
      return bool;
      bool = false;
    }
  }

  boolean pageRight()
  {
    boolean bool = true;
    if ((this.mAdapter != null) && (this.mCurItem < -1 + this.mAdapter.getCount()))
      setCurrentItem(1 + this.mCurItem, bool);
    while (true)
    {
      return bool;
      bool = false;
    }
  }

  void populate()
  {
    populate(this.mCurItem);
  }

  void populate(int paramInt)
  {
    ViewPager.ItemInfo localItemInfo12;
    if (this.mCurItem != paramInt)
    {
      localItemInfo12 = infoForPosition(this.mCurItem);
      this.mCurItem = paramInt;
    }
    for (ViewPager.ItemInfo localItemInfo1 = localItemInfo12; ; localItemInfo1 = null)
    {
      if (this.mAdapter == null)
        label33: return;
      int j;
      int k;
      int m;
      int n;
      ViewPager.ItemInfo localItemInfo2;
      if ((!this.mPopulatePending) && (getWindowToken() != null))
      {
        this.mAdapter.startUpdate(this);
        int i = this.mOffscreenPageLimit;
        j = Math.max(0, this.mCurItem - i);
        k = this.mAdapter.getCount();
        m = Math.min(k - 1, i + this.mCurItem);
        n = 0;
        if (n >= this.mItems.size())
          break label1054;
        localItemInfo2 = (ViewPager.ItemInfo)this.mItems.get(n);
        if (localItemInfo2.position >= this.mCurItem)
          if (localItemInfo2.position != this.mCurItem)
            break label1054;
      }
      while (true)
      {
        if ((localItemInfo2 == null) && (k > 0));
        for (ViewPager.ItemInfo localItemInfo3 = addNewItem(this.mCurItem, n); ; localItemInfo3 = localItemInfo2)
        {
          label202: int i8;
          label235: float f3;
          label346: label352: int i10;
          label457: Object localObject2;
          label503: int i11;
          label511: ViewPager.ItemInfo localItemInfo11;
          label606: Object localObject3;
          float f5;
          if (localItemInfo3 != null)
          {
            int i5 = n - 1;
            ViewPager.ItemInfo localItemInfo7;
            float f2;
            int i7;
            int i9;
            if (i5 >= 0)
            {
              localItemInfo7 = (ViewPager.ItemInfo)this.mItems.get(i5);
              float f1 = 2.0F - localItemInfo3.widthFactor;
              int i6 = -1 + this.mCurItem;
              f2 = 0.0F;
              i7 = i6;
              i8 = n;
              i9 = i5;
              if (i7 < 0)
                break label457;
              if ((f2 < f1) || (i7 >= j))
                break label352;
              if (localItemInfo7 == null)
                break label457;
              if ((i7 == localItemInfo7.position) && (!localItemInfo7.scrolling))
              {
                this.mItems.remove(i9);
                this.mAdapter.destroyItem(this, i7, localItemInfo7.object);
                i9--;
                i8--;
                if (i9 < 0)
                  break label346;
                localItemInfo7 = (ViewPager.ItemInfo)this.mItems.get(i9);
              }
            }
            while (true)
            {
              i7--;
              break label235;
              n++;
              break;
              localItemInfo7 = null;
              break label202;
              localItemInfo7 = null;
              continue;
              if ((localItemInfo7 != null) && (i7 == localItemInfo7.position))
              {
                f2 += localItemInfo7.widthFactor;
                i9--;
                if (i9 >= 0)
                {
                  localItemInfo7 = (ViewPager.ItemInfo)this.mItems.get(i9);
                  continue;
                }
                localItemInfo7 = null;
                continue;
              }
              f2 += addNewItem(i7, i9 + 1).widthFactor;
              i8++;
              if (i9 >= 0)
              {
                localItemInfo7 = (ViewPager.ItemInfo)this.mItems.get(i9);
                continue;
              }
              localItemInfo7 = null;
            }
            f3 = localItemInfo3.widthFactor;
            i10 = i8 + 1;
            if (f3 < 2.0F)
              if (i10 < this.mItems.size())
              {
                localObject2 = (ViewPager.ItemInfo)this.mItems.get(i10);
                i11 = 1 + this.mCurItem;
                if (i11 >= k)
                  break label785;
                if ((f3 < 2.0F) || (i11 <= m))
                  break label648;
                if (localObject2 == null)
                  break label785;
                if ((i11 != ((ViewPager.ItemInfo)localObject2).position) || (((ViewPager.ItemInfo)localObject2).scrolling))
                  break label1032;
                this.mItems.remove(i10);
                this.mAdapter.destroyItem(this, i11, ((ViewPager.ItemInfo)localObject2).object);
                if (i10 >= this.mItems.size())
                  break label642;
                localItemInfo11 = (ViewPager.ItemInfo)this.mItems.get(i10);
                float f9 = f3;
                localObject3 = localItemInfo11;
                f5 = f9;
              }
          }
          while (true)
          {
            i11++;
            float f6 = f5;
            localObject2 = localObject3;
            f3 = f6;
            break label511;
            localObject2 = null;
            break label503;
            label642: localItemInfo11 = null;
            break label606;
            label648: if ((localObject2 != null) && (i11 == ((ViewPager.ItemInfo)localObject2).position))
            {
              float f7 = f3 + ((ViewPager.ItemInfo)localObject2).widthFactor;
              i10++;
              if (i10 < this.mItems.size());
              for (ViewPager.ItemInfo localItemInfo10 = (ViewPager.ItemInfo)this.mItems.get(i10); ; localItemInfo10 = null)
              {
                localObject3 = localItemInfo10;
                f5 = f7;
                break;
              }
            }
            ViewPager.ItemInfo localItemInfo8 = addNewItem(i11, i10);
            i10++;
            float f4 = f3 + localItemInfo8.widthFactor;
            if (i10 < this.mItems.size());
            for (ViewPager.ItemInfo localItemInfo9 = (ViewPager.ItemInfo)this.mItems.get(i10); ; localItemInfo9 = null)
            {
              localObject3 = localItemInfo9;
              f5 = f4;
              break;
            }
            label785: calculatePageOffsets(localItemInfo3, i8, localItemInfo1);
            PagerAdapter localPagerAdapter = this.mAdapter;
            int i1 = this.mCurItem;
            if (localItemInfo3 != null);
            for (Object localObject1 = localItemInfo3.object; ; localObject1 = null)
            {
              localPagerAdapter.setPrimaryItem(this, i1, localObject1);
              this.mAdapter.finishUpdate(this);
              int i2 = getChildCount();
              for (int i3 = 0; i3 < i2; i3++)
              {
                View localView3 = getChildAt(i3);
                ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)localView3.getLayoutParams();
                if ((localLayoutParams.isDecor) || (localLayoutParams.widthFactor != 0.0F))
                  continue;
                ViewPager.ItemInfo localItemInfo6 = infoForChild(localView3);
                if (localItemInfo6 == null)
                  continue;
                localLayoutParams.widthFactor = localItemInfo6.widthFactor;
              }
            }
            if (!hasFocus())
              break;
            View localView1 = findFocus();
            if (localView1 != null);
            for (ViewPager.ItemInfo localItemInfo4 = infoForAnyChild(localView1); ; localItemInfo4 = null)
            {
              if ((localItemInfo4 != null) && (localItemInfo4.position == this.mCurItem))
                break label1030;
              for (int i4 = 0; ; i4++)
              {
                if (i4 >= getChildCount())
                  break label1024;
                View localView2 = getChildAt(i4);
                ViewPager.ItemInfo localItemInfo5 = infoForChild(localView2);
                if ((localItemInfo5 != null) && (localItemInfo5.position == this.mCurItem) && (localView2.requestFocus(2)))
                  break;
              }
              label1024: break label33;
            }
            label1030: break label33;
            break label33;
            label1032: float f8 = f3;
            localObject3 = localObject2;
            f5 = f8;
          }
        }
        label1054: localItemInfo2 = null;
      }
    }
  }

  public void setAdapter(PagerAdapter paramPagerAdapter)
  {
    if (this.mAdapter != null)
    {
      this.mAdapter.unregisterDataSetObserver(this.mObserver);
      this.mAdapter.startUpdate(this);
      for (int i = 0; i < this.mItems.size(); i++)
      {
        ViewPager.ItemInfo localItemInfo = (ViewPager.ItemInfo)this.mItems.get(i);
        this.mAdapter.destroyItem(this, localItemInfo.position, localItemInfo.object);
      }
      this.mAdapter.finishUpdate(this);
      this.mItems.clear();
      removeNonDecorViews();
      this.mCurItem = 0;
      scrollTo(0, 0);
    }
    PagerAdapter localPagerAdapter = this.mAdapter;
    this.mAdapter = paramPagerAdapter;
    if (this.mAdapter != null)
    {
      if (this.mObserver == null)
        this.mObserver = new ViewPager.PagerObserver(this, null);
      this.mAdapter.registerDataSetObserver(this.mObserver);
      this.mPopulatePending = false;
      this.mFirstLayout = true;
      if (this.mRestoredCurItem < 0)
        break label236;
      this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
      setCurrentItemInternal(this.mRestoredCurItem, false, true);
      this.mRestoredCurItem = -1;
      this.mRestoredAdapterState = null;
      this.mRestoredClassLoader = null;
    }
    while (true)
    {
      if ((this.mAdapterChangeListener != null) && (localPagerAdapter != paramPagerAdapter))
        this.mAdapterChangeListener.onAdapterChanged(localPagerAdapter, paramPagerAdapter);
      return;
      label236: populate();
    }
  }

  public void setCurrentItem(int paramInt)
  {
    this.mPopulatePending = false;
    if (!this.mFirstLayout);
    for (boolean bool = true; ; bool = false)
    {
      setCurrentItemInternal(paramInt, bool, false);
      return;
    }
  }

  public void setCurrentItem(int paramInt, boolean paramBoolean)
  {
    this.mPopulatePending = false;
    setCurrentItemInternal(paramInt, paramBoolean, false);
  }

  void setCurrentItemInternal(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    setCurrentItemInternal(paramInt, paramBoolean1, paramBoolean2, 0);
  }

  void setCurrentItemInternal(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    if ((this.mAdapter == null) || (this.mAdapter.getCount() <= 0))
      setScrollingCacheEnabled(false);
    while (true)
    {
      return;
      if ((paramBoolean2) || (this.mCurItem != paramInt1) || (this.mItems.size() == 0))
        break;
      setScrollingCacheEnabled(false);
    }
    if (paramInt1 < 0)
      paramInt1 = 0;
    while (true)
    {
      int i = this.mOffscreenPageLimit;
      if ((paramInt1 <= i + this.mCurItem) && (paramInt1 >= this.mCurItem - i))
        break;
      for (int j = 0; j < this.mItems.size(); j++)
        ((ViewPager.ItemInfo)this.mItems.get(j)).scrolling = true;
      if (paramInt1 < this.mAdapter.getCount())
        continue;
      paramInt1 = -1 + this.mAdapter.getCount();
    }
    int k;
    label160: ViewPager.ItemInfo localItemInfo;
    if (this.mCurItem != paramInt1)
    {
      k = 1;
      populate(paramInt1);
      localItemInfo = infoForPosition(paramInt1);
      if (localItemInfo == null)
        break label329;
    }
    label329: for (int m = (int)(getWidth() * Math.max(this.mFirstOffset, Math.min(localItemInfo.offset, this.mLastOffset))); ; m = 0)
    {
      if (paramBoolean1)
      {
        smoothScrollTo(m, 0, paramInt2);
        if ((k != 0) && (this.mOnPageChangeListener != null))
          this.mOnPageChangeListener.onPageSelected(paramInt1);
        if ((k == 0) || (this.mInternalPageChangeListener == null))
          break;
        this.mInternalPageChangeListener.onPageSelected(paramInt1);
        break;
        k = 0;
        break label160;
      }
      if ((k != 0) && (this.mOnPageChangeListener != null))
        this.mOnPageChangeListener.onPageSelected(paramInt1);
      if ((k != 0) && (this.mInternalPageChangeListener != null))
        this.mInternalPageChangeListener.onPageSelected(paramInt1);
      completeScroll();
      scrollTo(m, 0);
      break;
    }
  }

  ViewPager.OnPageChangeListener setInternalPageChangeListener(ViewPager.OnPageChangeListener paramOnPageChangeListener)
  {
    ViewPager.OnPageChangeListener localOnPageChangeListener = this.mInternalPageChangeListener;
    this.mInternalPageChangeListener = paramOnPageChangeListener;
    return localOnPageChangeListener;
  }

  public void setOffscreenPageLimit(int paramInt)
  {
    if (paramInt <= 0)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to 1");
      paramInt = 1;
    }
    if (paramInt != this.mOffscreenPageLimit)
    {
      this.mOffscreenPageLimit = paramInt;
      populate();
    }
  }

  void setOnAdapterChangeListener(ViewPager.OnAdapterChangeListener paramOnAdapterChangeListener)
  {
    this.mAdapterChangeListener = paramOnAdapterChangeListener;
  }

  public void setOnPageChangeListener(ViewPager.OnPageChangeListener paramOnPageChangeListener)
  {
    this.mOnPageChangeListener = paramOnPageChangeListener;
  }

  public void setPageMargin(int paramInt)
  {
    int i = this.mPageMargin;
    this.mPageMargin = paramInt;
    int j = getWidth();
    recomputeScrollPosition(j, j, paramInt, i);
    requestLayout();
  }

  public void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(getContext().getResources().getDrawable(paramInt));
  }

  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    this.mMarginDrawable = paramDrawable;
    if (paramDrawable != null)
      refreshDrawableState();
    if (paramDrawable == null);
    for (boolean bool = true; ; bool = false)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
    }
  }

  void smoothScrollTo(int paramInt1, int paramInt2)
  {
    smoothScrollTo(paramInt1, paramInt2, 0);
  }

  void smoothScrollTo(int paramInt1, int paramInt2, int paramInt3)
  {
    if (getChildCount() == 0)
      setScrollingCacheEnabled(false);
    int i;
    int j;
    int k;
    int m;
    while (true)
    {
      return;
      i = getScrollX();
      j = getScrollY();
      k = paramInt1 - i;
      m = paramInt2 - j;
      if ((k != 0) || (m != 0))
        break;
      completeScroll();
      populate();
      setScrollState(0);
    }
    setScrollingCacheEnabled(true);
    setScrollState(2);
    int n = getWidth();
    int i1 = n / 2;
    float f1 = Math.min(1.0F, 1.0F * Math.abs(k) / n);
    float f2 = i1 + i1 * distanceInfluenceForSnapDuration(f1);
    int i2 = Math.abs(paramInt3);
    if (i2 > 0);
    float f3;
    for (int i3 = 4 * Math.round(1000.0F * Math.abs(f2 / i2)); ; i3 = (int)(100.0F * (1.0F + Math.abs(k) / (f3 + this.mPageMargin))))
    {
      int i4 = Math.min(i3, 600);
      this.mScroller.startScroll(i, j, k, m, i4);
      ViewCompat.postInvalidateOnAnimation(this);
      break;
      f3 = n * this.mAdapter.getPageWidth(this.mCurItem);
    }
  }

  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    if ((super.verifyDrawable(paramDrawable)) || (paramDrawable == this.mMarginDrawable));
    for (int i = 1; ; i = 0)
      return i;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager
 * JD-Core Version:    0.6.0
 */