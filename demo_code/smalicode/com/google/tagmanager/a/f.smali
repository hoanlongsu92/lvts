.class final Lcom/google/tagmanager/a/f;
.super Ljava/lang/Object;
.source "BoundedByteString.java"

# interfaces
.implements Lcom/google/tagmanager/a/h;


# instance fields
.field final synthetic a:Lcom/google/tagmanager/a/e;

.field private b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/a/e;)V
    .registers 4
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/tagmanager/a/f;->a:Lcom/google/tagmanager/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/google/tagmanager/a/e;->b()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/a/f;->b:I

    .line 111
    iget v0, p0, Lcom/google/tagmanager/a/f;->b:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/e;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/a/f;->c:I

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/e;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/f;-><init>(Lcom/google/tagmanager/a/e;)V

    return-void
.end method


# virtual methods
.method public final a()B
    .registers 4

    .prologue
    .line 124
    iget v0, p0, Lcom/google/tagmanager/a/f;->b:I

    iget v1, p0, Lcom/google/tagmanager/a/f;->c:I

    if-lt v0, v1, :cond_c

    .line 125
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 127
    :cond_c
    iget-object v0, p0, Lcom/google/tagmanager/a/f;->a:Lcom/google/tagmanager/a/e;

    iget-object v0, v0, Lcom/google/tagmanager/a/e;->c:[B

    iget v1, p0, Lcom/google/tagmanager/a/f;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/a/f;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final hasNext()Z
    .registers 3

    .prologue
    .line 115
    iget v0, p0, Lcom/google/tagmanager/a/f;->b:I

    iget v1, p0, Lcom/google/tagmanager/a/f;->c:I

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
    .line 104
    invoke-virtual {p0}, Lcom/google/tagmanager/a/f;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
