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
import java.util.Date;
import java.util.List;

final class al extends BaseAdapter
{
  final PackageManager a = ae.b.getPackageManager();

  public al(ae paramae, Context paramContext)
  {
    ae.b = paramContext;
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
    return ae.c.size();
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
    am localam1;
    String str1;
    Integer localInteger1;
    Integer localInteger3;
    if (paramView == null)
    {
      paramView = ((LayoutInflater)ae.b.getSystemService("layout_inflater")).inflate(2130903052, paramViewGroup, false);
      am localam2 = new am();
      localam2.b = ((TextView)paramView.findViewById(2131230773));
      localam2.c = ((TextView)paramView.findViewById(2131230726));
      localam2.d = ((TextView)paramView.findViewById(2131230774));
      localam2.a = ((ImageView)paramView.findViewById(2131230723));
      localam2.e = ((TextView)paramView.findViewById(2131230777));
      paramView.setTag(localam2);
      localam1 = localam2;
      str1 = ((ao)ae.c.get(paramInt)).d();
      localInteger1 = Integer.valueOf(0);
      if (str1.lastIndexOf(":") <= 0)
        break label629;
      localInteger3 = Integer.valueOf(Integer.parseInt(str1.substring(1 + str1.lastIndexOf(":"))));
      str1 = str1.substring(0, str1.lastIndexOf(":"));
    }
    label607: label614: label622: label629: for (Integer localInteger2 = localInteger3; ; localInteger2 = localInteger1)
      try
      {
        Drawable localDrawable2 = this.a.getApplicationIcon(str1);
        localDrawable1 = localDrawable2;
        if (localDrawable1 != null)
        {
          localam1.a.setImageDrawable(localDrawable1);
          if (ae.i == null)
            ae.i = new SparseArray();
          str2 = (String)ae.i.get(localInteger2.intValue());
          if (str2 != null)
            break label607;
          str5 = a(str1, localInteger2.intValue());
          if ((localInteger2 == null) || (str5 == null))
            break label622;
          ae.i.put(localInteger2.intValue(), str5);
          str3 = str5;
          if (((ao)ae.c.get(paramInt)).e() == null)
            break label614;
          Date localDate = new Date(1000L * Long.valueOf(((ao)ae.c.get(paramInt)).e()).longValue());
          java.text.DateFormat localDateFormat1 = android.text.format.DateFormat.getDateFormat(ae.b);
          java.text.DateFormat localDateFormat2 = android.text.format.DateFormat.getTimeFormat(ae.b);
          str4 = localDateFormat1.format(localDate) + " " + localDateFormat2.format(localDate);
          if ((str3 == null) && (str2 != null) && (str2.indexOf(":") > 0))
            str3 = str2.substring(0, str2.indexOf(":"));
          localam1.c.setText(str3);
          localam1.b.setText(((ao)ae.c.get(paramInt)).b() + ":" + ((ao)ae.c.get(paramInt)).c());
          localam1.d.setText("Last: " + str4);
          localam1.e.setText("Total Activity: " + by.a(((ao)ae.c.get(paramInt)).f()));
          return paramView;
          localam1 = (am)paramView.getTag();
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          String str2;
          String str5;
          Drawable localDrawable1 = null;
          continue;
          localam1.a.setImageResource(2130837513);
          continue;
          String str3 = str2;
          continue;
          String str4 = "";
          continue;
          str3 = str5;
        }
      }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.al
 * JD-Core Version:    0.6.0
 */