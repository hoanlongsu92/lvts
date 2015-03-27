package com.google.analytics.tracking.android;

final class k extends Thread
{
  k(j paramj, String paramString)
  {
    super(paramString);
  }

  public final void run()
  {
    synchronized (j.a(this.a))
    {
      j.a(this.a, this.a.b());
      j.b(this.a);
      j.a(this.a).notifyAll();
      return;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.k
 * JD-Core Version:    0.6.0
 */