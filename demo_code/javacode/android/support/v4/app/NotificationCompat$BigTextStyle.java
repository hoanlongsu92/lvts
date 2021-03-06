package android.support.v4.app;

public class NotificationCompat$BigTextStyle extends NotificationCompat.Style
{
  CharSequence mBigText;

  public NotificationCompat$BigTextStyle()
  {
  }

  public NotificationCompat$BigTextStyle(NotificationCompat.Builder paramBuilder)
  {
    setBuilder(paramBuilder);
  }

  public BigTextStyle bigText(CharSequence paramCharSequence)
  {
    this.mBigText = paramCharSequence;
    return this;
  }

  public BigTextStyle setBigContentTitle(CharSequence paramCharSequence)
  {
    this.mBigContentTitle = paramCharSequence;
    return this;
  }

  public BigTextStyle setSummaryText(CharSequence paramCharSequence)
  {
    this.mSummaryText = paramCharSequence;
    this.mSummaryTextSet = true;
    return this;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationCompat.BigTextStyle
 * JD-Core Version:    0.6.0
 */