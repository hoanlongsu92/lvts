.class final Lcom/google/tagmanager/a/e;
.super Lcom/google/tagmanager/a/ai;
.source "BoundedByteString.java"


# instance fields
.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>([BII)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/ai;-><init>([B)V

    .line 36
    if-gez p2, :cond_1a

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset too small: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1a
    if-gez p3, :cond_31

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length too small: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_31
    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_59

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset+Length too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_59
    iput p2, p0, Lcom/google/tagmanager/a/e;->d:I

    .line 48
    iput p3, p0, Lcom/google/tagmanager/a/e;->e:I

    .line 49
    return-void
.end method


# virtual methods
.method public final a(I)B
    .registers 5
    .parameter

    .prologue
    .line 65
    if-gez p1, :cond_17

    .line 66
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index too small: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_17
    iget v0, p0, Lcom/google/tagmanager/a/e;->e:I

    if-lt p1, v0, :cond_3c

    .line 69
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/tagmanager/a/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3c
    iget-object v0, p0, Lcom/google/tagmanager/a/e;->c:[B

    iget v1, p0, Lcom/google/tagmanager/a/e;->d:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public final a()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/tagmanager/a/e;->e:I

    return v0
.end method

.method protected final a([BIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/tagmanager/a/e;->c:[B

    iget v1, p0, Lcom/google/tagmanager/a/e;->d:I

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    return-void
.end method

.method protected final b()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/google/tagmanager/a/e;->d:I

    return v0
.end method

.method public final c()Lcom/google/tagmanager/a/h;
    .registers 3

    .prologue
    .line 101
    new-instance v0, Lcom/google/tagmanager/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/a/f;-><init>(Lcom/google/tagmanager/a/e;B)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/tagmanager/a/e;->c()Lcom/google/tagmanager/a/h;

    move-result-object v0

    return-object v0
.end method
