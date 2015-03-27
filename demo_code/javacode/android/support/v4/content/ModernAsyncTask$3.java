package android.support.v4.content;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

class ModernAsyncTask$3 extends FutureTask
{
  protected void done()
  {
    try
    {
      Object localObject = get();
      ModernAsyncTask.access$400(this.this$0, localObject);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        Log.w("AsyncTask", localInterruptedException);
    }
    catch (ExecutionException localExecutionException)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localExecutionException.getCause());
    }
    catch (CancellationException localCancellationException)
    {
      while (true)
        ModernAsyncTask.access$400(this.this$0, null);
    }
    catch (Throwable localThrowable)
    {
    }
    throw new RuntimeException("An error occured while executing doInBackground()", localThrowable);
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.content.ModernAsyncTask.3
 * JD-Core Version:    0.6.0
 */