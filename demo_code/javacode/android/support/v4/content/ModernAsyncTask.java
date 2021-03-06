package android.support.v4.content;

import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

abstract class ModernAsyncTask
{
  private static final int CORE_POOL_SIZE = 5;
  private static final int KEEP_ALIVE = 1;
  private static final String LOG_TAG = "AsyncTask";
  private static final int MAXIMUM_POOL_SIZE = 128;
  private static final int MESSAGE_POST_PROGRESS = 2;
  private static final int MESSAGE_POST_RESULT = 1;
  public static final Executor THREAD_POOL_EXECUTOR;
  private static volatile Executor sDefaultExecutor;
  private static final ModernAsyncTask.InternalHandler sHandler;
  private static final BlockingQueue sPoolWorkQueue;
  private static final ThreadFactory sThreadFactory = new ModernAsyncTask.1();
  private final FutureTask mFuture = new ModernAsyncTask.3(this, this.mWorker);
  private volatile ModernAsyncTask.Status mStatus = ModernAsyncTask.Status.PENDING;
  private final AtomicBoolean mTaskInvoked = new AtomicBoolean();
  private final ModernAsyncTask.WorkerRunnable mWorker = new ModernAsyncTask.2(this);

  static
  {
    sPoolWorkQueue = new LinkedBlockingQueue(10);
    THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, sPoolWorkQueue, sThreadFactory);
    sHandler = new ModernAsyncTask.InternalHandler(null);
    sDefaultExecutor = THREAD_POOL_EXECUTOR;
  }

  public static void execute(Runnable paramRunnable)
  {
    sDefaultExecutor.execute(paramRunnable);
  }

  private void finish(Object paramObject)
  {
    if (isCancelled())
      onCancelled(paramObject);
    while (true)
    {
      this.mStatus = ModernAsyncTask.Status.FINISHED;
      return;
      onPostExecute(paramObject);
    }
  }

  public static void init()
  {
    sHandler.getLooper();
  }

  private Object postResult(Object paramObject)
  {
    ModernAsyncTask.InternalHandler localInternalHandler = sHandler;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramObject;
    localInternalHandler.obtainMessage(1, new ModernAsyncTask.AsyncTaskResult(this, arrayOfObject)).sendToTarget();
    return paramObject;
  }

  private void postResultIfNotInvoked(Object paramObject)
  {
    if (!this.mTaskInvoked.get())
      postResult(paramObject);
  }

  public static void setDefaultExecutor(Executor paramExecutor)
  {
    sDefaultExecutor = paramExecutor;
  }

  public final boolean cancel(boolean paramBoolean)
  {
    return this.mFuture.cancel(paramBoolean);
  }

  protected abstract Object doInBackground(Object[] paramArrayOfObject);

  public final ModernAsyncTask execute(Object[] paramArrayOfObject)
  {
    return executeOnExecutor(sDefaultExecutor, paramArrayOfObject);
  }

  public final ModernAsyncTask executeOnExecutor(Executor paramExecutor, Object[] paramArrayOfObject)
  {
    if (this.mStatus != ModernAsyncTask.Status.PENDING);
    switch (ModernAsyncTask.4.$SwitchMap$android$support$v4$content$ModernAsyncTask$Status[this.mStatus.ordinal()])
    {
    default:
      this.mStatus = ModernAsyncTask.Status.RUNNING;
      onPreExecute();
      this.mWorker.mParams = paramArrayOfObject;
      paramExecutor.execute(this.mFuture);
      return this;
    case 1:
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    case 2:
    }
    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
  }

  public final Object get()
  {
    return this.mFuture.get();
  }

  public final Object get(long paramLong, TimeUnit paramTimeUnit)
  {
    return this.mFuture.get(paramLong, paramTimeUnit);
  }

  public final ModernAsyncTask.Status getStatus()
  {
    return this.mStatus;
  }

  public final boolean isCancelled()
  {
    return this.mFuture.isCancelled();
  }

  protected void onCancelled()
  {
  }

  protected void onCancelled(Object paramObject)
  {
    onCancelled();
  }

  protected void onPostExecute(Object paramObject)
  {
  }

  protected void onPreExecute()
  {
  }

  protected void onProgressUpdate(Object[] paramArrayOfObject)
  {
  }

  protected final void publishProgress(Object[] paramArrayOfObject)
  {
    if (!isCancelled())
      sHandler.obtainMessage(2, new ModernAsyncTask.AsyncTaskResult(this, paramArrayOfObject)).sendToTarget();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.content.ModernAsyncTask
 * JD-Core Version:    0.6.0
 */