package android.support.v4.util;

public class SparseArrayCompat
{
  private static final Object DELETED = new Object();
  private boolean mGarbage = false;
  private int[] mKeys;
  private int mSize;
  private Object[] mValues;

  public SparseArrayCompat()
  {
    this(10);
  }

  public SparseArrayCompat(int paramInt)
  {
    int i = idealIntArraySize(paramInt);
    this.mKeys = new int[i];
    this.mValues = new Object[i];
    this.mSize = 0;
  }

  private static int binarySearch(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt1 + paramInt2;
    int j = paramInt1 - 1;
    int k = i;
    while (k - j > 1)
    {
      int m = (k + j) / 2;
      if (paramArrayOfInt[m] < paramInt3)
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
      if (paramArrayOfInt[k] == paramInt3)
        continue;
      k ^= -1;
    }
  }

  private void gc()
  {
    int i = this.mSize;
    int[] arrayOfInt = this.mKeys;
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
          arrayOfInt[k] = arrayOfInt[j];
          arrayOfObject[k] = localObject;
        }
        k++;
      }
      j++;
    }
    this.mGarbage = false;
    this.mSize = k;
  }

  static int idealByteArraySize(int paramInt)
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

  static int idealIntArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt << 2) / 4;
  }

  public void append(int paramInt, Object paramObject)
  {
    if ((this.mSize != 0) && (paramInt <= this.mKeys[(-1 + this.mSize)]))
      put(paramInt, paramObject);
    while (true)
    {
      return;
      if ((this.mGarbage) && (this.mSize >= this.mKeys.length))
        gc();
      int i = this.mSize;
      if (i >= this.mKeys.length)
      {
        int j = idealIntArraySize(i + 1);
        int[] arrayOfInt = new int[j];
        Object[] arrayOfObject = new Object[j];
        System.arraycopy(this.mKeys, 0, arrayOfInt, 0, this.mKeys.length);
        System.arraycopy(this.mValues, 0, arrayOfObject, 0, this.mValues.length);
        this.mKeys = arrayOfInt;
        this.mValues = arrayOfObject;
      }
      this.mKeys[i] = paramInt;
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

  public void delete(int paramInt)
  {
    int i = binarySearch(this.mKeys, 0, this.mSize, paramInt);
    if ((i >= 0) && (this.mValues[i] != DELETED))
    {
      this.mValues[i] = DELETED;
      this.mGarbage = true;
    }
  }

  public Object get(int paramInt)
  {
    return get(paramInt, null);
  }

  public Object get(int paramInt, Object paramObject)
  {
    int i = binarySearch(this.mKeys, 0, this.mSize, paramInt);
    if ((i < 0) || (this.mValues[i] == DELETED));
    while (true)
    {
      return paramObject;
      paramObject = this.mValues[i];
    }
  }

  public int indexOfKey(int paramInt)
  {
    if (this.mGarbage)
      gc();
    return binarySearch(this.mKeys, 0, this.mSize, paramInt);
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

  public int keyAt(int paramInt)
  {
    if (this.mGarbage)
      gc();
    return this.mKeys[paramInt];
  }

  public void put(int paramInt, Object paramObject)
  {
    int i = binarySearch(this.mKeys, 0, this.mSize, paramInt);
    if (i >= 0)
      this.mValues[i] = paramObject;
    while (true)
    {
      return;
      int j = i ^ 0xFFFFFFFF;
      if ((j < this.mSize) && (this.mValues[j] == DELETED))
      {
        this.mKeys[j] = paramInt;
        this.mValues[j] = paramObject;
        continue;
      }
      if ((this.mGarbage) && (this.mSize >= this.mKeys.length))
      {
        gc();
        j = 0xFFFFFFFF ^ binarySearch(this.mKeys, 0, this.mSize, paramInt);
      }
      if (this.mSize >= this.mKeys.length)
      {
        int k = idealIntArraySize(1 + this.mSize);
        int[] arrayOfInt = new int[k];
        Object[] arrayOfObject = new Object[k];
        System.arraycopy(this.mKeys, 0, arrayOfInt, 0, this.mKeys.length);
        System.arraycopy(this.mValues, 0, arrayOfObject, 0, this.mValues.length);
        this.mKeys = arrayOfInt;
        this.mValues = arrayOfObject;
      }
      if (this.mSize - j != 0)
      {
        System.arraycopy(this.mKeys, j, this.mKeys, j + 1, this.mSize - j);
        System.arraycopy(this.mValues, j, this.mValues, j + 1, this.mSize - j);
      }
      this.mKeys[j] = paramInt;
      this.mValues[j] = paramObject;
      this.mSize = (1 + this.mSize);
    }
  }

  public void remove(int paramInt)
  {
    delete(paramInt);
  }

  public void removeAt(int paramInt)
  {
    if (this.mValues[paramInt] != DELETED)
    {
      this.mValues[paramInt] = DELETED;
      this.mGarbage = true;
    }
  }

  public void removeAtRange(int paramInt1, int paramInt2)
  {
    int i = Math.min(this.mSize, paramInt1 + paramInt2);
    while (paramInt1 < i)
    {
      removeAt(paramInt1);
      paramInt1++;
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
 * Qualified Name:     android.support.v4.util.SparseArrayCompat
 * JD-Core Version:    0.6.0
 */