package com.google.tagmanager.a;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class n
{
  private static volatile boolean a = false;
  private static final n c = new n(0);
  private final Map b;

  n()
  {
    this.b = new HashMap();
  }

  private n(byte paramByte)
  {
    this.b = Collections.emptyMap();
  }

  public static n a()
  {
    return c;
  }

  public final z a(ak paramak, int paramInt)
  {
    return (z)this.b.get(new o(paramak, paramInt));
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.n
 * JD-Core Version:    0.6.0
 */