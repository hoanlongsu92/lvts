package com.google.tagmanager.a;

final class o
{
  private final Object a;
  private final int b;

  o(Object paramObject, int paramInt)
  {
    this.a = paramObject;
    this.b = paramInt;
  }

  public final boolean equals(Object paramObject)
  {
    int i = 0;
    if (!(paramObject instanceof o));
    while (true)
    {
      return i;
      o localo = (o)paramObject;
      if ((this.a != localo.a) || (this.b != localo.b))
        continue;
      i = 1;
    }
  }

  public final int hashCode()
  {
    return 65535 * System.identityHashCode(this.a) + this.b;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.o
 * JD-Core Version:    0.6.0
 */