package com.google.tagmanager.a;

import java.io.IOException;

final class af
{
  private final ak a;
  private final n b;
  private g c;
  private volatile ak d;

  private void b()
  {
    if (this.d != null);
    while (true)
    {
      return;
      monitorenter;
      try
      {
        if (this.d != null)
        {
          monitorexit;
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      try
      {
        if (this.c != null)
          this.d = ((ak)this.a.b().a(this.c, this.b));
        label63: monitorexit;
      }
      catch (IOException localIOException)
      {
        break label63;
      }
    }
  }

  public final ak a()
  {
    b();
    return this.d;
  }

  public final boolean equals(Object paramObject)
  {
    b();
    return this.d.equals(paramObject);
  }

  public final int hashCode()
  {
    b();
    return this.d.hashCode();
  }

  public final String toString()
  {
    b();
    return this.d.toString();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.af
 * JD-Core Version:    0.6.0
 */