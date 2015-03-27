.class final Lcom/google/tagmanager/a/p;
.super Ljava/lang/Object;
.source "FieldSet.java"


# static fields
.field private static final d:Lcom/google/tagmanager/a/p;


# instance fields
.field private final a:Lcom/google/tagmanager/a/au;

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 76
    new-instance v0, Lcom/google/tagmanager/a/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/p;-><init>(B)V

    sput-object v0, Lcom/google/tagmanager/a/p;->d:Lcom/google/tagmanager/a/p;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tagmanager/a/p;->c:Z

    .line 51
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/tagmanager/a/au;->a(I)Lcom/google/tagmanager/a/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    .line 52
    return-void
.end method

.method private constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/google/tagmanager/a/p;->c:Z

    .line 59
    invoke-static {v0}, Lcom/google/tagmanager/a/au;->a(I)Lcom/google/tagmanager/a/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    .line 60
    invoke-virtual {p0}, Lcom/google/tagmanager/a/p;->c()V

    .line 61
    return-void
.end method

.method static a(Lcom/google/tagmanager/a/bi;Z)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 560
    if-eqz p1, :cond_4

    .line 561
    const/4 v0, 0x2

    .line 563
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/tagmanager/a/bi;->b()I

    move-result v0

    goto :goto_3
.end method

.method public static a()Lcom/google/tagmanager/a/p;
    .registers 1

    .prologue
    .line 66
    new-instance v0, Lcom/google/tagmanager/a/p;

    invoke-direct {v0}, Lcom/google/tagmanager/a/p;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/bi;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 643
    sget-object v0, Lcom/google/tagmanager/a/q;->b:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/bi;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_be

    .line 677
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 662
    :goto_1f
    return-object v0

    .line 645
    :pswitch_20
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->b()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1f

    .line 646
    :pswitch_29
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1f

    .line 647
    :pswitch_32
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1f

    .line 648
    :pswitch_3b
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1f

    .line 649
    :pswitch_44
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1f

    .line 650
    :pswitch_4d
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1f

    .line 651
    :pswitch_56
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1f

    .line 652
    :pswitch_5f
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 657
    :pswitch_64
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->g()Lcom/google/tagmanager/a/g;

    move-result-object v0

    goto :goto_1f

    .line 658
    :pswitch_69
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1f

    .line 659
    :pswitch_72
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1f

    .line 660
    :pswitch_7b
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1f

    .line 661
    :pswitch_84
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->i()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1f

    .line 662
    :pswitch_93
    invoke-virtual {p0}, Lcom/google/tagmanager/a/j;->j()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_1f

    .line 665
    :pswitch_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :pswitch_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :pswitch_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_13
        :pswitch_20
        :pswitch_29
        :pswitch_32
        :pswitch_3b
        :pswitch_44
        :pswitch_4d
        :pswitch_56
        :pswitch_5f
        :pswitch_64
        :pswitch_69
        :pswitch_72
        :pswitch_7b
        :pswitch_84
        :pswitch_93
        :pswitch_a5
        :pswitch_ad
        :pswitch_b5
    .end packed-switch
.end method

