package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ai
  implements Runnable
{
  ai(ah paramah, Map paramMap)
  {
  }

  public final void run()
  {
    if (TextUtils.isEmpty((CharSequence)this.a.get("&cid")))
      this.a.put("&cid", ah.a(this.b));
    if ((an.a(ah.b(this.b)).c()) || (ah.b(this.a)));
    while (true)
    {
      return;
      Map localMap2;
      at localat1;
      String str3;
      if (!TextUtils.isEmpty(ah.c(this.b)))
      {
        al.a().a(true);
        localMap2 = this.a;
        localat1 = new at();
        String str2 = ah.c(this.b);
        al.a().a(am.d);
        str3 = bg.d(str2);
        if (!TextUtils.isEmpty(str3))
          break label303;
      }
      HashMap localHashMap;
      for (at localat2 = localat1; ; localat2 = localat1)
      {
        localMap2.putAll(localat2.a());
        al.a().a(false);
        ah.d(this.b);
        ah.c(this.a);
        Map localMap1 = this.a;
        localHashMap = new HashMap();
        Iterator localIterator = localMap1.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if ((!((String)localEntry.getKey()).startsWith("&")) || (localEntry.getValue() == null))
            continue;
          String str1 = ((String)localEntry.getKey()).substring(1);
          if (TextUtils.isEmpty(str1))
            continue;
          localHashMap.put(str1, localEntry.getValue());
        }
        label303: Map localMap3 = bg.a(str3);
        localat1.a("&cc", (String)localMap3.get("utm_content"));
        localat1.a("&cm", (String)localMap3.get("utm_medium"));
        localat1.a("&cn", (String)localMap3.get("utm_campaign"));
        localat1.a("&cs", (String)localMap3.get("utm_source"));
        localat1.a("&ck", (String)localMap3.get("utm_term"));
        localat1.a("&ci", (String)localMap3.get("utm_id"));
        localat1.a("&gclid", (String)localMap3.get("gclid"));
        localat1.a("&dclid", (String)localMap3.get("dclid"));
        localat1.a("&gmob_t", (String)localMap3.get("gmob_t"));
      }
      bb localbb = ah.f(this.b);
      long l = Long.valueOf((String)this.a.get("&ht")).longValue();
      localbb.a(localHashMap, l, ah.d(this.a), ah.e(this.b));
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ai
 * JD-Core Version:    0.6.0
 */