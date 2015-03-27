package android.support.v4.util;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class LruCache
{
  private int createCount;
  private int evictionCount;
  private int hitCount;
  private final LinkedHashMap map;
  private int maxSize;
  private int missCount;
  private int putCount;
  private int size;

  public LruCache(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("maxSize <= 0");
    this.maxSize = paramInt;
    this.map = new LinkedHashMap(0, 0.75F, true);
  }

  private int safeSizeOf(Object paramObject1, Object paramObject2)
  {
    int i = sizeOf(paramObject1, paramObject2);
    if (i < 0)
      throw new IllegalStateException("Negative size: " + paramObject1 + "=" + paramObject2);
    return i;
  }

  private void trimToSize(int paramInt)
  {
    while (true)
    {
      monitorenter;
      try
      {
        if ((this.size < 0) || ((this.map.isEmpty()) && (this.size != 0)))
          throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
      }
      finally
      {
        monitorexit;
      }
      if ((this.size <= paramInt) || (this.map.isEmpty()))
      {
        monitorexit;
        return;
      }
      Map.Entry localEntry = (Map.Entry)this.map.entrySet().iterator().next();
      Object localObject2 = localEntry.getKey();
      Object localObject3 = localEntry.getValue();
      this.map.remove(localObject2);
      this.size -= safeSizeOf(localObject2, localObject3);
      this.evictionCount = (1 + this.evictionCount);
      monitorexit;
      entryRemoved(true, localObject2, localObject3, null);
    }
  }

  protected Object create(Object paramObject)
  {
    return null;
  }

  public final int createCount()
  {
    monitorenter;
    try
    {
      int i = this.createCount;
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  protected void entryRemoved(boolean paramBoolean, Object paramObject1, Object paramObject2, Object paramObject3)
  {
  }

  public final void evictAll()
  {
    trimToSize(-1);
  }

  public final int evictionCount()
  {
    monitorenter;
    try
    {
      int i = this.evictionCount;
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final Object get(Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException("key == null");
    monitorenter;
    Object localObject3;
    try
    {
      localObject2 = this.map.get(paramObject);
      if (localObject2 != null)
      {
        this.hitCount = (1 + this.hitCount);
        monitorexit;
        break label170;
      }
      this.missCount = (1 + this.missCount);
      monitorexit;
      localObject3 = create(paramObject);
      if (localObject3 == null)
        localObject2 = null;
    }
    finally
    {
      monitorexit;
    }
    try
    {
      this.createCount = (1 + this.createCount);
      localObject2 = this.map.put(paramObject, localObject3);
      if (localObject2 != null)
        this.map.put(paramObject, localObject2);
      while (true)
      {
        monitorexit;
        if (localObject2 == null)
          break;
        entryRemoved(false, paramObject, localObject3, localObject2);
        break label170;
        this.size += safeSizeOf(paramObject, localObject3);
      }
    }
    finally
    {
      monitorexit;
    }
    trimToSize(this.maxSize);
    Object localObject2 = localObject3;
    label170: return localObject2;
  }

  public final int hitCount()
  {
    monitorenter;
    try
    {
      int i = this.hitCount;
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final int maxSize()
  {
    monitorenter;
    try
    {
      int i = this.maxSize;
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final int missCount()
  {
    monitorenter;
    try
    {
      int i = this.missCount;
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final Object put(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) || (paramObject2 == null))
      throw new NullPointerException("key == null || value == null");
    monitorenter;
    try
    {
      this.putCount = (1 + this.putCount);
      this.size += safeSizeOf(paramObject1, paramObject2);
      Object localObject2 = this.map.put(paramObject1, paramObject2);
      if (localObject2 != null)
        this.size -= safeSizeOf(paramObject1, localObject2);
      monitorexit;
      if (localObject2 != null)
        entryRemoved(false, paramObject1, localObject2, paramObject2);
      trimToSize(this.maxSize);
      return localObject2;
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public final int putCount()
  {
    monitorenter;
    try
    {
      int i = this.putCount;
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final Object remove(Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException("key == null");
    monitorenter;
    try
    {
      Object localObject2 = this.map.remove(paramObject);
      if (localObject2 != null)
        this.size -= safeSizeOf(paramObject, localObject2);
      monitorexit;
      if (localObject2 != null)
        entryRemoved(false, paramObject, localObject2, null);
      return localObject2;
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public final int size()
  {
    monitorenter;
    try
    {
      int i = this.size;
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  protected int sizeOf(Object paramObject1, Object paramObject2)
  {
    return 1;
  }

  public final Map snapshot()
  {
    monitorenter;
    try
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(this.map);
      monitorexit;
      return localLinkedHashMap;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final String toString()
  {
    int i = 0;
    monitorenter;
    try
    {
      int j = this.hitCount + this.missCount;
      if (j != 0)
        i = 100 * this.hitCount / j;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(this.maxSize);
      arrayOfObject[1] = Integer.valueOf(this.hitCount);
      arrayOfObject[2] = Integer.valueOf(this.missCount);
      arrayOfObject[3] = Integer.valueOf(i);
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", arrayOfObject);
      monitorexit;
      return str;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.util.LruCache
 * JD-Core Version:    0.6.0
 */