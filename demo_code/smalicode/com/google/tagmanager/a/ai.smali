.class Lcom/google/tagmanager/a/ai;
.super Lcom/google/tagmanager/a/g;
.source "LiteralByteString.java"


# instance fields
.field protected final c:[B

.field private d:I


# direct methods
.method constructor <init>([B)V
    .registers 3
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/tagmanager/a/g;-><init>()V

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/a/ai;->d:I

    .line 34
    iput-object p1, p0, Lcom/google/tagmanager/a/ai;->c:[B

    .line 35
    return-void
.end method


# virtual methods
.method public a(I)B
    .registers 3
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/tagmanager/a/ai;->c:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public a()I
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/tagmanager/a/ai;->c:[B

    array-length v0, v0

    return v0
.end method

.method protected final a(III)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->b()I

    move-result v0

    add-int/2addr v0, p2

    .line 141
    iget-object v1, p0, Lcom/google/tagmanager/a/ai;->c:[B

    add-int v2, v0, p3

    invoke-static {p1, v1, v0, v2}, Lcom/google/tagmanager/a/bg;->a(I[BII)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 126
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/tagmanager/a/ai;->c:[B

    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method protected a([BIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/tagmanager/a/ai;->c:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-void
.end method

.method final a(Lcom/google/tagmanager/a/ai;II)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v0

    if-le p3, v0, :cond_23

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_23
    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v1

    if-le v0, v1, :cond_58

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ran off end of other: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_58
    iget-object v2, p0, Lcom/google/tagmanager/a/ai;->c:[B

    .line 195
    iget-object v3, p1, Lcom/google/tagmanager/a/ai;->c:[B

    .line 196
    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->b()I

    move-result v0

    add-int v4, v0, p3

    .line 197
    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/tagmanager/a/ai;->b()I

    move-result v1

    add-int/2addr v1, p2

    .line 199
    :goto_6b
    if-ge v0, v4, :cond_7a

    .line 200
    aget-byte v5, v2, v0

    aget-byte v6, v3, v1

    if-eq v5, v6, :cond_75

    .line 201
    const/4 v0, 0x0

    .line 204
    :goto_74
    return v0

    .line 199
    :cond_75
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 204
    :cond_7a
    const/4 v0, 0x1

    goto :goto_74
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method protected final b(III)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    iget-object v2, p0, Lcom/google/tagmanager/a/ai;->c:[B

    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->b()I

    move-result v0

    add-int v1, v0, p2

    move v0, v1

    :goto_9
    add-int v3, v1, p3

    if-ge v0, v3, :cond_16

    mul-int/lit8 v3, p1, 0x1f

    aget-byte v4, v2, v0

    add-int p1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_16
    return p1
.end method

.method final b(Ljava/io/OutputStream;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/tagmanager/a/ai;->c:[B

    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->b()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 121
    return-void
.end method

.method public c()Lcom/google/tagmanager/a/h;
    .registers 3

    .prologue
    .line 278
    new-instance v0, Lcom/google/tagmanager/a/aj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/a/aj;-><init>(Lcom/google/tagmanager/a/ai;B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    if-ne p1, p0, :cond_6

    move v0, v1

    .line 166
    :goto_5
    return v0

    .line 152
    :cond_6
    instance-of v0, p1, Lcom/google/tagmanager/a/g;

    if-nez v0, :cond_c

    move v0, v2

    .line 153
    goto :goto_5

    .line 156
    :cond_c
    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v3

    move-object v0, p1

    check-cast v0, Lcom/google/tagmanager/a/g;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v0

    if-eq v3, v0, :cond_1b

    move v0, v2

    .line 157
    goto :goto_5

    .line 159
    :cond_1b
    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v0

    if-nez v0, :cond_23

    move v0, v1

    .line 160
    goto :goto_5

    .line 163
    :cond_23
    instance-of v0, p1, Lcom/google/tagmanager/a/ai;

    if-eqz v0, :cond_32

    .line 164
    check-cast p1, Lcom/google/tagmanager/a/ai;

    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/tagmanager/a/ai;->a(Lcom/google/tagmanager/a/ai;II)Z

    move-result v0

    goto :goto_5

    .line 165
    :cond_32
    instance-of v0, p1, Lcom/google/tagmanager/a/ap;

    if-eqz v0, :cond_3b

    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    .line 168
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Z
    .registers 4

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->b()I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/google/tagmanager/a/ai;->c:[B

    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/tagmanager/a/bg;->a([BII)Z

    move-result v0

    return v0
.end method

.method public final h()Lcom/google/tagmanager/a/j;
    .registers 2

    .prologue
    .line 270
    invoke-static {p0}, Lcom/google/tagmanager/a/j;->a(Lcom/google/tagmanager/a/ai;)Lcom/google/tagmanager/a/j;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 222
    iget v0, p0, Lcom/google/tagmanager/a/ai;->d:I

    .line 224
    if-nez v0, :cond_12

    .line 225
    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v0

    .line 226
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/tagmanager/a/ai;->b(III)I

    move-result v0

    .line 227
    if-nez v0, :cond_10

    .line 228
    const/4 v0, 0x1

    .line 230
    :cond_10
    iput v0, p0, Lcom/google/tagmanager/a/ai;->d:I

    .line 232
    :cond_12
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/tagmanager/a/ai;->c()Lcom/google/tagmanager/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected final j()I
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method protected final k()Z
    .registers 2

    .prologue
    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method protected final l()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lcom/google/tagmanager/a/ai;->d:I

    return v0
.end method
