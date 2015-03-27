package com.antispycell.connmonitor;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

final class n extends BaseAdapter
{
  final PackageManager a = h.b.getPackageManager();

  public n(h paramh, Context paramContext)
  {
    h.b = paramContext;
  }

  private String a(String paramString, int paramInt)
  {
    int i = 0;
    Boolean localBoolean = Boolean.valueOf(false);
    Object localObject2;
    if ((paramString.startsWith("null")) && (paramInt == 0))
    {
      localObject2 = "Android System";
      return localObject2;
    }
    Object localObject1 = null;
    if ((paramString != null) && (paramString.indexOf(":") > 0));
    for (String str = paramString.substring(0, paramString.indexOf(":")); ; str = paramString)
      while (true)
      {
        String[] arrayOfString;
        try
        {
          PackageInfo localPackageInfo = this.a.getPackageInfo(str, 1);
          localObject1 = localPackageInfo;
          if ((localObject1 != null) || (paramInt <= 0))
            continue;
          arrayOfString = this.a.getPackagesForUid(paramInt);
          if ((arrayOfString != null) && (arrayOfString.length > 1) && (i < arrayOfString.length))
            continue;
          if (localObject1 != null)
            localObject2 = ((PackageInfo)localObject1).applicationInfo.loadLabel(this.a).toString();
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException1)
        {
          localBoolean = Boolean.valueOf(true);
          continue;
          if (arrayOfString[i] == null);
        }
        try
        {
          localObject1 = this.a.getPackageInfo(arrayOfString[i], 0);
          i = arrayOfString.length;
          label174: i++;
          continue;
          if (paramInt == 0)
          {
            localObject2 = "Android System";
            break;
          }
          if (localBoolean.booleanValue())
          {
            if (str.length() > 0)
            {
              localObject2 = str + " [noinfo]";
              break;
            }
            localObject2 = "[removed]";
            break;
          }
          localObject2 = str;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException2)
        {
          break label174;
        }
      }
  }

  public final int getCount()
  {
    return h.c.size();
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
    o localo;
    if (paramView == null)
    {
      paramView = ((LayoutInflater)h.b.getSystemService("layout_inflater")).inflate(2130903052, paramViewGroup, false);
      localo = new o();
      localo.b = ((TextView)paramView.findViewById(2131230773));
      localo.c = ((TextView)paramView.findViewById(2131230726));
      localo.d = ((TextView)paramView.findViewById(2131230774));
      localo.a = ((ImageView)paramView.findViewById(2131230723));
      localo.e = ((TextView)paramView.findViewById(2131230777));
      paramView.setTag(localo);
    }
    while (true)
    {
      Integer localInteger = Integer.valueOf(0);
      Object localObject1 = ((ao)h.c.get(paramInt)).d();
      if (((String)localObject1).indexOf(":") > 0)
      {
        localInteger = Integer.valueOf(Integer.parseInt(((String)localObject1).substring(1 + ((String)localObject1).lastIndexOf(":"))));
        localObject1 = ((String)localObject1).substring(0, ((String)localObject1).indexOf(":"));
      }
      Object localObject2 = null;
      try
      {
        Drawable localDrawable = this.a.getApplicationIcon((String)localObject1);
        localObject2 = localDrawable;
        label196: if (localObject2 != null)
          localo.a.setImageDrawable(localObject2);
        while (true)
        {
          String str = a((String)localObject1, localInteger.intValue());
          if ((localObject1 == null) || (((String)localObject1).equals("null")))
            localObject1 = str;
          localo.c.setText((CharSequence)localObject1);
          localo.b.setText(str);
          int i = ((ao)h.c.get(paramInt)).f().intValue() / (int)((ao)h.c.get(paramInt)).a();
          localo.d.setText("Net Activity: ~ " + by.a(Integer.valueOf(i)));
          localo.e.setText("IP addresses: " + ((ao)h.c.get(paramInt)).b());
          return paramView;
          localo = (o)paramView.getTag();
          break;
          localo.a.setImageResource(2130837513);
        }
      }
      catch (Exception localException)
      {
        break label196;
      }
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.n
 * JD-Core Version:    0.6.0
 */