.method private static a(Lcom/google/tagmanager/a/bi;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 459
    if-nez p1, :cond_a

    .line 460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 464
    :cond_a
    sget-object v2, Lcom/google/tagmanager/a/q;->a:[I

    invoke-virtual {p0}, Lcom/google/tagmanager/a/bi;->a()Lcom/google/tagmanager/a/bn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/tagmanager/a/bn;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_54

    .line 486
    :cond_19
    :goto_19
    if-nez v0, :cond_53

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :pswitch_23
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_19

    .line 466
    :pswitch_26
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_19

    .line 467
    :pswitch_29
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_19

    .line 468
    :pswitch_2c
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_19

    .line 469
    :pswitch_2f
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_19

    .line 470
    :pswitch_32
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_19

    .line 472
    :pswitch_35
    instance-of v2, p1, Lcom/google/tagmanager/a/g;

    if-nez v2, :cond_3d

    instance-of v2, p1, [B

    if-eqz v2, :cond_19

    :cond_3d
    move v0, v1

    goto :goto_19

    .line 476
    :pswitch_3f
    instance-of v2, p1, Ljava/lang/Integer;

    if-nez v2, :cond_47

    instance-of v2, p1, Lcom/google/tagmanager/a/ac;

    if-eqz v2, :cond_19

    :cond_47
    move v0, v1

    goto :goto_19

    .line 481
    :pswitch_49
    instance-of v2, p1, Lcom/google/tagmanager/a/ak;

    if-nez v2, :cond_51

    instance-of v2, p1, Lcom/google/tagmanager/a/af;

    if-eqz v2, :cond_19

    :cond_51
    move v0, v1

    goto :goto_19

    .line 497
    :cond_53
    return-void

    .line 464
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_3f
        :pswitch_49
    .end packed-switch
.end method

.method private static a(Ljava/util/Map$Entry;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 526
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/r;

    .line 527
    invoke-interface {v0}, Lcom/google/tagmanager/a/r;->b()Lcom/google/tagmanager/a/bn;

    move-result-object v3

    sget-object v4, Lcom/google/tagmanager/a/bn;->i:Lcom/google/tagmanager/a/bn;

    if-ne v3, v4, :cond_54

    .line 528
    invoke-interface {v0}, Lcom/google/tagmanager/a/r;->c()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 530
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/ak;

    .line 531
    invoke-interface {v0}, Lcom/google/tagmanager/a/ak;->i()Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v1

    .line 549
    :goto_33
    return v0

    .line 536
    :cond_34
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 537
    instance-of v3, v0, Lcom/google/tagmanager/a/ak;

    if-eqz v3, :cond_46

    .line 538
    check-cast v0, Lcom/google/tagmanager/a/ak;

    invoke-interface {v0}, Lcom/google/tagmanager/a/ak;->i()Z

    move-result v0

    if-nez v0, :cond_54

    move v0, v1

    .line 539
    goto :goto_33

    .line 541
    :cond_46
    instance-of v0, v0, Lcom/google/tagmanager/a/af;

    if-eqz v0, :cond_4c

    move v0, v2

    .line 542
    goto :goto_33

    .line 544
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    move v0, v2

    .line 549
    goto :goto_33
.end method

.method public static b()Lcom/google/tagmanager/a/p;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/tagmanager/a/p;->d:Lcom/google/tagmanager/a/p;

    return-object v0
.end method

.method private b(Ljava/util/Map$Entry;)V
    .registers 6
    .parameter

    .prologue
    .line 584
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/r;

    .line 585
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 586
    instance-of v2, v1, Lcom/google/tagmanager/a/af;

    if-eqz v2, :cond_14

    .line 587
    check-cast v1, Lcom/google/tagmanager/a/af;

    invoke-virtual {v1}, Lcom/google/tagmanager/a/af;->a()Lcom/google/tagmanager/a/ak;

    move-result-object v1

    .line 590
    :cond_14
    invoke-interface {v0}, Lcom/google/tagmanager/a/r;->c()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 591
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/r;)Ljava/lang/Object;

    move-result-object v2

    .line 592
    if-nez v2, :cond_2d

    .line 596
    iget-object v2, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    new-instance v3, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0, v3}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :goto_2c
    return-void

    :cond_2d
    move-object v0, v2

    .line 599
    check-cast v0, Ljava/util/List;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2c

    .line 601
    :cond_36
    invoke-interface {v0}, Lcom/google/tagmanager/a/r;->b()Lcom/google/tagmanager/a/bn;

    move-result-object v2

    sget-object v3, Lcom/google/tagmanager/a/bn;->i:Lcom/google/tagmanager/a/bn;

    if-ne v2, v3, :cond_6c

    .line 602
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/r;)Ljava/lang/Object;

    move-result-object v2

    .line 603
    if-nez v2, :cond_4a

    .line 604
    iget-object v2, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v2, v0, v1}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 607
    :cond_4a
    instance-of v3, v2, Lcom/google/tagmanager/a/an;

    if-eqz v3, :cond_5b

    move-object v1, v2

    .line 608
    check-cast v1, Lcom/google/tagmanager/a/an;

    invoke-interface {v0, v1}, Lcom/google/tagmanager/a/r;->a(Lcom/google/tagmanager/a/an;)Lcom/google/tagmanager/a/an;

    move-result-object v1

    .line 616
    :goto_55
    iget-object v2, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v2, v0, v1}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 611
    :cond_5b
    check-cast v2, Lcom/google/tagmanager/a/ak;

    invoke-interface {v2}, Lcom/google/tagmanager/a/ak;->k()Lcom/google/tagmanager/a/al;

    move-result-object v2

    check-cast v1, Lcom/google/tagmanager/a/ak;

    invoke-interface {v0, v2, v1}, Lcom/google/tagmanager/a/r;->a(Lcom/google/tagmanager/a/al;Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/tagmanager/a/al;->e()Lcom/google/tagmanager/a/ak;

    move-result-object v1

    goto :goto_55

    .line 619
    :cond_6c
    iget-object v2, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v2, v0, v1}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c
