.class public final Lcom/google/tagmanager/a/ae;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# instance fields
.field private a:Lcom/google/tagmanager/a/ak;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/tagmanager/a/ae;->a:Lcom/google/tagmanager/a/ak;

    .line 19
    return-void
.end method

.method static b()Lcom/google/tagmanager/a/ae;
    .registers 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/tagmanager/a/ae;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ae;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static c()Lcom/google/tagmanager/a/ae;
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lcom/google/tagmanager/a/ae;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ae;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static d()Lcom/google/tagmanager/a/ae;
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lcom/google/tagmanager/a/ae;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ae;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static e()Lcom/google/tagmanager/a/ae;
    .registers 2

    .prologue
    .line 61
    new-instance v0, Lcom/google/tagmanager/a/ae;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ae;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static f()Lcom/google/tagmanager/a/ae;
    .registers 2

    .prologue
    .line 66
    new-instance v0, Lcom/google/tagmanager/a/ae;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ae;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static g()Lcom/google/tagmanager/a/ae;
    .registers 2

    .prologue
    .line 71
    new-instance v0, Lcom/google/tagmanager/a/ae;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ae;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static h()Lcom/google/tagmanager/a/ae;
    .registers 2

    .prologue
    .line 76
    new-instance v0, Lcom/google/tagmanager/a/ae;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ae;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static i()Lcom/google/tagmanager/a/ae;
    .registers 2

    .prologue
    .line 82
    new-instance v0, Lcom/google/tagmanager/a/ae;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ae;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;
    .registers 2
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/tagmanager/a/ae;->a:Lcom/google/tagmanager/a/ak;

    .line 30
    return-object p0
.end method

.method public final a()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/tagmanager/a/ae;->a:Lcom/google/tagmanager/a/ak;

    return-object v0
.end method
