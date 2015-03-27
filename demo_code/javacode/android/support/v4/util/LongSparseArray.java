package android.support.v4.util;

import J;

public class LongSparseArray
  implements Cloneable
{
  private static final Object DELETED = new Object();
  private boolean mGarbage = false;
  private long[] mKeys;
  private int mSize;
  private Object[] mValues;

  public LongSparseArray()
  {
    this(10);
  }

  public LongSparseArray(int paramInt)
  {
    int i = idealLongArraySize(paramInt);
    this.mKeys = new long[i];
    this.mValues = new Object[i];
    this.mSize = 0;
  }

  private static int binarySearch(long[] paramArrayOfLong, int paramInt1, int paramInt2, long paramLong)
  {
    int i = paramInt1 + paramInt2;
    int j = paramInt1 - 1;
    int k = i;
    while (k - j > 1)
    {
      int m = (k + j) / 2;
      if (paramArrayOfLong[m] < paramLong)
      {
        j = m;
        continue;
      }
      k = m;
    }
    if (k == paramInt1 + paramInt2)
      k = 0xFFFFFFFF ^ paramInt1 + paramInt2;
    while (true)
    {
      return k;
      if (paramArrayOfLong[k] == paramLong)
        continue;
      k ^= -1;
    }
  }

  private void gc()
  {
    int i = this.mSize;
    long[] arrayOfLong = this.mKeys;
    Object[] arrayOfObject = this.mValues;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      Object localObject = arrayOfObject[j];
      if (localObject != DELETED)
      {
        if (j != k)
        {
          arrayOfLong[k] = arrayOfLong[j];
          arrayOfObject[k] = localObject;
          arrayOfObject[j] = null;
        }
        k++;
      }
      j++;
    }
    this.mGarbage = false;
    this.mSize = k;
  }

  public static int idealByteArraySize(int paramInt)
  {
    for (int i = 4; ; i++)
    {
      if (i < 32)
      {
        if (paramInt > -12 + (1 << i))
          continue;
        paramInt = -12 + (1 << i);
      }
      return paramInt;
    }
  }

  public static int idealLongArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt << 3) / 8;
  }

  public void append(long paramLong, Object paramObject)
  {
    if ((this.mSize != 0) && (paramLong <= this.mKeys[(-1 + this.mSize)]))
      put(paramLong, paramObject);
    while (true)
    {
      return;
      if ((this.mGarbage) && (this.mSize >= this.mKeys.length))
        gc();
      int i = this.mSize;
      if (i >= this.mKeys.length)
      {
        int j = idealLongArraySize(i + 1);
        long[] arrayOfLong = new long[j];
        Object[] arrayOfObject = new Object[j];
        System.arraycopy(this.mKeys, 0, arrayOfLong, 0, this.mKeys.length);
        System.arraycopy(this.mValues, 0, arrayOfObject, 0, this.mValues.length);
        this.mKeys = arrayOfLong;
        this.mValues = arrayOfObject;
      }
      this.mKeys[i] = paramLong;
      this.mValues[i] = paramObject;
      this.mSize = (i + 1);
    }
  }

  public void clear()
  {
    int i = this.mSize;
    Object[] arrayOfObject = this.mValues;
    for (int j = 0; j < i; j++)
      arrayOfObject[j] = null;
    this.mSize = 0;
    this.mGarbage = false;
  }

  public LongSparseArray clone()
  {
    try
    {
      localLongSparseArray = (LongSparseArray)super.clone();
    }
    catch (CloneNotSupportedException localCloneNotSupportedException1)
    {
      try
      {
        LongSparseArray localLongSparseArray;
        localLongSparseArray.mKeys = ((long[])this.mKeys.clone());
        localLongSparseArray.mValues = ((Object[])this.mValues.clone());
        while (true)
        {
          label36: return localLongSparseArray;
          localCloneNotSupportedException1 = localCloneNotSupportedException1;
          localLongSparseArray = null;
        }
      }
      catch (CloneNotSupportedException localCloneNotSupportedException2)
      {
        break label36;
      }
    }
  }

  public void delete(long paramLong)
  {
    int i = binarySearch(this.mKeys, 0, this.mSize, paramLong);
    if ((i >= 0) && (this.mValues[i] != DELETED))
    {
      this.mValues[i] = DELETED;
      this.mGarbage = true;
    }
  }

  public Object get(long paramLong)
  {
    return get(paramLong, null);
  }

  public Object get(long paramLong, Object paramObject)
  {
    int i = binarySearch(this.mKeys, 0, this.mSize, paramLong);
    if ((i < 0) || (this.mValues[i] == DELETED));
    while (true)
    {
      return paramObject;
      paramObject = this.mValues[i];
    }
  }

  public int indexOfKey(long paramLong)
  {
    if (this.mGarbage)
      gc();
    return binarySearch(this.mKeys, 0, this.mSize, paramLong);
  }

  public int indexOfValue(Object paramObject)
  {
    if (this.mGarbage)
      gc();
    int i = 0;
    if (i < this.mSize)
      if (this.mValues[i] != paramObject);
    while (true)
    {
      return i;
      i++;
      break;
      i = -1;
    }
  }

  public long keyAt(int paramInt)
  {
    if (this.mGarbage)
      gc();
    return this.mKeys[paramInt];
  }

  public void put(long paramLong, Object paramObject)
  {
    int i = binarySearch(this.mKeys, 0, this.mSize, paramLong);
    if (i >= 0)
      this.mValues[i] = paramObject;
    while (true)
    {
      return;
      int j = i ^ 0xFFFFFFFF;
      if ((j < this.mSize) && (this.mValues[j] == DELETED))
      {
        this.mKeys[j] = paramLong;
        this.mValues[j] = paramObject;
        continue;
      }
      if ((this.mGarbage) && (this.mSize >= this.mKeys.length))
      {
        gc();
        j = 0xFFFFFFFF ^ binarySearch(this.mKeys, 0, this.mSize, paramLong);
      }
      if (this.mSize >= this.mKeys.length)
      {
        int k = idealLongArraySize(1 + this.mSize);
        long[] arrayOfLong = new long[k];
        Object[] arrayOfObject = new Object[k];
        System.arraycopy(this.mKeys, 0, arrayOfLong, 0, this.mKeys.length);
        System.arraycopy(this.mValues, 0, arrayOfObject, 0, this.mValues.length);
        this.mKeys = arrayOfLong;
        this.mValues = arrayOfObject;
      }
      if (this.mSize - j != 0)
      {
        System.arraycopy(this.mKeys, j, this.mKeys, j + 1, this.mSize - j);
        System.arraycopy(this.mValues, j, this.mValues, j + 1, this.mSize - j);
      }
      this.mKeys[j] = paramLong;
      this.mValues[j] = paramObject;
      this.mSize = (1 + this.mSize);
    }
  }

  public void remove(long paramLong)
  {
    delete(paramLong);
  }

  public void removeAt(int paramInt)
  {
    if (this.mValues[paramInt] != DELETED)
    {
      this.mValues[paramInt] = DELETED;
      this.mGarbage = true;
    }
  }

  public void setValueAt(int paramInt, Object paramObject)
  {
    if (this.mGarbage)
      gc();
    this.mValues[paramInt] = paramObject;
  }

  public int size()
  {
    if (this.mGarbage)
      gc();
    return this.mSize;
  }

  public Object valueAt(int paramInt)
  {
    if (this.mGarbage)
      gc();
    return this.mValues[paramInt];
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.util.LongSparseArray
 * JD-Core Version:    0.6.0
 */