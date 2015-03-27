package com.google.tagmanager.a;

import java.util.List;

public final class bc extends RuntimeException
{
  private final List a = null;

  public bc()
  {
    super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
  }

  public final ae a()
  {
    return new ae(getMessage());
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.bc
 * JD-Core Version:    0.6.0
 */