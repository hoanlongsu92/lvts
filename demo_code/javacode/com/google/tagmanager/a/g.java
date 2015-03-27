package com.google.tagmanager.a;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public abstract class g
  implements Iterable
{
  public static final g a;

  static
  {
    if (!g.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      b = bool;
      a = new ai(new byte[0]);
      return;
    }
  }

  public static g a(Iterable paramIterable)
  {
    Object localObject;
    if (!(paramIterable instanceof Collection))
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        localArrayList.add((g)localIterator.next());
      localObject = localArrayList;
      if (!((Collection)localObject).isEmpty())
        break label77;
    }
    label77: for (g localg = a; ; localg = a(((Collection)localObject).iterator(), ((Collection)localObject).size()))
    {
      return localg;
      localObject = (Collection)paramIterable;
      break;
    }
  }

  private static g a(Iterator paramIterator, int paramInt)
  {
    if ((!b) && (paramInt <= 0))
      throw new AssertionError();
    if (paramInt == 1);
    int i;
    for (g localg = (g)paramIterator.next(); ; localg = a(paramIterator, i).a(a(paramIterator, paramInt - i)))
    {
      return localg;
      i = paramInt >>> 1;
    }
  }

  public static g a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    return new ai(arrayOfByte);
  }

  public static i i()
  {
    return new i();
  }

  public abstract int a();

  protected abstract int a(int paramInt1, int paramInt2, int paramInt3);

  public final g a(g paramg)
  {
    int i = a();
    int j = paramg.a();
    if (i + j >= 2147483647L)
      throw new IllegalArgumentException("ByteString would be too long: " + i + "+" + j);
    return ap.a(this, paramg);
  }

  public abstract String a(String paramString);

  final void a(OutputStream paramOutputStream, int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IndexOutOfBoundsException("Source offset < 0: " + paramInt1);
    if (paramInt2 < 0)
      throw new IndexOutOfBoundsException("Length < 0: " + paramInt2);
    if (paramInt1 + paramInt2 > a())
      throw new IndexOutOfBoundsException("Source end offset exceeded: " + (paramInt1 + paramInt2));
    if (paramInt2 > 0)
      b(paramOutputStream, paramInt1, paramInt2);
  }

  protected abstract void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3);

  protected abstract int b(int paramInt1, int paramInt2, int paramInt3);

  abstract void b(OutputStream paramOutputStream, int paramInt1, int paramInt2);

  public final void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < 0)
      throw new IndexOutOfBoundsException("Source offset < 0: " + paramInt1);
    if (paramInt2 < 0)
      throw new IndexOutOfBoundsException("Target offset < 0: " + paramInt2);
    if (paramInt3 < 0)
      throw new IndexOutOfBoundsException("Length < 0: " + paramInt3);
    if (paramInt1 + paramInt3 > a())
      throw new IndexOutOfBoundsException("Source end offset < 0: " + (paramInt1 + paramInt3));
    if (paramInt2 + paramInt3 > paramArrayOfByte.length)
      throw new IndexOutOfBoundsException("Target end offset < 0: " + (paramInt2 + paramInt3));
    if (paramInt3 > 0)
      a(paramArrayOfByte, paramInt1, paramInt2, paramInt3);
  }

  public abstract h c();

  public final boolean d()
  {
    if (a() == 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  public final byte[] e()
  {
    int i = a();
    byte[] arrayOfByte;
    if (i == 0)
      arrayOfByte = ab.a;
    while (true)
    {
      return arrayOfByte;
      arrayOfByte = new byte[i];
      a(arrayOfByte, 0, 0, i);
    }
  }

  public final String f()
  {
    try
    {
      String str = a("UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new RuntimeException("UTF-8 not supported?", localUnsupportedEncodingException);
  }

  public abstract boolean g();

  public abstract j h();

  public abstract int hashCode();

  protected abstract int j();

  protected abstract boolean k();

  protected abstract int l();

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.toHexString(System.identityHashCode(this));
    arrayOfObject[1] = Integer.valueOf(a());
    return String.format("<ByteString@%s size=%d>", arrayOfObject);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.g
 * JD-Core Version:    0.6.0
 */