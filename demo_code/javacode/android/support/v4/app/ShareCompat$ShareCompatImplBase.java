package android.support.v4.app;

import android.view.MenuItem;

class ShareCompat$ShareCompatImplBase
  implements ShareCompat.ShareCompatImpl
{
  private static void withinStyle(StringBuilder paramStringBuilder, CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    if (i < paramInt2)
    {
      char c = paramCharSequence.charAt(i);
      if (c == '<')
        paramStringBuilder.append("&lt;");
      while (true)
      {
        i++;
        break;
        if (c == '>')
        {
          paramStringBuilder.append("&gt;");
          continue;
        }
        if (c == '&')
        {
          paramStringBuilder.append("&amp;");
          continue;
        }
        if ((c > '~') || (c < ' '))
        {
          paramStringBuilder.append("&#" + c + ";");
          continue;
        }
        if (c == ' ')
        {
          while ((i + 1 < paramInt2) && (paramCharSequence.charAt(i + 1) == ' '))
          {
            paramStringBuilder.append("&nbsp;");
            i++;
          }
          paramStringBuilder.append(' ');
          continue;
        }
        paramStringBuilder.append(c);
      }
    }
  }

  public void configureMenuItem(MenuItem paramMenuItem, ShareCompat.IntentBuilder paramIntentBuilder)
  {
    paramMenuItem.setIntent(paramIntentBuilder.createChooserIntent());
  }

  public String escapeHtml(CharSequence paramCharSequence)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    withinStyle(localStringBuilder, paramCharSequence, 0, paramCharSequence.length());
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ShareCompat.ShareCompatImplBase
 * JD-Core Version:    0.6.0
 */