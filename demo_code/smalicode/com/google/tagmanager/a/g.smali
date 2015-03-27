.class public abstract Lcom/google/tagmanager/a/g;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final a:Lcom/google/tagmanager/a/g;

.field static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-class v0, Lcom/google/tagmanager/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/google/tagmanager/a/g;->b:Z

    .line 53
    new-instance v0, Lcom/google/tagmanager/a/ai;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ai;-><init>([B)V

    sput-object v0, Lcom/google/tagmanager/a/g;->a:Lcom/google/tagmanager/a/g;

    return-void

    :cond_16
    move v0, v1

    .line 32
    goto :goto_a
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/tagmanager/a/g;
    .registers 4
    .parameter

    .prologue
    .line 392
    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_27

    .line 393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/g;

    .line 395
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1d
    move-object p0, v1

    .line 401
    :goto_1e
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 402
    sget-object v0, Lcom/google/tagmanager/a/g;->a:Lcom/google/tagmanager/a/g;

    .line 406
    :goto_26
    return-object v0

    .line 398
    :cond_27
    check-cast p0, Ljava/util/Collection;

    goto :goto_1e

    .line 404
    :cond_2a
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/tagmanager/a/g;->a(Ljava/util/Iterator;I)Lcom/google/tagmanager/a/g;

    move-result-object v0

    goto :goto_26
.end method

.method private static a(Ljava/util/Iterator;I)Lcom/google/tagmanager/a/g;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 414
    sget-boolean v0, Lcom/google/tagmanager/a/g;->b:Z

    if-nez v0, :cond_c

    if-gtz p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 416
    :cond_c
    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 417
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/g;

    .line 424
    :goto_15
    return-object v0

    .line 419
    :cond_16
    ushr-int/lit8 v0, p1, 0x1

    .line 420
    invoke-static {p0, v0}, Lcom/google/tagmanager/a/g;->a(Ljava/util/Iterator;I)Lcom/google/tagmanager/a/g;

    move-result-object v1

    .line 421
    sub-int v0, p1, v0

    invoke-static {p0, v0}, Lcom/google/tagmanager/a/g;->a(Ljava/util/Iterator;I)Lcom/google/tagmanager/a/g;

    move-result-object v0

    .line 422
    invoke-virtual {v1, v0}, Lcom/google/tagmanager/a/g;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/g;

    move-result-object v0

    goto :goto_15
.end method

.method public static a([BII)Lcom/google/tagmanager/a/g;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    new-array v0, p2, [B

    .line 179
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    new-instance v1, Lcom/google/tagmanager/a/ai;

    invoke-direct {v1, v0}, Lcom/google/tagmanager/a/ai;-><init>([B)V

    return-object v1
.end method

.method public static i()Lcom/google/tagmanager/a/i;
    .registers 1

    .prologue
    .line 723
    new-instance v0, Lcom/google/tagmanager/a/i;

    invoke-direct {v0}, Lcom/google/tagmanager/a/i;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method protected abstract a(III)I
.end method

.method public final a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/g;
    .registers 8
    .parameter

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v0

    .line 369
    invoke-virtual {p1}, Lcom/google/tagmanager/a/g;->a()I

    move-result v1

    .line 370
    int-to-long v2, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-ltz v2, :cond_31

    .line 371
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ByteString would be too long: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_31
    invoke-static {p0, p1}, Lcom/google/tagmanager/a/ap;->a(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/g;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method final a(Ljava/io/OutputStream;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    if-gez p2, :cond_17

    .line 531
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source offset < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_17
    if-gez p3, :cond_2e

    .line 534
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_2e
    add-int v0, p2, p3

    invoke-virtual {p0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v1

    if-le v0, v1, :cond_4d

    .line 537
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source end offset exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v2, p2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_4d
    if-lez p3, :cond_52

    .line 541
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/tagmanager/a/g;->b(Ljava/io/OutputStream;II)V

    .line 544
    :cond_52
    return-void
.end method

.method protected abstract a([BIII)V
.end method

.method protected abstract b(III)I
.end method

.method abstract b(Ljava/io/OutputStream;II)V
.end method

.method public final b([BIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    if-gez p2, :cond_17

    .line 454
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source offset < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_17
    if-gez p3, :cond_2e

    .line 457
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target offset < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_2e
    if-gez p4, :cond_45

    .line 460
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_45
    add-int v0, p2, p4

    invoke-virtual {p0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v1

    if-le v0, v1, :cond_64

    .line 463
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source end offset < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v2, p2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_64
    add-int v0, p3, p4

    array-length v1, p1

    if-le v0, v1, :cond_80

    .line 467
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target end offset < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v2, p3, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_80
    if-lez p4, :cond_85

    .line 471
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/tagmanager/a/g;->a([BIII)V

    .line 473
    :cond_85
    return-void
.end method

.method public abstract c()Lcom/google/tagmanager/a/h;
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final e()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 500
    invoke-virtual {p0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v1

    .line 501
    if-nez v1, :cond_a

    .line 502
    sget-object v0, Lcom/google/tagmanager/a/ab;->a:[B

    .line 506
    :goto_9
    return-object v0

    .line 504
    :cond_a
    new-array v0, v1, [B

    .line 505
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/google/tagmanager/a/g;->a([BIII)V

    goto :goto_9
.end method

.method public final f()Ljava/lang/String;
    .registers 4

    .prologue
    .line 596
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/g;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 597
    :catch_7
    move-exception v0

    .line 598
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract g()Z
.end method

.method public abstract h()Lcom/google/tagmanager/a/j;
.end method

.method public abstract hashCode()I
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/tagmanager/a/g;->c()Lcom/google/tagmanager/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected abstract j()I
.end method

.method protected abstract k()Z
.end method

.method protected abstract l()I
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 985
    const-string v0, "<ByteString@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
