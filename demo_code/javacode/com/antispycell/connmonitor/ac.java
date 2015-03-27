package com.antispycell.connmonitor;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.HashMap;
import java.util.List;

final class ac extends BaseAdapter
{
  final PackageManager a = w.b.getPackageManager();

  public ac(w paramw, Context paramContext)
  {
    w.b = paramContext;
  }

  private static String a(long paramLong)
  {
    if (paramLong < 1000L);
    Object[] arrayOfObject;
    for (String str2 = paramLong + "B"; ; str2 = String.format("%.1f %sB", arrayOfObject))
    {
      return str2;
      int i = (int)(Math.log(paramLong) / Math.log(1000.0D));
      String str1 = "kMGTPE".charAt(i - 1);
      arrayOfObject = new Object[2];
      arrayOfObject[0] = Double.valueOf(paramLong / Math.pow(1000.0D, i));
      arrayOfObject[1] = str1;
    }
  }

  private static String a(String paramString, int paramInt)
  {
    int i = 0;
    Object localObject = null;
    if ((paramString != null) && (paramString.indexOf(":") > 0));
    for (String str1 = paramString.substring(0, paramString.indexOf(":")); ; str1 = paramString)
      try
      {
        PackageInfo localPackageInfo = w.b().getPackageInfo(str1, 0);
        localObject = localPackageInfo;
        label44: String[] arrayOfString;
        if ((localObject == null) && (paramInt > 0))
          arrayOfString = w.b().getPackagesForUid(paramInt);
        while (true)
        {
          String str2;
          if ((arrayOfString == null) || (i >= arrayOfString.length))
          {
            if (localObject != null)
            {
              str2 = ((PackageInfo)localObject).applicationInfo.loadLabel(w.b()).toString();
              label94: return str2;
            }
          }
          else if (arrayOfString[i] == null);
          try
          {
            localObject = w.b().getPackageInfo(arrayOfString[i], 0);
            i = arrayOfString.length;
            label120: i++;
            continue;
            if (paramInt == 0)
            {
              str2 = "Android System";
              break label94;
            }
            str2 = str1;
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException2)
          {
            break label120;
          }
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException1)
      {
        break label44;
      }
  }

  public final int getCount()
  {
    return w.c.size();
  }

  public final Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ad localad1;
    String str3;
    Object localObject;
    label207: label222: String str4;
    String str5;
    if (paramView == null)
    {
      paramView = ((LayoutInflater)w.b.getSystemService("layout_inflater")).inflate(2130903052, paramViewGroup, false);
      ad localad2 = new ad();
      localad2.b = ((TextView)paramView.findViewById(2131230773));
      localad2.c = ((TextView)paramView.findViewById(2131230726));
      localad2.d = ((TextView)paramView.findViewById(2131230774));
      localad2.a = ((ImageView)paramView.findViewById(2131230723));
      localad2.e = ((TextView)paramView.findViewById(2131230777));
      paramView.setTag(localad2);
      localad1 = localad2;
      if (w.e == null)
        w.e = new SparseArray();
      if (w.f == null)
        w.f = new SparseArray();
      String str1 = ((ab)w.c.get(paramInt)).a();
      if ((!str1.startsWith("127.0")) && (!str1.startsWith("0.")))
        this.b.k = str1;
      if (w.a.GetUID(paramInt) != 0)
        break label566;
      str3 = "Android system";
      localObject = null;
      if (localObject == null)
        break label687;
      localad1.a.setImageDrawable((Drawable)localObject);
      if (((ab)w.c.get(paramInt)).f().equals("LISTEN"))
        localad1.b.setText(localad1.b.getText() + ":" + ((ab)w.c.get(paramInt)).c());
      str4 = ((ab)w.c.get(paramInt)).b();
      str5 = String.valueOf(((ab)w.c.get(paramInt)).d());
      if (!this.b.l.booleanValue())
        break label752;
      if ((w.d == null) || (str4 == null) || (!w.d.containsKey(str4)))
        break label701;
      localad1.b.setText((String)w.d.get(str4) + ":" + str5);
    }
    while (true)
    {
      while (true)
      {
        localad1.c.setText(str3);
        localad1.d.setText(((ab)w.c.get(paramInt)).g() + " " + ((ab)w.c.get(paramInt)).f());
        localad1.e.setText("Sent: " + a(((ab)w.c.get(paramInt)).h()) + " Recv: " + a(((ab)w.c.get(paramInt)).i()));
        return paramView;
        localad1 = (ad)paramView.getTag();
        break;
        label566: int i = ((ab)w.c.get(paramInt)).e();
        String str2 = (String)w.f.get(i);
        str3 = (String)w.e.get(i);
        if (str2 == null)
        {
          str2 = w.b.getPackageManager().getNameForUid(i);
          w.f.put(i, str2);
        }
        if (str3 == null)
        {
          str3 = a(str2, i);
          w.e.put(i, str3);
        }
        try
        {
          Drawable localDrawable = this.a.getApplicationIcon(str2);
          localObject = localDrawable;
        }
        catch (Exception localException1)
        {
          localObject = null;
        }
      }
      break label207;
      label687: localad1.a.setImageResource(2130837513);
      break label222;
      try
      {
        label701: aa localaa = new aa(this.b, localad1.b, str4, str5);
        Context[] arrayOfContext = new Context[1];
        arrayOfContext[0] = w.b;
        localaa.execute(arrayOfContext);
      }
      catch (Exception localException2)
      {
      }
      continue;
      label752: localad1.b.setText(str4 + ":" + str5);
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.ac
 * JD-Core Version:    0.6.0
 */