package android.support.v4.content;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class ModernAsyncTask$1
  implements ThreadFactory
{
  private final AtomicInteger mCount = new AtomicInteger(1);

  public final Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "ModernAsyncTask #" + this.mCount.getAndIncrement());
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.content.ModernAsyncTask.1
 * JD-Core Version:    0.6.0
 */