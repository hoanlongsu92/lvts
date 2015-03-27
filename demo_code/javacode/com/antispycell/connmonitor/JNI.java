package com.antispycell.connmonitor;

public class JNI
{
  private static JNI a = null;

  public static JNI a()
  {
    if (a == null)
    {
      System.loadLibrary("netmonitor");
      a = new JNI();
    }
    return a;
  }

  public static Boolean b()
  {
    if (a == null);
    for (Boolean localBoolean = Boolean.valueOf(false); ; localBoolean = Boolean.valueOf(true))
      return localBoolean;
  }

  public native int GetCounts();

  public native String GetLocalIP(int paramInt);

  public native int GetLocalPort(int paramInt);

  public native String GetProtocol(int paramInt);

  public native int GetRX(int paramInt);

  public native String GetRemoteHost(int paramInt);

  public native String GetRemoteIP(int paramInt);

  public native int GetRemotePort(int paramInt);

  public native int GetSND(int paramInt);

  public native String GetStatus(int paramInt);

  public native int GetUID(int paramInt);

  public native int SetNetworkIP6To4(int paramInt);

  public native int ncData();

  public native int ncDataLoad();

  public native int ncDataTime(int paramInt);

  public native int ncRefresh();

  public native int ncStart();

  public native int ncStop();
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.antispycell.connmonitor.JNI
 * JD-Core Version:    0.6.0
 */