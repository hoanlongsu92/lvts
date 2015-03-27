package android.support.v4.app;

import java.util.ArrayList;

public class NotificationCompat$InboxStyle extends NotificationCompat.Style
{
  ArrayList mTexts = new ArrayList();

  public NotificationCompat$InboxStyle()
  {
  }

  public NotificationCompat$InboxStyle(NotificationCompat.Builder paramBuilder)
  {
    setBuilder(paramBuilder);
  }

  public InboxStyle addLine(CharSequence paramCharSequence)
  {
    this.mTexts.add(paramCharSequence);
    return this;
  }

  public InboxStyle setBigContentTitle(CharSequence paramCharSequence)
  {
    this.mBigContentTitle = paramCharSequence;
    return this;
  }

  public InboxStyle setSummaryText(CharSequence paramCharSequence)
  {
    this.mSummaryText = paramCharSequence;
    this.mSummaryTextSet = true;
    return this;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationCompat.InboxStyle
 * JD-Core Version:    0.6.0
 */