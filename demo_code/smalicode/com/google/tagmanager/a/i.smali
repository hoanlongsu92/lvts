.class public final Lcom/google/tagmanager/a/i;
.super Ljava/io/OutputStream;
.source "ByteString.java"


# static fields
.field private static final a:[B


# instance fields
.field private final b:I

.field private final c:Ljava/util/ArrayList;

.field private d:I

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 737
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/tagmanager/a/i;->a:[B

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x80

    .line 755
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 756
    iput v1, p0, Lcom/google/tagmanager/a/i;->b:I

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/a/i;->c:Ljava/util/ArrayList;

    .line 761
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/google/tagmanager/a/i;->e:[B

    .line 762
    return-void
.end method

.method private a(I)V
    .registers 5
    .parameter

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/tagmanager/a/i;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/tagmanager/a/ai;

    iget-object v2, p0, Lcom/google/tagmanager/a/i;->e:[B

    invoke-direct {v1, v2}, Lcom/google/tagmanager/a/ai;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    iget v0, p0, Lcom/google/tagmanager/a/i;->d:I

    iget-object v1, p0, Lcom/google/tagmanager/a/i;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/a/i;->d:I

    .line 868
    iget v0, p0, Lcom/google/tagmanager/a/i;->b:I

    iget v1, p0, Lcom/google/tagmanager/a/i;->d:I

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 870
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/tagmanager/a/i;->e:[B

    .line 871
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/a/i;->f:I

    .line 872
    return-void
.end method

.method private declared-synchronized b()I
    .registers 3

    .prologue
    .line 837
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/tagmanager/a/i;->d:I

    iget v1, p0, Lcom/google/tagmanager/a/i;->f:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/tagmanager/a/g;
    .registers 6

    .prologue
    .line 799
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/tagmanager/a/i;->f:I

    iget-object v1, p0, Lcom/google/tagmanager/a/i;->e:[B

    array-length v1, v1

    if-ge v0, v1, :cond_35

    iget v0, p0, Lcom/google/tagmanager/a/i;->f:I

    if-lez v0, :cond_23

    iget v0, p0, Lcom/google/tagmanager/a/i;->f:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/tagmanager/a/i;->e:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/tagmanager/a/i;->f:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/tagmanager/a/i;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/tagmanager/a/ai;

    invoke-direct {v2, v0}, Lcom/google/tagmanager/a/ai;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_23
    iget v0, p0, Lcom/google/tagmanager/a/i;->d:I

    iget v1, p0, Lcom/google/tagmanager/a/i;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/a/i;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/a/i;->f:I

    .line 800
    iget-object v0, p0, Lcom/google/tagmanager/a/i;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/tagmanager/a/g;->a(Ljava/lang/Iterable;)Lcom/google/tagmanager/a/g;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_46

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 799
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/google/tagmanager/a/i;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/tagmanager/a/ai;

    iget-object v2, p0, Lcom/google/tagmanager/a/i;->e:[B

    invoke-direct {v1, v2}, Lcom/google/tagmanager/a/ai;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/tagmanager/a/i;->a:[B

    iput-object v0, p0, Lcom/google/tagmanager/a/i;->e:[B
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_46

    goto :goto_23

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 853
    const-string v0, "<ByteString.Output@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/tagmanager/a/i;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized write(I)V
    .registers 5
    .parameter

    .prologue
    .line 766
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/tagmanager/a/i;->f:I

    iget-object v1, p0, Lcom/google/tagmanager/a/i;->e:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    .line 767
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/i;->a(I)V

    .line 769
    :cond_c
    iget-object v0, p0, Lcom/google/tagmanager/a/i;->e:[B

    iget v1, p0, Lcom/google/tagmanager/a/i;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/a/i;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 770
    monitor-exit p0

    return-void

    .line 766
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([BII)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 774
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/a/i;->e:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/tagmanager/a/i;->f:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_17

    .line 776
    iget-object v0, p0, Lcom/google/tagmanager/a/i;->e:[B

    iget v1, p0, Lcom/google/tagmanager/a/i;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    iget v0, p0, Lcom/google/tagmanager/a/i;->f:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/tagmanager/a/i;->f:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_34

    .line 790
    :goto_15
    monitor-exit p0

    return-void

    .line 780
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/google/tagmanager/a/i;->e:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/tagmanager/a/i;->f:I

    sub-int/2addr v0, v1

    .line 781
    iget-object v1, p0, Lcom/google/tagmanager/a/i;->e:[B

    iget v2, p0, Lcom/google/tagmanager/a/i;->f:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    add-int v1, p2, v0

    .line 783
    sub-int v0, p3, v0

    .line 786
    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/i;->a(I)V

    .line 787
    iget-object v2, p0, Lcom/google/tagmanager/a/i;->e:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    iput v0, p0, Lcom/google/tagmanager/a/i;->f:I
    :try_end_33
    .catchall {:try_start_17 .. :try_end_33} :catchall_34

    goto :goto_15

    .line 774
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method
