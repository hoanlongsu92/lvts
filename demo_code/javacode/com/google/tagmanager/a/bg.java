package com.google.tagmanager.a;

final class bg
{
  private static int a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 > -12) || (paramInt2 > -65));
    for (int i = -1; ; i = paramInt1 ^ paramInt2 << 8)
      return i;
  }

  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 > -12) || (paramInt2 > -65) || (paramInt3 > -65));
    for (int i = -1; ; i = paramInt1 ^ paramInt2 << 8 ^ paramInt3 << 16)
      return i;
  }

  public static int a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    int i;
    int i5;
    int k;
    int n;
    int i2;
    int m;
    if (paramInt1 != 0)
    {
      if (paramInt2 >= paramInt3);
      while (true)
      {
        return paramInt1;
        i = (byte)paramInt1;
        if (i < -32)
        {
          if (i >= -62)
          {
            i5 = paramInt2 + 1;
            if (paramArrayOfByte[paramInt2] <= -65)
              break;
          }
          else
          {
            paramInt1 = -1;
            continue;
          }
        }
        else
        {
          if (i < -16)
          {
            int i3 = (byte)(0xFFFFFFFF ^ paramInt1 >> 8);
            int i4;
            if (i3 == 0)
            {
              i4 = paramInt2 + 1;
              i3 = paramArrayOfByte[paramInt2];
              if (i4 >= paramInt3)
              {
                paramInt1 = a(i, i3);
                continue;
              }
            }
            else
            {
              i4 = paramInt2;
            }
            if ((i3 <= -65) && ((i != -32) || (i3 >= -96)) && ((i != -19) || (i3 < -96)))
            {
              paramInt2 = i4 + 1;
              if (paramArrayOfByte[i4] <= -65)
                break label308;
            }
            paramInt1 = -1;
            continue;
          }
          int j = (byte)(0xFFFFFFFF ^ paramInt1 >> 8);
          k = 0;
          if (j == 0)
          {
            n = paramInt2 + 1;
            i2 = paramArrayOfByte[paramInt2];
            if (n < paramInt3)
              break label318;
            paramInt1 = a(i, i2);
            continue;
          }
          k = (byte)(paramInt1 >> 16);
          m = j;
          n = paramInt2;
        }
      }
    }
    while (true)
    {
      int i1;
      if (k == 0)
      {
        i1 = n + 1;
        k = paramArrayOfByte[n];
        if (i1 >= paramInt3)
        {
          paramInt1 = a(i, m, k);
          break;
        }
      }
      else
      {
        i1 = n;
      }
      if ((m <= -65) && ((i << 28) + (m + 112) >> 30 == 0) && (k <= -65))
      {
        paramInt2 = i1 + 1;
        if (paramArrayOfByte[i1] <= -65);
      }
      else
      {
        paramInt1 = -1;
        break;
        paramInt2 = i5;
      }
      label308: paramInt1 = b(paramArrayOfByte, paramInt2, paramInt3);
      break;
      label318: m = i2;
    }
  }

  public static boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (b(paramArrayOfByte, paramInt1, paramInt2) == 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  private static int b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    for (int i = paramInt1; (i < paramInt2) && (paramArrayOfByte[i] >= 0); i++);
    int k;
    if (i >= paramInt2)
      k = 0;
    while (true)
    {
      return k;
      label30: int j;
      i = j;
      label93: label100: int i1;
      label188: label195: 
      do
      {
        int i2;
        do
        {
          do
          {
            if (i >= paramInt2)
            {
              k = 0;
              break;
            }
            j = i + 1;
            k = paramArrayOfByte[i];
            if (k >= 0)
              break label30;
            if (k >= -32)
              break label100;
            if (j >= paramInt2)
              break;
            if (k < -62)
              break label93;
            i = j + 1;
          }
          while (paramArrayOfByte[j] <= -65);
          k = -1;
          break;
          if (k >= -16)
            break label195;
          if (j >= paramInt2 - 1)
          {
            k = c(paramArrayOfByte, j, paramInt2);
            break;
          }
          i2 = j + 1;
          int i3 = paramArrayOfByte[j];
          if ((i3 > -65) || ((k == -32) && (i3 < -96)) || ((k == -19) && (i3 >= -96)))
            break label188;
          i = i2 + 1;
        }
        while (paramArrayOfByte[i2] <= -65);
        k = -1;
        break;
        if (j >= paramInt2 - 2)
        {
          k = c(paramArrayOfByte, j, paramInt2);
          break;
        }
        int m = j + 1;
        int n = paramArrayOfByte[j];
        if ((n > -65) || ((k << 28) + (n + 112) >> 30 != 0))
          break label280;
        i1 = m + 1;
        if (paramArrayOfByte[m] > -65)
          break label280;
        i = i1 + 1;
      }
      while (paramArrayOfByte[i1] <= -65);
      label280: k = -1;
    }
  }

  private static int c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfByte[(paramInt1 - 1)];
    switch (paramInt2 - paramInt1)
    {
    default:
      throw new AssertionError();
    case 0:
      if (i <= -12)
        break;
      i = -1;
    case 1:
    case 2:
    }
    while (true)
    {
      return i;
      i = a(i, paramArrayOfByte[paramInt1]);
      continue;
      i = a(i, paramArrayOfByte[paramInt1], paramArrayOfByte[(paramInt1 + 1)]);
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.bg
 * JD-Core Version:    0.6.0
 */