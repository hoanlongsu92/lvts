package android.support.v4.view;

class KeyEventCompat$BaseKeyEventVersionImpl
  implements KeyEventCompat.KeyEventVersionImpl
{
  private static final int META_ALL_MASK = 247;
  private static final int META_MODIFIER_MASK = 247;

  private static int metaStateFilterDirectionalModifiers(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int i = 1;
    int j;
    int k;
    if ((paramInt2 & paramInt3) != 0)
    {
      j = i;
      k = paramInt4 | paramInt5;
      if ((paramInt2 & k) == 0)
        break label52;
    }
    while (true)
    {
      if (j == 0)
        break label68;
      if (i == 0)
        break label58;
      throw new IllegalArgumentException("bad arguments");
      j = 0;
      break;
      label52: i = 0;
    }
    label58: paramInt1 &= (k ^ 0xFFFFFFFF);
    while (true)
    {
      return paramInt1;
      label68: if (i == 0)
        continue;
      paramInt1 &= (paramInt3 ^ 0xFFFFFFFF);
    }
  }

  public boolean metaStateHasModifiers(int paramInt1, int paramInt2)
  {
    int i = 1;
    if (metaStateFilterDirectionalModifiers(metaStateFilterDirectionalModifiers(0xF7 & normalizeMetaState(paramInt1), paramInt2, i, 64, 128), paramInt2, 2, 16, 32) == paramInt2);
    while (true)
    {
      return i;
      i = 0;
    }
  }

  public boolean metaStateHasNoModifiers(int paramInt)
  {
    if ((0xF7 & normalizeMetaState(paramInt)) == 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  public int normalizeMetaState(int paramInt)
  {
    if ((paramInt & 0xC0) != 0);
    for (int i = paramInt | 0x1; ; i = paramInt)
    {
      if ((i & 0x30) != 0)
        i |= 2;
      return i & 0xF7;
    }
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.KeyEventCompat.BaseKeyEventVersionImpl
 * JD-Core Version:    0.6.0
 */