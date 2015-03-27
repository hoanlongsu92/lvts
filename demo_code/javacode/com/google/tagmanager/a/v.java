package com.google.tagmanager.a;

public abstract class v extends u
  implements x
{
  private p a = p.b();
  private boolean b;

  protected final void a(w paramw)
  {
    if (!this.b)
    {
      this.a = this.a.d();
      this.b = true;
    }
    this.a.a(w.a(paramw));
  }

  public v f()
  {
    throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
  }

  protected final boolean j()
  {
    return this.a.e();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.v
 * JD-Core Version:    0.6.0
 */