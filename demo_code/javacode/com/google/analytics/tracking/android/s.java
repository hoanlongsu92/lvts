package com.google.analytics.tracking.android;

import android.content.Context;
import java.util.ArrayList;

public final class s
  implements Thread.UncaughtExceptionHandler
{
  private final Thread.UncaughtExceptionHandler a;
  private final be b;
  private final ba c;
  private r d;

  public s(be parambe, ba paramba, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, Context paramContext)
  {
    if (parambe == null)
      throw new NullPointerException("tracker cannot be null");
    if (paramba == null)
      throw new NullPointerException("serviceManager cannot be null");
    this.a = paramUncaughtExceptionHandler;
    this.b = parambe;
    this.c = paramba;
    this.d = new bd(paramContext, new ArrayList());
    StringBuilder localStringBuilder = new StringBuilder("ExceptionReporter created, original handler is ");
    if (paramUncaughtExceptionHandler == null);
    for (String str = "null"; ; str = paramUncaughtExceptionHandler.getClass().getName())
    {
      aq.c(str);
      return;
    }
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    String str1 = null;
    String str2 = "UncaughtException";
    String str3;
    be localbe;
    Boolean localBoolean;
    at localat;
    if (this.d != null)
    {
      if (paramThread != null)
      {
        str3 = paramThread.getName();
        str2 = this.d.a(str3, paramThrowable);
      }
    }
    else
    {
      aq.c("Tracking Exception: " + str2);
      localbe = this.b;
      localBoolean = Boolean.valueOf(true);
      al.a().a(am.H);
      localat = new at();
      localat.a("&t", "exception");
      localat.a("&exd", str2);
      if (localBoolean != null)
        break label168;
    }
    while (true)
    {
      localat.a("&exf", str1);
      localbe.a(localat.a());
      this.c.c();
      if (this.a != null)
      {
        aq.c("Passing exception to original handler.");
        this.a.uncaughtException(paramThread, paramThrowable);
      }
      return;
      str3 = null;
      break;
      label168: if (localBoolean.booleanValue())
      {
        str1 = "1";
        continue;
      }
      str1 = "0";
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.s
 * JD-Core Version:    0.6.0
 */