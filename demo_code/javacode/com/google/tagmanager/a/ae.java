package com.google.tagmanager.a;

import java.io.IOException;

public final class ae extends IOException
{
  private ak a = null;

  public ae(String paramString)
  {
    super(paramString);
  }

  static ae b()
  {
    return new ae("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
  }

  static ae c()
  {
    return new ae("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }

  static ae d()
  {
    return new ae("CodedInputStream encountered a malformed varint.");
  }

  static ae e()
  {
    return new ae("Protocol message contained an invalid tag (zero).");
  }

  static ae f()
  {
    return new ae("Protocol message end-group tag did not match expected tag.");
  }

  static ae g()
  {
    return new ae("Protocol message tag had invalid wire type.");
  }

  static ae h()
  {
    return new ae("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
  }

  static ae i()
  {
    return new ae("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
  }

  public final ae a(ak paramak)
  {
    this.a = paramak;
    return this;
  }

  public final ak a()
  {
    return this.a;
  }
}

/* Location:           C:\Users\CVN-DAHLIA\AppData\Local\Temp\Rar$EXa0.638\tools\classes-dex2jar.jar
 * Qualified Name:     com.google.tagmanager.a.ae
 * JD-Core Version:    0.6.0
 */