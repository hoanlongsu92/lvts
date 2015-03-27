.class final Lcom/google/tagmanager/a/at;
.super Ljava/io/InputStream;
.source "RopeByteString.java"


# instance fields
.field final synthetic a:Lcom/google/tagmanager/a/ap;

.field private b:Lcom/google/tagmanager/a/ar;

.field private c:Lcom/google/tagmanager/a/ai;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/a/ap;)V
    .registers 2
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/google/tagmanager/a/at;->a:Lcom/google/tagmanager/a/ap;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 807
    invoke-direct {p0}, Lcom/google/tagmanager/a/at;->a()V

    .line 808
    return-void
.end method

.method private a([BII)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 841
    move v1, p3

    move v0, p2

    .line 842
    :goto_2
    if-lez v1, :cond_29

    .line 843
    invoke-direct {p0}, Lcom/google/tagmanager/a/at;->b()V

    .line 844
    iget-object v2, p0, Lcom/google/tagmanager/a/at;->c:Lcom/google/tagmanager/a/ai;

    if-nez v2, :cond_f

    .line 845
    if-ne v1, p3, :cond_29

    .line 847
    const/4 v0, -0x1

    .line 863
    :goto_e
    return v0

    .line 852
    :cond_f
    iget v2, p0, Lcom/google/tagmanager/a/at;->d:I

    iget v3, p0, Lcom/google/tagmanager/a/at;->e:I

    sub-int/2addr v2, v3

    .line 853
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 854
    if-eqz p1, :cond_22

    .line 855
    iget-object v3, p0, Lcom/google/tagmanager/a/at;->c:Lcom/google/tagmanager/a/ai;

    iget v4, p0, Lcom/google/tagmanager/a/at;->e:I

    invoke-virtual {v3, p1, v4, v0, v2}, Lcom/google/tagmanager/a/ai;->b([BIII)V

    .line 856
    add-int/2addr v0, v2

    .line 858
    :cond_22
    iget v3, p0, Lcom/google/tagmanager/a/at;->e:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/tagmanager/a/at;->e:I

    .line 859
    sub-int/2addr v1, v2

    .line 860
    goto :goto_2

    .line 863
    :cond_29
    sub-int v0, p3, v1

    goto :goto_e
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 902
    new-instance v0, Lcom/google/tagmanager/a/ar;

    iget-object v1, p0, Lcom/google/tagmanager/a/at;->a:Lcom/google/tagmanager/a/ap;

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/a/ar;-><init>(Lcom/google/tagmanager/a/g;B)V

    iput-object v0, p0, Lcom/google/tagmanager/a/at;->b:Lcom/google/tagmanager/a/ar;

    .line 903
    iget-object v0, p0, Lcom/google/tagmanager/a/at;->b:Lcom/google/tagmanager/a/ar;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ar;->a()Lcom/google/tagmanager/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/at;->c:Lcom/google/tagmanager/a/ai;

    .line 904
    iget-object v0, p0, Lcom/google/tagmanager/a/at;->c:Lcom/google/tagmanager/a/ai;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/a/at;->d:I

    .line 905
    iput v2, p0, Lcom/google/tagmanager/a/at;->e:I

    .line 906
    iput v2, p0, Lcom/google/tagmanager/a/at;->f:I

    .line 907
    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 915
    iget-object v0, p0, Lcom/google/tagmanager/a/at;->c:Lcom/google/tagmanager/a/ai;

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/google/tagmanager/a/at;->e:I

    iget v1, p0, Lcom/google/tagmanager/a/at;->d:I

    if-ne v0, v1, :cond_2c

    .line 918
    iget v0, p0, Lcom/google/tagmanager/a/at;->f:I

    iget v1, p0, Lcom/google/tagmanager/a/at;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/a/at;->f:I

    .line 919
    iput v2, p0, Lcom/google/tagmanager/a/at;->e:I

    .line 920
    iget-object v0, p0, Lcom/google/tagmanager/a/at;->b:Lcom/google/tagmanager/a/ar;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ar;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 921
    iget-object v0, p0, Lcom/google/tagmanager/a/at;->b:Lcom/google/tagmanager/a/ar;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ar;->a()Lcom/google/tagmanager/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/at;->c:Lcom/google/tagmanager/a/ai;

    .line 922
    iget-object v0, p0, Lcom/google/tagmanager/a/at;->c:Lcom/google/tagmanager/a/ai;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/a/at;->d:I

    .line 928
    :cond_2c
    :goto_2c
    return-void

    .line 924
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/tagmanager/a/at;->c:Lcom/google/tagmanager/a/ai;

    .line 925
    iput v2, p0, Lcom/google/tagmanager/a/at;->d:I

    goto :goto_2c
.end method


# virtual methods
.method public final available()I
    .registers 3

    .prologue
    .line 878
    iget v0, p0, Lcom/google/tagmanager/a/at;->f:I

    iget v1, p0, Lcom/google/tagmanager/a/at;->e:I

    add-int/2addr v0, v1

    .line 879
    iget-object v1, p0, Lcom/google/tagmanager/a/at;->a:Lcom/google/tagmanager/a/ap;

    invoke-virtual {v1}, Lcom/google/tagmanager/a/ap;->a()I

    move-result v1

    sub-int v0, v1, v0

    return v0
.end method

.method public final mark(I)V
    .registers 4
    .parameter

    .prologue
    .line 890
    iget v0, p0, Lcom/google/tagmanager/a/at;->f:I

    iget v1, p0, Lcom/google/tagmanager/a/at;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/a/at;->g:I

    .line 891
    return-void
.end method

.method public final markSupported()Z
    .registers 2

    .prologue
    .line 884
    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .registers 4

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/google/tagmanager/a/at;->b()V

    .line 869
    iget-object v0, p0, Lcom/google/tagmanager/a/at;->c:Lcom/google/tagmanager/a/ai;

    if-nez v0, :cond_9

    .line 870
    const/4 v0, -0x1

    .line 872
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/tagmanager/a/at;->c:Lcom/google/tagmanager/a/ai;

    iget v1, p0, Lcom/google/tagmanager/a/at;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/a/at;->e:I

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/ai;->a(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_8
.end method

.method public final read([BII)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 812
    if-nez p1, :cond_8

    .line 813
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 814
    :cond_8
    if-ltz p2, :cond_10

    if-ltz p3, :cond_10

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_16

    .line 815
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 817
    :cond_16
    invoke-direct {p0, p1, p2, p3}, Lcom/google/tagmanager/a/at;->a([BII)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized reset()V
    .registers 4

    .prologue
    .line 896
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/tagmanager/a/at;->a()V

    .line 897
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/tagmanager/a/at;->g:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/tagmanager/a/at;->a([BII)I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 898
    monitor-exit p0

    return-void

    .line 896
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .registers 7
    .parameter

    .prologue
    const-wide/32 v0, 0x7fffffff

    .line 822
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_f

    .line 823
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 824
    :cond_f
    cmp-long v2, p1, v0

    if-lez v2, :cond_14

    move-wide p1, v0

    .line 827
    :cond_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int v2, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/tagmanager/a/at;->a([BII)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
