package com.google.analytics.tracking.android;

import android.content.Context;
import com.google.android.gms.analytics.internal.Command;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

final class ah extends Thread
  implements h
{
  private static ah g;
  private final LinkedBlockingQueue a = new LinkedBlockingQueue();
  private volatile boolean b = false;
  private volatile boolean c = false;
  private volatile List d;
  private volatile String e;
  private volatile String f;
  private volatile bb h;
  private final Context i;

  private ah(Context paramContext)
  {
    super("GAThread");
    if (paramContext != null);
    for (this.i = paramContext.getApplicationContext(); ; this.i = paramContext)
    {
      start();
      return;
    }
  }

  static ah a(Context paramContext)
  {
    if (g == null)
      g = new ah(paramContext);
    return g;
  }

  private static String a(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    PrintStream localPrintStream = new PrintStream(localByteArrayOutputStream);
    paramThrowable.printStackTrace(localPrintStream);
    localPrintStream.flush();
    return new String(localByteArrayOutputStream.toByteArray());
  }

  private void a(Runnable paramRunnable)
  {
    this.a.add(paramRunnable);
  }

  private static String b(Context paramContext)
  {
    Object localObject = null;
    try
    {
      FileInputStream localFileInputStream = paramContext.openFileInput("gaInstallData");
      arrayOfByte = new byte[8192];
      j = localFileInputStream.read(arrayOfByte, 0, 8192);
      if (localFileInputStream.available() > 0)
      {
        aq.a("Too much campaign data, ignoring it.");
        localFileInputStream.close();
        paramContext.deleteFile("gaInstallData");
      }
      else
      {
        localFileInputStream.close();
        paramContext.deleteFile("gaInstallData");
        if (j <= 0)
          aq.d("Campaign file is empty.");
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      byte[] arrayOfByte;
      int j;
      aq.b("No campaign data found.");
      break label146;
      String str = new String(arrayOfByte, 0, j);
      aq.b("Campaign found: " + str);
      localObject = str;
    }
    catch (IOException localIOException)
    {
      aq.a("Error reading campaign data.");
      paramContext.deleteFile("gaInstallData");
    }
    label146: return localObject;
  }

  public final void a()
  {
    a(new aj(this));
  }

  public final void a(Map paramMap)
  {
    HashMap localHashMap = new HashMap(paramMap);
    String str = (String)paramMap.get("&ht");
    if (str != null);
    try
    {
      Long.valueOf(str).longValue();
      if (str == null)
        localHashMap.put("&ht", Long.toString(System.currentTimeMillis()));
      a(new ai(this, localHashMap));
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        str = null;
    }
  }

  public final void b()
  {
    a(new ak(this));
  }

  public final LinkedBlockingQueue c()
  {
    return this.a;
  }

  public final Thread d()
  {
    return this;
  }

  public final void run()
  {
    try
    {
      Thread.sleep(5000L);
      if (this.h == null)
        this.h = new y(this.i, this);
      this.h.e();
      this.d = new ArrayList();
      this.d.add(new Command("appendVersion", "&_v".substring(1), "ma3.0.0"));
      this.d.add(new Command("appendQueueTime", "&qt".substring(1), null));
      this.d.add(new Command("appendCacheBuster", "&z".substring(1), null));
    }
    catch (InterruptedException localInterruptedException1)
    {
      try
      {
        this.f = j.a().a("&cid");
        this.e = b(this.i);
        while (!this.c)
        {
          try
          {
            Runnable localRunnable = (Runnable)this.a.take();
            if (this.b)
              continue;
            localRunnable.run();
          }
          catch (InterruptedException localInterruptedException2)
          {
            aq.b(localInterruptedException2.toString());
          }
          catch (Throwable localThrowable2)
          {
            aq.a("Error on GAThread: " + a(localThrowable2));
            aq.a("Google Analytics is shutting down.");
            this.b = true;
          }
          continue;
          localInterruptedException1 = localInterruptedException1;
          aq.d("sleep interrupted in GAThread initialize");
        }
      }
      catch (Throwable localThrowable1)
      {
        while (true)
        {
          aq.a("Error initializing the GAThread: " + a(localThrowable1));
          aq.a("Google Analytics will not start up.");
          this.b = true;
        }
      }
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ah
 * JD-Core Version:    0.6.0
 */