.end method


# virtual methods
.method public final a(Lcom/google/tagmanager/a/r;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/a/au;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    instance-of v1, v0, Lcom/google/tagmanager/a/af;

    if-eqz v1, :cond_10

    .line 317
    check-cast v0, Lcom/google/tagmanager/a/af;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/af;->a()Lcom/google/tagmanager/a/ak;

    move-result-object v0

    .line 319
    :cond_10
    return-object v0
.end method

.method public final a(Lcom/google/tagmanager/a/p;)V
    .registers 4
    .parameter

    .prologue
    .line 572
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v1}, Lcom/google/tagmanager/a/au;->c()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 573
    iget-object v1, p1, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/a/au;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/tagmanager/a/p;->b(Ljava/util/Map$Entry;)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 576
    :cond_15
    iget-object v0, p1, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/au;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 577
    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/p;->b(Ljava/util/Map$Entry;)V

    goto :goto_1f

    .line 579
    :cond_2f
    return-void
.end method

.method public final a(Lcom/google/tagmanager/a/r;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-interface {p1}, Lcom/google/tagmanager/a/r;->c()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 330
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_12

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 340
    invoke-interface {p1}, Lcom/google/tagmanager/a/r;->a()Lcom/google/tagmanager/a/bi;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/bi;Ljava/lang/Object;)V

    goto :goto_20

    :cond_32
    move-object p2, v0

    .line 347
    :goto_33
    instance-of v0, p2, Lcom/google/tagmanager/a/af;

    if-eqz v0, :cond_3a

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/a/p;->c:Z

    .line 350
    :cond_3a
    iget-object v0, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v0, p1, p2}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-void

    .line 344
    :cond_40
    invoke-interface {p1}, Lcom/google/tagmanager/a/r;->a()Lcom/google/tagmanager/a/bi;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/bi;Ljava/lang/Object;)V

    goto :goto_33
.end method

.method public final b(Lcom/google/tagmanager/a/r;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 431
    invoke-interface {p1}, Lcom/google/tagmanager/a/r;->c()Z

    move-result v0

    if-nez v0, :cond_e

    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_e
    invoke-interface {p1}, Lcom/google/tagmanager/a/r;->a()Lcom/google/tagmanager/a/bi;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/bi;Ljava/lang/Object;)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/r;)Ljava/lang/Object;

    move-result-object v0

    .line 440
    if-nez v0, :cond_29

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    iget-object v1, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v1, p1, v0}, Lcom/google/tagmanager/a/au;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :goto_25
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    return-void

    .line 444
    :cond_29
    check-cast v0, Ljava/util/List;

    goto :goto_25
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/tagmanager/a/p;->b:Z

    if-eqz v0, :cond_5

    .line 86
    :goto_4
    return-void

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/au;->a()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/a/p;->b:Z

    goto :goto_4
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/tagmanager/a/p;->d()Lcom/google/tagmanager/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/tagmanager/a/p;
    .registers 5

    .prologue
    .line 108
    new-instance v2, Lcom/google/tagmanager/a/p;

    invoke-direct {v2}, Lcom/google/tagmanager/a/p;-><init>()V

    .line 109
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/au;->c()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 110
    iget-object v0, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/au;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 111
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/r;

    .line 112
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/r;Ljava/lang/Object;)V

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 115
    :cond_26
    iget-object v0, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/au;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/a/r;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/tagmanager/a/p;->a(Lcom/google/tagmanager/a/r;Ljava/lang/Object;)V

    goto :goto_30

    .line 119
    :cond_4a
    iget-boolean v0, p0, Lcom/google/tagmanager/a/p;->c:Z

    iput-boolean v0, v2, Lcom/google/tagmanager/a/p;->c:Z

    .line 120
    return-object v2
.end method

.method public final e()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 509
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/au;->c()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 510
    iget-object v2, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v2, v0}, Lcom/google/tagmanager/a/au;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/a/p;->a(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 520
    :goto_16
    return v1

    .line 509
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 515
    :cond_1a
    iget-object v0, p0, Lcom/google/tagmanager/a/p;->a:Lcom/google/tagmanager/a/au;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/au;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 516
    invoke-static {v0}, Lcom/google/tagmanager/a/p;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_16

    .line 520
    :cond_37
    const/4 v1, 0x1

    goto :goto_16
.end method
