package com.google.tagmanager;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;

public final class e
{
  public static final Object a = new Object();
  private final ConcurrentHashMap b = new ConcurrentHashMap();
  private final Map c = new HashMap();
  private final ReentrantLock d = new ReentrantLock();
  private final LinkedList e = new LinkedList();

  final void a(f paramf)
  {
    this.b.put(paramf, Integer.valueOf(0));
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.e
 * JD-Core Version:    0.6.0
 */