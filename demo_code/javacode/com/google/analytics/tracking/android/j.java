package com.google.analytics.tracking.android;

import android.content.Context;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

final class j
  implements n
{
  private static j a;
  private static final Object b = new Object();
  private final Context c;
  private String d;
  private boolean e = false;
  private final Object f = new Object();

  private j(Context paramContext)
  {
    this.c = paramContext;
    new k(this, "client_id_fetcher").start();
  }

  public static j a()
  {
    synchronized (b)
    {
      j localj = a;
      return localj;
    }
  }

  public static void a(Context paramContext)
  {
    synchronized (b)
    {
      if (a == null)
        a = new j(paramContext);
      return;
    }
  }

  private boolean b(String paramString)
  {
    int i = 0;
    try
    {
      aq.c("Storing clientId.");
      FileOutputStream localFileOutputStream = this.c.openFileOutput("gaClientId", 0);
      localFileOutputStream.write(paramString.getBytes());
      localFileOutputStream.close();
      i = 1;
      return i;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
        aq.a("Error creating clientId file.");
    }
    catch (IOException localIOException)
    {
      while (true)
        aq.a("Error writing to clientId file.");
    }
  }

  private String c()
  {
    if (!this.e);
    synchronized (this.f)
    {
      if (!this.e)
        aq.c("Waiting for clientId to load");
      try
      {
        do
          this.f.wait();
        while (!this.e);
        aq.c("Loaded clientId");
        return this.d;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          aq.a("Exception while waiting for clientId: " + localInterruptedException);
      }
    }
  }

  public final String a(String paramString)
  {
    if ("&cid".equals(paramString));
    for (String str = c(); ; str = null)
      return str;
  }

  final String b()
  {
    Object localObject = null;
    try
    {
      localFileInputStream = this.c.openFileInput("gaClientId");
      byte[] arrayOfByte = new byte[''];
      int i = localFileInputStream.read(arrayOfByte, 0, 128);
      if (localFileInputStream.available() > 0)
      {
        aq.a("clientId file seems corrupted, deleting it.");
        localFileInputStream.close();
        this.c.deleteFile("gaClientId");
      }
      while (true)
      {
        label61: if (localObject == null)
        {
          localObject = UUID.randomUUID().toString().toLowerCase();
          if (!b((String)localObject))
            localObject = "0";
        }
        return localObject;
        if (i > 0)
          break;
        aq.a("clientId file seems empty, deleting it.");
        localFileInputStream.close();
        this.c.deleteFile("gaClientId");
      }
      str = new String(arrayOfByte, 0, i);
    }
    catch (IOException localIOException1)
    {
      while (true)
        try
        {
          FileInputStream localFileInputStream;
          localFileInputStream.close();
          localObject = str;
          continue;
          localIOException1 = localIOException1;
          aq.a("Error reading clientId file, deleting it.");
          this.c.deleteFile("gaClientId");
        }
        catch (IOException localIOException2)
        {
          localObject = str;
          continue;
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          String str;
          localObject = str;
        }
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      break label61;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.j
 * JD-Core Version:    0.6.0
 */