.class public final Lcom/google/tagmanager/a/ab;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static final a:[B

.field public static final b:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 355
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 360
    sput-object v0, Lcom/google/tagmanager/a/ab;->a:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/a/ab;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a(J)I
    .registers 4
    .parameter

    .prologue
    .line 209
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static a(Lcom/google/tagmanager/a/ac;)I
    .registers 2
    .parameter

    .prologue
    .line 229
    invoke-interface {p0}, Lcom/google/tagmanager/a/ac;->a()I

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/List;)I
    .registers 4
    .parameter

    .prologue
    .line 237
    const/4 v0, 0x1

    .line 238
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/ac;

    .line 239
    mul-int/lit8 v1, v1, 0x1f

    invoke-interface {v0}, Lcom/google/tagmanager/a/ac;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 240
    goto :goto_6

    .line 241
    :cond_1b
    return v1
.end method

.method public static a(Z)I
    .registers 2
    .parameter

    .prologue
    .line 218
    if-eqz p0, :cond_5

    const/16 v0, 0x4cf

    :goto_4
    return v0

    :cond_5
    const/16 v0, 0x4d5

    goto :goto_4
.end method

.method public static a([B)Z
    .registers 3
    .parameter

    .prologue
    .line 159
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/tagmanager/a/bg;->a([BII)Z

    move-result v0

    return v0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 178
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 179
    :catch_8
    move-exception v0

    .line 180
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
