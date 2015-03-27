package com.google.tagmanager.a;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

public final class ab
{
  public static final byte[] a;
  public static final ByteBuffer b;

  static
  {
    byte[] arrayOfByte = new byte[0];
    a = arrayOfByte;
    b = ByteBuffer.wrap(arrayOfByte);
  }

  public static int a(long paramLong)
  {
    return (int)(paramLong ^ paramLong >>> 32);
  }

  public static int a(ac paramac)
  {
    return paramac.a();
  }

  public static int a(List paramList)
  {
    Iterator localIterator = paramList.iterator();
    ac localac;
    for (int i = 1; localIterator.hasNext(); i = i * 31 + localac.a())
      localac = (ac)localIterator.next();
    return i;
  }

  public static int a(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1231; ; i = 1237)
      return i;
  }

  public static boolean a(byte[] paramArrayOfByte)
  {
    return bg.a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static String b(byte[] paramArrayOfByte)
  {
    try
    {
      String str = new String(paramArrayOfByte, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new RuntimeException("UTF-8 not supported?", localUnsupportedEncodingException);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.ab
 * JD-Core Version:    0.6.0
 */