.class public final Lcom/google/analytics/a/a/h;
.super Lcom/google/tagmanager/a/s;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/a/a/k;


# static fields
.field public static a:Lcom/google/tagmanager/a/ao;

.field private static final c:Lcom/google/analytics/a/a/h;

.field private static volatile m:Lcom/google/tagmanager/a/an;


# instance fields
.field private final d:Lcom/google/tagmanager/a/g;

.field private e:I

.field private f:Ljava/util/List;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2891
    new-instance v0, Lcom/google/analytics/a/a/i;

    invoke-direct {v0}, Lcom/google/analytics/a/a/i;-><init>()V

    sput-object v0, Lcom/google/analytics/a/a/h;->a:Lcom/google/tagmanager/a/ao;

    .line 3154
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/a/a/h;->m:Lcom/google/tagmanager/a/an;

    .line 3556
    new-instance v0, Lcom/google/analytics/a/a/h;

    invoke-direct {v0}, Lcom/google/analytics/a/a/h;-><init>()V

    .line 3557
    sput-object v0, Lcom/google/analytics/a/a/h;->c:Lcom/google/analytics/a/a/h;

    invoke-direct {v0}, Lcom/google/analytics/a/a/h;->o()V

    .line 3558
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 2791
    invoke-direct {p0}, Lcom/google/tagmanager/a/s;-><init>()V

    .line 3006
    iput-byte v0, p0, Lcom/google/analytics/a/a/h;->k:B

    .line 3040
    iput v0, p0, Lcom/google/analytics/a/a/h;->l:I

    .line 2791
    sget-object v0, Lcom/google/tagmanager/a/g;->a:Lcom/google/tagmanager/a/g;

    iput-object v0, p0, Lcom/google/analytics/a/a/h;->d:Lcom/google/tagmanager/a/g;

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 2806
    invoke-direct {p0}, Lcom/google/tagmanager/a/s;-><init>()V

    .line 3006
    iput-byte v1, p0, Lcom/google/analytics/a/a/h;->k:B

    .line 3040
    iput v1, p0, Lcom/google/analytics/a/a/h;->l:I

    .line 2807
    invoke-direct {p0}, Lcom/google/analytics/a/a/h;->o()V

    .line 2809
    invoke-static {}, Lcom/google/tagmanager/a/g;->i()Lcom/google/tagmanager/a/i;

    move-result-object v3

    .line 2811
    invoke-static {v3}, Lcom/google/tagmanager/a/l;->a(Ljava/io/OutputStream;)Lcom/google/tagmanager/a/l;

    move-result-object v4

    move v1, v0

    .line 2816
    :cond_16
    :goto_16
    if-nez v0, :cond_dd

    .line 2817
    :try_start_18
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->a()I

    move-result v5

    .line 2818
    sparse-switch v5, :sswitch_data_118

    .line 2823
    invoke-virtual {p0, p1, v4, p2, v5}, Lcom/google/analytics/a/a/h;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/l;Lcom/google/tagmanager/a/n;I)Z

    move-result v5

    if-nez v5, :cond_16

    move v0, v2

    .line 2825
    goto :goto_16

    :sswitch_27
    move v0, v2

    .line 2821
    goto :goto_16

    .line 2830
    :sswitch_29
    iget v5, p0, Lcom/google/analytics/a/a/h;->e:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/analytics/a/a/h;->e:I

    .line 2831
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->e()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/analytics/a/a/h;->j:Z
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_3c
    .catch Lcom/google/tagmanager/a/ae; {:try_start_18 .. :try_end_35} :catch_36
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_35} :catch_63

    goto :goto_16

    .line 2872
    :catch_36
    move-exception v0

    :try_start_37
    invoke-virtual {v0, p0}, Lcom/google/tagmanager/a/ae;->a(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3c

    .line 2878
    :catchall_3c
    move-exception v0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_49

    .line 2879
    iget-object v1, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    .line 2882
    :cond_49
    :try_start_49
    invoke-virtual {v4}, Lcom/google/tagmanager/a/l;->a()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_10f
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_106

    .line 2886
    invoke-virtual {v3}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/h;->d:Lcom/google/tagmanager/a/g;

    .line 2888
    :goto_52
    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->t()V

    throw v0

    .line 2835
    :sswitch_56
    :try_start_56
    iget v5, p0, Lcom/google/analytics/a/a/h;->e:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/analytics/a/a/h;->e:I

    .line 2836
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->d()I

    move-result v5

    iput v5, p0, Lcom/google/analytics/a/a/h;->g:I
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_3c
    .catch Lcom/google/tagmanager/a/ae; {:try_start_56 .. :try_end_62} :catch_36
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_62} :catch_63

    goto :goto_16

    .line 2874
    :catch_63
    move-exception v0

    .line 2875
    :try_start_64
    new-instance v5, Lcom/google/tagmanager/a/ae;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/tagmanager/a/ae;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/tagmanager/a/ae;->a(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0
    :try_end_72
    .catchall {:try_start_64 .. :try_end_72} :catchall_3c

    .line 2840
    :sswitch_72
    and-int/lit8 v5, v1, 0x1

    if-eq v5, v2, :cond_7f

    .line 2841
    :try_start_76
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    .line 2842
    or-int/lit8 v1, v1, 0x1

    .line 2844
    :cond_7f
    iget-object v5, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 2848
    :sswitch_8d
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->i()I

    move-result v5

    .line 2849
    invoke-virtual {p1, v5}, Lcom/google/tagmanager/a/j;->b(I)I

    move-result v5

    .line 2850
    and-int/lit8 v6, v1, 0x1

    if-eq v6, v2, :cond_a8

    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->m()I

    move-result v6

    if-lez v6, :cond_a8

    .line 2851
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    .line 2852
    or-int/lit8 v1, v1, 0x1

    .line 2854
    :cond_a8
    :goto_a8
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->m()I

    move-result v6

    if-lez v6, :cond_bc

    .line 2855
    iget-object v6, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 2857
    :cond_bc
    invoke-virtual {p1, v5}, Lcom/google/tagmanager/a/j;->c(I)V

    goto/16 :goto_16

    .line 2861
    :sswitch_c1
    iget v5, p0, Lcom/google/analytics/a/a/h;->e:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/analytics/a/a/h;->e:I

    .line 2862
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->d()I

    move-result v5

    iput v5, p0, Lcom/google/analytics/a/a/h;->h:I

    goto/16 :goto_16

    .line 2866
    :sswitch_cf
    iget v5, p0, Lcom/google/analytics/a/a/h;->e:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/analytics/a/a/h;->e:I

    .line 2867
    invoke-virtual {p1}, Lcom/google/tagmanager/a/j;->e()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/analytics/a/a/h;->i:Z
    :try_end_db
    .catchall {:try_start_76 .. :try_end_db} :catchall_3c
    .catch Lcom/google/tagmanager/a/ae; {:try_start_76 .. :try_end_db} :catch_36
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_db} :catch_63

    goto/16 :goto_16

    .line 2878
    :cond_dd
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v2, :cond_e9

    .line 2879
    iget-object v0, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    .line 2882
    :cond_e9
    :try_start_e9
    invoke-virtual {v4}, Lcom/google/tagmanager/a/l;->a()V
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_fe
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_f6

    .line 2886
    invoke-virtual {v3}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/h;->d:Lcom/google/tagmanager/a/g;

    .line 2888
    :goto_f2
    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->t()V

    .line 2889
    return-void

    .line 2886
    :catch_f6
    move-exception v0

    invoke-virtual {v3}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/h;->d:Lcom/google/tagmanager/a/g;

    goto :goto_f2

    :catchall_fe
    move-exception v0

    invoke-virtual {v3}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/h;->d:Lcom/google/tagmanager/a/g;

    throw v0

    :catch_106
    move-exception v1

    invoke-virtual {v3}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/h;->d:Lcom/google/tagmanager/a/g;

    goto/16 :goto_52

    :catchall_10f
    move-exception v0

    invoke-virtual {v3}, Lcom/google/tagmanager/a/i;->a()Lcom/google/tagmanager/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/h;->d:Lcom/google/tagmanager/a/g;

    throw v0

    .line 2818
    nop

    :sswitch_data_118
    .sparse-switch
        0x0 -> :sswitch_27
        0x8 -> :sswitch_29
        0x10 -> :sswitch_56
        0x18 -> :sswitch_72
        0x1a -> :sswitch_8d
        0x20 -> :sswitch_c1
        0x30 -> :sswitch_cf
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2782
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/h;-><init>(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/u;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 2788
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/s;-><init>(B)V

    .line 3006
    iput-byte v1, p0, Lcom/google/analytics/a/a/h;->k:B

    .line 3040
    iput v1, p0, Lcom/google/analytics/a/a/h;->l:I

    .line 2789
    invoke-virtual {p1}, Lcom/google/tagmanager/a/u;->h()Lcom/google/tagmanager/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/h;->d:Lcom/google/tagmanager/a/g;

    .line 2790
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/u;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2782
    invoke-direct {p0, p1}, Lcom/google/analytics/a/a/h;-><init>(Lcom/google/tagmanager/a/u;)V

    return-void
.end method

.method static synthetic a(Lcom/google/analytics/a/a/h;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2782
    iput p1, p0, Lcom/google/analytics/a/a/h;->g:I

    return p1
.end method

.method public static a()Lcom/google/analytics/a/a/h;
    .registers 1

    .prologue
    .line 2795
    sget-object v0, Lcom/google/analytics/a/a/h;->c:Lcom/google/analytics/a/a/h;

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/a/a/h;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/a/a/h;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2782
    iput-object p1, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/a/a/h;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2782
    iput-boolean p1, p0, Lcom/google/analytics/a/a/h;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/google/analytics/a/a/h;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2782
    iput p1, p0, Lcom/google/analytics/a/a/h;->h:I

    return p1
.end method

.method static synthetic b(Lcom/google/analytics/a/a/h;)Lcom/google/tagmanager/a/g;
    .registers 2
    .parameter

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/google/analytics/a/a/h;->d:Lcom/google/tagmanager/a/g;

    return-object v0
.end method

.method static synthetic b(Lcom/google/analytics/a/a/h;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2782
    iput-boolean p1, p0, Lcom/google/analytics/a/a/h;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/google/analytics/a/a/h;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2782
    iput p1, p0, Lcom/google/analytics/a/a/h;->e:I

    return p1
.end method

.method private o()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3000
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    .line 3001
    iput v1, p0, Lcom/google/analytics/a/a/h;->g:I

    .line 3002
    iput v1, p0, Lcom/google/analytics/a/a/h;->h:I

    .line 3003
    iput-boolean v1, p0, Lcom/google/analytics/a/a/h;->i:Z

    .line 3004
    iput-boolean v1, p0, Lcom/google/analytics/a/a/h;->j:Z

    .line 3005
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/tagmanager/a/ao;
    .registers 2

    .prologue
    .line 2903
    sget-object v0, Lcom/google/analytics/a/a/h;->a:Lcom/google/tagmanager/a/ao;

    return-object v0
.end method

.method public final c()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2939
    iget v1, p0, Lcom/google/analytics/a/a/h;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 2945
    iget v0, p0, Lcom/google/analytics/a/a/h;->g:I

    return v0
.end method

.method public final e()Z
    .registers 3

    .prologue
    .line 2956
    iget v0, p0, Lcom/google/analytics/a/a/h;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3085
    if-ne p1, p0, :cond_5

    .line 3116
    :cond_4
    :goto_4
    return v1

    .line 3088
    :cond_5
    instance-of v0, p1, Lcom/google/analytics/a/a/h;

    if-nez v0, :cond_e

    .line 3089
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    .line 3091
    :cond_e
    check-cast p1, Lcom/google/analytics/a/a/h;

    .line 3093
    iget-object v0, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    move v0, v1

    .line 3096
    :goto_1b
    if-eqz v0, :cond_8f

    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/h;->c()Z

    move-result v3

    if-ne v0, v3, :cond_8f

    move v0, v1

    .line 3097
    :goto_28
    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->c()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 3098
    if-eqz v0, :cond_91

    iget v0, p0, Lcom/google/analytics/a/a/h;->g:I

    iget v3, p1, Lcom/google/analytics/a/a/h;->g:I

    if-ne v0, v3, :cond_91

    move v0, v1

    .line 3101
    :cond_37
    :goto_37
    if-eqz v0, :cond_93

    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/h;->e()Z

    move-result v3

    if-ne v0, v3, :cond_93

    move v0, v1

    .line 3102
    :goto_44
    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->e()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 3103
    if-eqz v0, :cond_95

    iget v0, p0, Lcom/google/analytics/a/a/h;->h:I

    iget v3, p1, Lcom/google/analytics/a/a/h;->h:I

    if-ne v0, v3, :cond_95

    move v0, v1

    .line 3106
    :cond_53
    :goto_53
    if-eqz v0, :cond_97

    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/h;->g()Z

    move-result v3

    if-ne v0, v3, :cond_97

    move v0, v1

    .line 3107
    :goto_60
    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->g()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 3108
    if-eqz v0, :cond_99

    iget-boolean v0, p0, Lcom/google/analytics/a/a/h;->i:Z

    iget-boolean v3, p1, Lcom/google/analytics/a/a/h;->i:Z

    if-ne v0, v3, :cond_99

    move v0, v1

    .line 3111
    :cond_6f
    :goto_6f
    if-eqz v0, :cond_9b

    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->j()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/h;->j()Z

    move-result v3

    if-ne v0, v3, :cond_9b

    move v0, v1

    .line 3112
    :goto_7c
    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->j()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 3113
    if-eqz v0, :cond_8a

    iget-boolean v0, p0, Lcom/google/analytics/a/a/h;->j:Z

    iget-boolean v3, p1, Lcom/google/analytics/a/a/h;->j:Z

    if-eq v0, v3, :cond_4

    :cond_8a
    move v1, v2

    goto/16 :goto_4

    :cond_8d
    move v0, v2

    .line 3093
    goto :goto_1b

    :cond_8f
    move v0, v2

    .line 3096
    goto :goto_28

    :cond_91
    move v0, v2

    .line 3098
    goto :goto_37

    :cond_93
    move v0, v2

    .line 3101
    goto :goto_44

    :cond_95
    move v0, v2

    .line 3103
    goto :goto_53

    :cond_97
    move v0, v2

    .line 3106
    goto :goto_60

    :cond_99
    move v0, v2

    .line 3108
    goto :goto_6f

    :cond_9b
    move v0, v2

    .line 3111
    goto :goto_7c

    :cond_9d
    move v1, v0

    goto/16 :goto_4
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 2962
    iget v0, p0, Lcom/google/analytics/a/a/h;->h:I

    return v0
.end method

.method public final g()Z
    .registers 3

    .prologue
    .line 2973
    iget v0, p0, Lcom/google/analytics/a/a/h;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 2979
    iget-boolean v0, p0, Lcom/google/analytics/a/a/h;->i:Z

    return v0
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 3121
    iget v0, p0, Lcom/google/analytics/a/a/h;->b:I

    if-eqz v0, :cond_7

    .line 3122
    iget v0, p0, Lcom/google/analytics/a/a/h;->b:I

    .line 3150
    :goto_6
    return v0

    .line 3124
    :cond_7
    const-class v0, Lcom/google/analytics/a/a/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 3126
    iget-object v1, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 3127
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 3128
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/analytics/a/a/h;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3130
    :cond_24
    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->c()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3131
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 3132
    mul-int/lit8 v0, v0, 0x35

    iget v1, p0, Lcom/google/analytics/a/a/h;->g:I

    add-int/2addr v0, v1

    .line 3134
    :cond_33
    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->e()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 3135
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 3136
    mul-int/lit8 v0, v0, 0x35

    iget v1, p0, Lcom/google/analytics/a/a/h;->h:I

    add-int/2addr v0, v1

    .line 3138
    :cond_42
    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->g()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 3139
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    .line 3140
    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/google/analytics/a/a/h;->i:Z

    invoke-static {v1}, Lcom/google/tagmanager/a/ab;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 3143
    :cond_55
    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->j()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 3144
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 3145
    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/google/analytics/a/a/h;->j:Z

    invoke-static {v1}, Lcom/google/tagmanager/a/ab;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 3148
    :cond_68
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/google/analytics/a/a/h;->d:Lcom/google/tagmanager/a/g;

    invoke-virtual {v1}, Lcom/google/tagmanager/a/g;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3149
    iput v0, p0, Lcom/google/analytics/a/a/h;->b:I

    goto :goto_6
.end method

.method public final i()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3008
    iget-byte v2, p0, Lcom/google/analytics/a/a/h;->k:B

    .line 3009
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 3016
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 3009
    goto :goto_9

    .line 3011
    :cond_c
    invoke-virtual {p0}, Lcom/google/analytics/a/a/h;->c()Z

    move-result v2

    if-nez v2, :cond_16

    .line 3012
    iput-byte v1, p0, Lcom/google/analytics/a/a/h;->k:B

    move v0, v1

    .line 3013
    goto :goto_9

    .line 3015
    :cond_16
    iput-byte v0, p0, Lcom/google/analytics/a/a/h;->k:B

    goto :goto_9
.end method

.method public final j()Z
    .registers 3

    .prologue
    .line 2990
    iget v0, p0, Lcom/google/analytics/a/a/h;->e:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final synthetic k()Lcom/google/tagmanager/a/al;
    .registers 2

    .prologue
    .line 2782
    invoke-static {}, Lcom/google/analytics/a/a/j;->a()Lcom/google/analytics/a/a/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/a/a/j;->a(Lcom/google/analytics/a/a/h;)Lcom/google/analytics/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Lcom/google/tagmanager/a/al;
    .registers 2

    .prologue
    .line 2782
    invoke-static {}, Lcom/google/analytics/a/a/j;->a()Lcom/google/analytics/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/tagmanager/a/ak;
    .registers 2

    .prologue
    .line 2782
    sget-object v0, Lcom/google/analytics/a/a/h;->c:Lcom/google/analytics/a/a/h;

    return-object v0
.end method

.method public final n()Z
    .registers 2

    .prologue
    .line 2996
    iget-boolean v0, p0, Lcom/google/analytics/a/a/h;->j:Z

    return v0
.end method
