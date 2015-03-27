.class final Lcom/google/tagmanager/a/aj;
.super Ljava/lang/Object;
.source "LiteralByteString.java"

# interfaces
.implements Lcom/google/tagmanager/a/h;


# instance fields
.field final synthetic a:Lcom/google/tagmanager/a/ai;

.field private b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/a/ai;)V
    .registers 3
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/tagmanager/a/aj;->a:Lcom/google/tagmanager/a/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/a/aj;->b:I

    .line 287
    invoke-virtual {p1}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/a/aj;->c:I

    .line 288
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/ai;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/aj;-><init>(Lcom/google/tagmanager/a/ai;)V

    return-void
.end method


# virtual methods
.method public final a()B
    .registers 4

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/a/aj;->a:Lcom/google/tagmanager/a/ai;

    iget-object v0, v0, Lcom/google/tagmanager/a/ai;->c:[B

    iget v1, p0, Lcom/google/tagmanager/a/aj;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/a/aj;->b:I

    aget-byte v0, v0, v1
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 302
    :catch_d
    move-exception v0

    .line 303
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final hasNext()Z
    .registers 3

    .prologue
    .line 291
    iget v0, p0, Lcom/google/tagmanager/a/aj;->b:I

    iget v1, p0, Lcom/google/tagmanager/a/aj;->c:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/tagmanager/a/aj;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
