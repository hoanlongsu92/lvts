.class final Lcom/google/tagmanager/a/ap;
.super Lcom/google/tagmanager/a/g;
.source "RopeByteString.java"


# static fields
.field private static final c:[I


# instance fields
.field private final d:I

.field private final e:Lcom/google/tagmanager/a/g;

.field private final f:Lcom/google/tagmanager/a/g;

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 69
    :goto_7
    if-lez v0, :cond_15

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/2addr v1, v0

    move v4, v1

    move v1, v0

    move v0, v4

    .line 74
    goto :goto_7

    .line 78
    :cond_15
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/tagmanager/a/ap;->c:[I

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_29
    sget-object v0, Lcom/google/tagmanager/a/ap;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_40

    .line 82
    sget-object v3, Lcom/google/tagmanager/a/ap;->c:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 84
    :cond_40
    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/tagmanager/a/g;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/a/ap;->i:I

    .line 102
    iput-object p1, p0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    .line 103
    iput-object p2, p0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    .line 104
    invoke-virtual {p1}, Lcom/google/tagmanager/a/g;->a()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/a/ap;->g:I

    .line 105
    iget v0, p0, Lcom/google/tagmanager/a/ap;->g:I

    invoke-virtual {p2}, Lcom/google/tagmanager/a/g;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/a/ap;->d:I

    .line 106
    invoke-virtual {p1}, Lcom/google/tagmanager/a/g;->j()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/tagmanager/a/g;->j()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/a/ap;->h:I

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/a/ap;-><init>(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)V

    return-void
.end method

.method static synthetic a(Lcom/google/tagmanager/a/ap;)Lcom/google/tagmanager/a/g;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    return-object v0
.end method

.method static a(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/g;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x80

    .line 125
    instance-of v0, p0, Lcom/google/tagmanager/a/ap;

    if-eqz v0, :cond_16

    move-object v0, p0

    check-cast v0, Lcom/google/tagmanager/a/ap;

    .line 127
    :goto_9
    invoke-virtual {p1}, Lcom/google/tagmanager/a/g;->a()I

    move-result v1

    if-eqz v1, :cond_92

    .line 128
    invoke-virtual {p0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v1

    if-nez v1, :cond_18

    .line 173
    :goto_15
    return-object p1

    .line 125
    :cond_16
    const/4 v0, 0x0

    goto :goto_9

    .line 132
    :cond_18
    invoke-virtual {p0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/tagmanager/a/g;->a()I

    move-result v2

    add-int/2addr v1, v2

    .line 133
    if-ge v1, v4, :cond_28

    .line 136
    invoke-static {p0, p1}, Lcom/google/tagmanager/a/ap;->b(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/ai;

    move-result-object p1

    goto :goto_15

    .line 137
    :cond_28
    if-eqz v0, :cond_45

    iget-object v2, v0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/g;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/tagmanager/a/g;->a()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, v4, :cond_45

    .line 149
    iget-object v1, v0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    invoke-static {v1, p1}, Lcom/google/tagmanager/a/ap;->b(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/ai;

    move-result-object v1

    .line 150
    new-instance p1, Lcom/google/tagmanager/a/ap;

    iget-object v0, v0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    invoke-direct {p1, v0, v1}, Lcom/google/tagmanager/a/ap;-><init>(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)V

    goto :goto_15

    .line 151
    :cond_45
    if-eqz v0, :cond_6c

    iget-object v2, v0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/g;->j()I

    move-result v2

    iget-object v3, v0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    invoke-virtual {v3}, Lcom/google/tagmanager/a/g;->j()I

    move-result v3

    if-le v2, v3, :cond_6c

    iget v2, v0, Lcom/google/tagmanager/a/ap;->h:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/g;->j()I

    move-result v3

    if-le v2, v3, :cond_6c

    .line 159
    new-instance v1, Lcom/google/tagmanager/a/ap;

    iget-object v2, v0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    invoke-direct {v1, v2, p1}, Lcom/google/tagmanager/a/ap;-><init>(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)V

    .line 160
    new-instance p1, Lcom/google/tagmanager/a/ap;

    iget-object v0, v0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    invoke-direct {p1, v0, v1}, Lcom/google/tagmanager/a/ap;-><init>(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)V

    goto :goto_15

    .line 164
    :cond_6c
    invoke-virtual {p0}, Lcom/google/tagmanager/a/g;->j()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/tagmanager/a/g;->j()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 165
    sget-object v2, Lcom/google/tagmanager/a/ap;->c:[I

    aget v0, v2, v0

    if-lt v1, v0, :cond_87

    .line 167
    new-instance v0, Lcom/google/tagmanager/a/ap;

    invoke-direct {v0, p0, p1}, Lcom/google/tagmanager/a/ap;-><init>(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)V

    move-object p1, v0

    goto :goto_15

    .line 169
    :cond_87
    new-instance v0, Lcom/google/tagmanager/a/aq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/aq;-><init>(B)V

    invoke-static {v0, p0, p1}, Lcom/google/tagmanager/a/aq;->a(Lcom/google/tagmanager/a/aq;Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/g;

    move-result-object p1

    goto :goto_15

    :cond_92
    move-object p1, p0

    goto :goto_15
.end method

.method private static b(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/ai;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v0

    .line 187
    invoke-virtual {p1}, Lcom/google/tagmanager/a/g;->a()I

    move-result v1

    .line 188
    add-int v2, v0, v1

    new-array v2, v2, [B

    .line 189
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/tagmanager/a/g;->b([BIII)V

    .line 190
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/tagmanager/a/g;->b([BIII)V

    .line 191
    new-instance v0, Lcom/google/tagmanager/a/ai;

    invoke-direct {v0, v2}, Lcom/google/tagmanager/a/ai;-><init>([B)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/tagmanager/a/ap;)Lcom/google/tagmanager/a/g;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    return-object v0
.end method

.method static synthetic b()[I
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/tagmanager/a/ap;->c:[I

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lcom/google/tagmanager/a/ap;->d:I

    return v0
.end method

.method protected final a(III)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    add-int v0, p2, p3

    .line 409
    iget v1, p0, Lcom/google/tagmanager/a/ap;->g:I

    if-gt v0, v1, :cond_d

    .line 410
    iget-object v0, p0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/tagmanager/a/g;->a(III)I

    move-result v0

    .line 416
    :goto_c
    return v0

    .line 411
    :cond_d
    iget v0, p0, Lcom/google/tagmanager/a/ap;->g:I

    if-lt p2, v0, :cond_1c

    .line 412
    iget-object v0, p0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    iget v1, p0, Lcom/google/tagmanager/a/ap;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/tagmanager/a/g;->a(III)I

    move-result v0

    goto :goto_c

    .line 414
    :cond_1c
    iget v0, p0, Lcom/google/tagmanager/a/ap;->g:I

    sub-int/2addr v0, p2

    .line 415
    iget-object v1, p0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/tagmanager/a/g;->a(III)I

    move-result v1

    .line 416
    iget-object v2, p0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/tagmanager/a/g;->a(III)I

    move-result v0

    goto :goto_c
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 393
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/tagmanager/a/ap;->e()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected final a([BIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    add-int v0, p2, p4

    iget v1, p0, Lcom/google/tagmanager/a/ap;->g:I

    if-gt v0, v1, :cond_c

    .line 333
    iget-object v0, p0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/tagmanager/a/g;->a([BIII)V

    .line 343
    :goto_b
    return-void

    .line 334
    :cond_c
    iget v0, p0, Lcom/google/tagmanager/a/ap;->g:I

    if-lt p2, v0, :cond_1a

    .line 335
    iget-object v0, p0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    iget v1, p0, Lcom/google/tagmanager/a/ap;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/google/tagmanager/a/g;->a([BIII)V

    goto :goto_b

    .line 338
    :cond_1a
    iget v0, p0, Lcom/google/tagmanager/a/ap;->g:I

    sub-int/2addr v0, p2

    .line 339
    iget-object v1, p0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/tagmanager/a/g;->a([BIII)V

    .line 340
    iget-object v1, p0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v0, p4, v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/google/tagmanager/a/g;->a([BIII)V

    goto :goto_b
.end method

.method protected final b(III)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 539
    add-int v0, p2, p3

    .line 540
    iget v1, p0, Lcom/google/tagmanager/a/ap;->g:I

    if-gt v0, v1, :cond_d

    .line 541
    iget-object v0, p0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/tagmanager/a/g;->b(III)I

    move-result v0

    .line 547
    :goto_c
    return v0

    .line 542
    :cond_d
    iget v0, p0, Lcom/google/tagmanager/a/ap;->g:I

    if-lt p2, v0, :cond_1c

    .line 543
    iget-object v0, p0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    iget v1, p0, Lcom/google/tagmanager/a/ap;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/tagmanager/a/g;->b(III)I

    move-result v0

    goto :goto_c

    .line 545
    :cond_1c
    iget v0, p0, Lcom/google/tagmanager/a/ap;->g:I

    sub-int/2addr v0, p2

    .line 546
    iget-object v1, p0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/tagmanager/a/g;->b(III)I

    move-result v1

    .line 547
    iget-object v2, p0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/tagmanager/a/g;->b(III)I

    move-result v0

    goto :goto_c
.end method

.method final b(Ljava/io/OutputStream;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    add-int v0, p2, p3

    iget v1, p0, Lcom/google/tagmanager/a/ap;->g:I

    if-gt v0, v1, :cond_c

    .line 380
    iget-object v0, p0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/tagmanager/a/g;->b(Ljava/io/OutputStream;II)V

    .line 388
    :goto_b
    return-void

    .line 381
    :cond_c
    iget v0, p0, Lcom/google/tagmanager/a/ap;->g:I

    if-lt p2, v0, :cond_1a

    .line 382
    iget-object v0, p0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    iget v1, p0, Lcom/google/tagmanager/a/ap;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/tagmanager/a/g;->b(Ljava/io/OutputStream;II)V

    goto :goto_b

    .line 384
    :cond_1a
    iget v0, p0, Lcom/google/tagmanager/a/ap;->g:I

    sub-int/2addr v0, p2

    .line 385
    iget-object v1, p0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/tagmanager/a/g;->b(Ljava/io/OutputStream;II)V

    .line 386
    iget-object v1, p0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    const/4 v2, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/tagmanager/a/g;->b(Ljava/io/OutputStream;II)V

    goto :goto_b
.end method

.method public final c()Lcom/google/tagmanager/a/h;
    .registers 3

    .prologue
    .line 752
    new-instance v0, Lcom/google/tagmanager/a/as;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/a/as;-><init>(Lcom/google/tagmanager/a/ap;B)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 15
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 425
    if-ne p1, p0, :cond_6

    move v2, v7

    .line 452
    :cond_5
    :goto_5
    return v2

    .line 428
    :cond_6
    instance-of v0, p1, Lcom/google/tagmanager/a/g;

    if-eqz v0, :cond_5

    .line 432
    check-cast p1, Lcom/google/tagmanager/a/g;

    .line 433
    iget v0, p0, Lcom/google/tagmanager/a/ap;->d:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/g;->a()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 436
    iget v0, p0, Lcom/google/tagmanager/a/ap;->d:I

    if-nez v0, :cond_1a

    move v2, v7

    .line 437
    goto :goto_5

    .line 445
    :cond_1a
    iget v0, p0, Lcom/google/tagmanager/a/ap;->i:I

    if-eqz v0, :cond_28

    .line 446
    invoke-virtual {p1}, Lcom/google/tagmanager/a/g;->l()I

    move-result v0

    .line 447
    if-eqz v0, :cond_28

    iget v1, p0, Lcom/google/tagmanager/a/ap;->i:I

    if-ne v1, v0, :cond_5

    .line 452
    :cond_28
    new-instance v8, Lcom/google/tagmanager/a/ar;

    invoke-direct {v8, p0, v2}, Lcom/google/tagmanager/a/ar;-><init>(Lcom/google/tagmanager/a/g;B)V

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/ai;

    new-instance v9, Lcom/google/tagmanager/a/ar;

    invoke-direct {v9, p1, v2}, Lcom/google/tagmanager/a/ar;-><init>(Lcom/google/tagmanager/a/g;B)V

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/a/ai;

    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    move v0, v2

    :goto_43
    invoke-virtual {v5}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v1

    sub-int v10, v1, v6

    invoke-virtual {v3}, Lcom/google/tagmanager/a/ai;->a()I

    move-result v1

    sub-int v11, v1, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-nez v6, :cond_67

    invoke-virtual {v5, v3, v4, v12}, Lcom/google/tagmanager/a/ai;->a(Lcom/google/tagmanager/a/ai;II)Z

    move-result v1

    :goto_59
    if-eqz v1, :cond_5

    add-int v1, v0, v12

    iget v0, p0, Lcom/google/tagmanager/a/ap;->d:I

    if-lt v1, v0, :cond_72

    iget v0, p0, Lcom/google/tagmanager/a/ap;->d:I

    if-ne v1, v0, :cond_6c

    move v2, v7

    goto :goto_5

    :cond_67
    invoke-virtual {v3, v5, v6, v12}, Lcom/google/tagmanager/a/ai;->a(Lcom/google/tagmanager/a/ai;II)Z

    move-result v1

    goto :goto_59

    :cond_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_72
    if-ne v12, v10, :cond_88

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/ai;

    move-object v5, v0

    move v6, v2

    :goto_7c
    if-ne v12, v11, :cond_8a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/ai;

    move-object v3, v0

    move v4, v2

    move v0, v1

    goto :goto_43

    :cond_88
    add-int/2addr v6, v12

    goto :goto_7c

    :cond_8a
    add-int v0, v4, v12

    move v4, v0

    move v0, v1

    goto :goto_43
.end method

.method public final g()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-object v1, p0, Lcom/google/tagmanager/a/ap;->e:Lcom/google/tagmanager/a/g;

    iget v2, p0, Lcom/google/tagmanager/a/ap;->g:I

    invoke-virtual {v1, v0, v0, v2}, Lcom/google/tagmanager/a/g;->a(III)I

    move-result v1

    .line 402
    iget-object v2, p0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    iget-object v3, p0, Lcom/google/tagmanager/a/ap;->f:Lcom/google/tagmanager/a/g;

    invoke-virtual {v3}, Lcom/google/tagmanager/a/g;->a()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/tagmanager/a/g;->a(III)I

    move-result v1

    .line 403
    if-nez v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public final h()Lcom/google/tagmanager/a/j;
    .registers 2

    .prologue
    .line 556
    new-instance v0, Lcom/google/tagmanager/a/at;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/a/at;-><init>(Lcom/google/tagmanager/a/ap;)V

    invoke-static {v0}, Lcom/google/tagmanager/a/j;->a(Ljava/io/InputStream;)Lcom/google/tagmanager/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 519
    iget v0, p0, Lcom/google/tagmanager/a/ap;->i:I

    .line 521
    if-nez v0, :cond_12

    .line 522
    iget v0, p0, Lcom/google/tagmanager/a/ap;->d:I

    .line 523
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/tagmanager/a/ap;->d:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/tagmanager/a/ap;->b(III)I

    move-result v0

    .line 524
    if-nez v0, :cond_10

    .line 525
    const/4 v0, 0x1

    .line 527
    :cond_10
    iput v0, p0, Lcom/google/tagmanager/a/ap;->i:I

    .line 529
    :cond_12
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/tagmanager/a/ap;->c()Lcom/google/tagmanager/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected final j()I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Lcom/google/tagmanager/a/ap;->h:I

    return v0
.end method

.method protected final k()Z
    .registers 4

    .prologue
    .line 262
    iget v0, p0, Lcom/google/tagmanager/a/ap;->d:I

    sget-object v1, Lcom/google/tagmanager/a/ap;->c:[I

    iget v2, p0, Lcom/google/tagmanager/a/ap;->h:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected final l()I
    .registers 2

    .prologue
    .line 534
    iget v0, p0, Lcom/google/tagmanager/a/ap;->i:I

    return v0
.end method
