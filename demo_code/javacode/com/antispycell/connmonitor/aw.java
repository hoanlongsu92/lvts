package com.antispycell.connmonitor;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.Date;
import java.util.List;

public final class aw extends AsyncTask
{
  private ViewGroup b;
  private Context c;
  private int d;
  private LayoutInflater e;

  public aw(IPDetails paramIPDetails, ViewGroup paramViewGroup, Context paramContext, int paramInt, LayoutInflater paramLayoutInflater)
  {
    this.b = paramViewGroup;
    this.c = paramContext;
    this.d = paramInt;
    this.e = paramLayoutInflater;
  }

  private View a()
  {
    View localView = this.e.inflate(2130903050, this.b, false);
    localView.setOnClickListener(new ax(this));
    TextView localTextView1 = (TextView)localView.findViewById(2131230768);
    TextView localTextView2 = (TextView)localView.findViewById(2131230726);
    TextView localTextView3 = (TextView)localView.findViewById(2131230772);
    TextView localTextView4 = (TextView)localView.findViewById(2131230771);
    ImageView localImageView = (ImageView)localView.findViewById(2131230723);
    String str1 = null;
    if ((IPDetails.b.size() > this.d) && (((ao)IPDetails.b.get(this.d)).e() != null))
    {
      Date localDate = new Date(1000L * Long.valueOf(((ao)IPDetails.b.get(this.d)).e()).longValue());
      java.text.DateFormat localDateFormat1 = android.text.format.DateFormat.getDateFormat(this.c);
      java.text.DateFormat localDateFormat2 = android.text.format.DateFormat.getTimeFormat(this.c);
      str1 = localDateFormat1.format(localDate) + " " + localDateFormat2.format(localDate);
    }
    if ((IPDetails.b.size() > this.d) && (((ao)IPDetails.b.get(this.d)).d() != null));
    for (String str2 = ((ao)IPDetails.b.get(this.d)).d(); ; str2 = null)
    {
      Integer localInteger1 = Integer.valueOf(0);
      Integer localInteger3;
      String str3;
      if ((str2 != null) && (str2.lastIndexOf(":") > 0))
      {
        localInteger3 = Integer.valueOf(Integer.parseInt(str2.substring(1 + str2.lastIndexOf(":"))));
        str3 = str2.substring(0, str2.indexOf(":"));
      }
      for (Integer localInteger2 = localInteger3; ; localInteger2 = localInteger1)
      {
        Object localObject2;
        String str5;
        Object localObject1;
        if (localInteger2.intValue() == 0)
        {
          localObject2 = "Android system";
          str5 = "Android system";
          localObject1 = null;
          if (localObject1 == null)
            break label544;
          localImageView.setImageDrawable((Drawable)localObject1);
          label360: if ((str5 != null) || (localObject2 == null) || (((String)localObject2).indexOf(":") <= 0))
            break label554;
        }
        label544: label554: for (String str6 = ((String)localObject2).substring(0, ((String)localObject2).indexOf(":")); ; str6 = str5)
        {
          while (true)
          {
            if (str6.equals("null"))
              str6 = "n/a";
            localTextView1.setText((CharSequence)localObject2);
            localTextView2.setText(str6);
            localTextView4.setText("Port: " + ((ao)IPDetails.b.get(this.d)).c());
            localTextView3.setText("Last: " + str1);
            return localView;
            String str4 = IPDetails.a(this.a, str3, localInteger2.intValue());
            try
            {
              Drawable localDrawable = this.a.a.getApplicationIcon(str3);
              localObject2 = str4;
              str5 = str3;
              localObject1 = localDrawable;
            }
            catch (Exception localException)
            {
              str5 = str3;
              localObject1 = null;
              localObject2 = str4;
            }
          }
          break;
          localImageView.setImageResource(2130837513);
          break label360;
        }
        str3 = str2;
      }
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.aw
 * JD-Core Version:    0.6.0
 */