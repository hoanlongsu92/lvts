package com.antispycell.connmonitor;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.TextView;

public class ConnectionMonitor extends ViewGroup
  implements ViewPager.OnPageChangeListener
{
  protected final String a = "ConnectionMonitor";
  private v b;
  private int c = -1;
  private int d = 2;
  private int e = 3;
  private int f = -13388315;
  private int g = -7039852;
  private int[] h;
  private int[] i;
  private int[] j;
  private int[] k;
  private Paint l;
  private int m = -1;

  public ConnectionMonitor(Context paramContext)
  {
    this(paramContext, null);
  }

  public ConnectionMonitor(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ConnectionMonitor(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setHorizontalFadingEdgeEnabled(true);
    setFadingEdgeLength((int)(0.5F + 35.0F * getResources().getDisplayMetrics().density));
    setWillNotDraw(false);
    this.l = new Paint();
    this.l.setColor(this.f);
  }

  private static int a(int paramInt1, int paramInt2, float paramFloat)
  {
    float f1 = Color.alpha(paramInt1) / 255.0F;
    float f2 = Color.red(paramInt1) / 255.0F;
    float f3 = Color.green(paramInt1) / 255.0F;
    float f4 = Color.blue(paramInt1) / 255.0F;
    float f5 = Color.alpha(paramInt2) / 255.0F;
    float f6 = Color.red(paramInt2) / 255.0F;
    float f7 = Color.green(paramInt2) / 255.0F;
    float f8 = Color.blue(paramInt2) / 255.0F;
    float f9 = f5 - f1;
    float f10 = f6 - f2;
    float f11 = f7 - f3;
    float f12 = f8 - f4;
    float f13 = f1 + f9 * paramFloat;
    float f14 = f2 + f10 * paramFloat;
    float f15 = f3 + f11 * paramFloat;
    float f16 = f4 + f12 * paramFloat;
    float f17 = Math.max(Math.min(f13, 1.0F), 0.0F);
    float f18 = Math.max(Math.min(f14, 1.0F), 0.0F);
    float f19 = Math.max(Math.min(f15, 1.0F), 0.0F);
    float f20 = Math.max(Math.min(f16, 1.0F), 0.0F);
    return Color.argb((int)(f17 * 255.0F), (int)(f18 * 255.0F), (int)(f19 * 255.0F), (int)(f20 * 255.0F));
  }

  private void a(int paramInt, int[] paramArrayOfInt)
  {
    if (this.b == null);
    while (true)
    {
      return;
      int n = this.b.getCount();
      if ((paramInt >= 0) && (paramInt < n))
      {
        int i2 = getMeasuredWidth();
        View localView = getChildAt(paramInt);
        paramArrayOfInt[paramInt] = (i2 / 2 - localView.getMeasuredWidth() / 2);
        int i3 = paramInt - 1;
        int i4;
        if (i3 < 0)
        {
          i4 = paramInt + 1;
          label70: if (i4 < n)
          {
            TextView localTextView2 = (TextView)getChildAt(i4);
            if (i4 != paramInt + 1)
              break label231;
            paramArrayOfInt[i4] = (i2 - localTextView2.getMeasuredWidth() + localTextView2.getPaddingRight());
          }
        }
        while (true)
        {
          TextView localTextView3 = (TextView)getChildAt(i4 - 1);
          paramArrayOfInt[i4] = Math.max(paramArrayOfInt[i4], paramArrayOfInt[(i4 - 1)] + localTextView3.getMeasuredWidth());
          i4++;
          break label70;
          break;
          TextView localTextView1 = (TextView)getChildAt(i3);
          if (i3 == paramInt - 1)
            paramArrayOfInt[i3] = (0 - localTextView1.getPaddingLeft());
          while (true)
          {
            paramArrayOfInt[i3] = Math.min(paramArrayOfInt[i3], paramArrayOfInt[(i3 + 1)] - localTextView1.getMeasuredWidth());
            i3--;
            break;
            paramArrayOfInt[i3] = (0 - localTextView1.getMeasuredWidth() - i2);
          }
          label231: paramArrayOfInt[i4] = (i2 << 1);
        }
      }
      for (int i1 = 0; i1 < paramArrayOfInt.length; i1++)
        paramArrayOfInt[i1] = -1;
    }
  }

  private void a(boolean paramBoolean)
  {
    if (this.b == null);
    int i3;
    while (true)
    {
      return;
      a(this.c, this.h);
      a(1 + this.c, this.i);
      a(-1 + this.c, this.j);
      if (this.b != null)
      {
        int i2 = this.b.getCount();
        i3 = 0;
        if (i3 < i2)
          break;
      }
      if (!paramBoolean)
        continue;
      int n = this.b.getCount();
      for (int i1 = 0; i1 < n; i1++)
        this.k[i1] = this.h[i1];
    }
    TextView localTextView = (TextView)getChildAt(i3);
    if (i3 < this.c)
    {
      localTextView.setEllipsize(null);
      localTextView.setGravity(21);
    }
    while (true)
    {
      i3++;
      break;
      if (i3 == this.c)
      {
        localTextView.setEllipsize(TextUtils.TruncateAt.END);
        localTextView.setGravity(19);
        continue;
      }
      if (i3 <= this.c)
        continue;
      localTextView.setEllipsize(null);
      localTextView.setGravity(19);
    }
  }

  public final void a(v paramv)
  {
    this.b = paramv;
    this.c = -1;
    this.h = null;
    this.i = null;
    this.j = null;
    this.k = null;
    removeAllViews();
    int n;
    if (this.b != null)
      n = this.b.getCount();
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= n)
      {
        this.c = 0;
        this.h = new int[n];
        this.i = new int[n];
        this.j = new int[n];
        this.k = new int[n];
        this.m = -1;
        requestLayout();
        return;
      }
      addView(this.b.a(i1, this));
    }
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    float f1;
    int i5;
    if (this.c != -1)
    {
      int n = getHeight() - getPaddingBottom() - this.d - this.e;
      View localView = getChildAt(this.c);
      int i1 = this.k[this.c] + localView.getMeasuredWidth() - localView.getMeasuredWidth() / 2;
      int i2 = getWidth() / 2;
      int i3 = i2 / 3;
      f1 = 1.0F - Math.min(Math.abs((i1 - i2) / i3), 1.0F);
      this.l.setAlpha((int)(255.0F * f1));
      paramCanvas.drawRect(this.k[this.c], n, this.k[this.c] + localView.getMeasuredWidth(), n + this.e, this.l);
      int i4 = this.b.getCount();
      i5 = 0;
      if (i5 < i4);
    }
    else
    {
      super.dispatchDraw(paramCanvas);
      return;
    }
    TextView localTextView = (TextView)getChildAt(i5);
    if (this.c == i5)
      if (i5 == 3)
      {
        localTextView.setTextColor(a(-6697984, -6697984, 1.0F - f1));
        this.l.setColor(-6697984);
      }
    while (true)
    {
      i5++;
      break;
      localTextView.setTextColor(a(this.f, this.g, 1.0F - f1));
      this.l.setColor(this.f);
      continue;
      localTextView.setTextColor(this.g);
    }
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int n = getHeight() - getPaddingBottom() - this.d;
    this.l.setAlpha(255);
    paramCanvas.drawRect(0.0F, n, getWidth(), n + this.d, this.l);
  }

  protected float getLeftFadingEdgeStrength()
  {
    return 1.0F;
  }

  protected float getRightFadingEdgeStrength()
  {
    return 1.0F;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.b == null);
    while (true)
    {
      return;
      int n = this.b.getCount();
      for (int i1 = 0; i1 < n; i1++)
      {
        View localView = getChildAt(i1);
        localView.layout(this.k[i1], getPaddingTop(), this.k[i1] + localView.getMeasuredWidth(), getPaddingTop() + localView.getMeasuredHeight());
      }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int n = 0;
    int i1 = View.MeasureSpec.getSize(paramInt1);
    int i2;
    int i3;
    if (this.b != null)
    {
      i2 = (int)(0.6D * View.MeasureSpec.getSize(paramInt1));
      i3 = this.b.getCount();
    }
    for (int i4 = 0; ; i4++)
    {
      if (i4 >= i3)
      {
        View localView = getChildAt(0);
        if (localView != null)
          n = localView.getMeasuredHeight();
        setMeasuredDimension(resolveSize(i1 + getPaddingLeft() + getPaddingRight(), paramInt1), resolveSize(n + this.d + getPaddingTop() + getPaddingBottom(), paramInt2));
        if (this.m != i1)
        {
          this.m = i1;
          a(true);
        }
        return;
      }
      ViewGroup.LayoutParams localLayoutParams = getChildAt(i4).getLayoutParams();
      int i5 = View.MeasureSpec.makeMeasureSpec(i2, -2147483648);
      int i6 = View.MeasureSpec.makeMeasureSpec(localLayoutParams.height, 1073741824);
      getChildAt(i4).measure(i5, i6);
    }
  }

  public void onPageScrollStateChanged(int paramInt)
  {
  }

  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.b == null)
      return;
    int n = this.b.getCount();
    int i1;
    if ((paramInt2 != 0) && (this.c == paramInt1))
      i1 = -1;
    while (true)
    {
      int i2 = 0;
      float f1;
      float f2;
      if (i2 >= n)
      {
        requestLayout();
        invalidate();
        break;
        if ((paramInt2 != 0) && (this.c != paramInt1))
        {
          i1 = 1;
          paramFloat = 1.0F - paramFloat;
          continue;
        }
      }
      else
      {
        f1 = this.h[i2];
        if (i1 < 0)
          f2 = this.i[i2];
        while (true)
        {
          int i3 = (int)(f1 + (int)(0.5F + paramFloat * (f2 - f1)));
          this.k[i2] = i3;
          i2++;
          break;
          if (i1 > 0)
          {
            f2 = this.j[i2];
            continue;
          }
          f2 = this.h[i2];
        }
      }
      paramFloat = 0.0F;
      i1 = 0;
    }
  }

  public void onPageSelected(int paramInt)
  {
    this.c = paramInt;
    a(false);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.ConnectionMonitor
 * JD-Core Version:    0.6.0
 */