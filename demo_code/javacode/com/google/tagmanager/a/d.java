package com.google.tagmanager.a;

import java.io.IOException;

public abstract class d
  implements ao
{
  private static final n a = n.a();

  private ak b(g paramg, n paramn)
  {
    try
    {
      j localj = paramg.h();
      ak localak = (ak)a(localj, paramn);
      try
      {
        localj.a(0);
        return localak;
      }
      catch (ae localae2)
      {
        throw localae2.a(localak);
      }
    }
    catch (ae localae1)
    {
      throw localae1;
    }
    catch (IOException localIOException)
    {
    }
    throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", localIOException);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.d
 * JD-Core Version:    0.6.0
 */