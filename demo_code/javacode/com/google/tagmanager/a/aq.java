package com.google.tagmanager.a;

import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Deque;

final class aq
{
  private final Deque a = new ArrayDeque(ap.b().length);

  private static int a(int paramInt)
  {
    int i = Arrays.binarySearch(ap.b(), paramInt);
    if (i < 0)
      i = -1 + -(i + 1);
    return i;
  }

  private void a(g paramg)
  {
    ap localap1;
    for (g localg = paramg; ; localg = ap.b(localap1))
    {
      if (localg.k())
      {
        int i = a(localg.a());
        int j = ap.b()[(i + 1)];
        if ((this.a.isEmpty()) || (((g)this.a.peek()).a() >= j))
          this.a.push(localg);
        while (true)
        {
          return;
          int k = ap.b()[i];
          for (Object localObject = (g)this.a.pop(); (!this.a.isEmpty()) && (((g)this.a.peek()).a() < k); localObject = new ap((g)this.a.pop(), (g)localObject, 0));
          for (ap localap2 = new ap((g)localObject, localg, 0); !this.a.isEmpty(); localap2 = new ap((g)this.a.pop(), localap2, 0))
          {
            int m = a(localap2.a());
            int n = ap.b()[(m + 1)];
            if (((g)this.a.peek()).a() >= n)
              break;
          }
          this.a.push(localap2);
        }
      }
      if (!(localg instanceof ap))
        break;
      localap1 = (ap)localg;
      a(ap.a(localap1));
    }
    throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + localg.getClass());
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.aq
 * JD-Core Version:    0.6.0
 */