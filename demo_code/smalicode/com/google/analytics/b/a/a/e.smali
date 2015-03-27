.class public final enum Lcom/google/analytics/b/a/a/e;
.super Ljava/lang/Enum;
.source "TypeSystem.java"

# interfaces
.implements Lcom/google/tagmanager/a/ac;


# static fields
.field public static final enum a:Lcom/google/analytics/b/a/a/e;

.field public static final enum b:Lcom/google/analytics/b/a/a/e;

.field public static final enum c:Lcom/google/analytics/b/a/a/e;

.field public static final enum d:Lcom/google/analytics/b/a/a/e;

.field public static final enum e:Lcom/google/analytics/b/a/a/e;

.field public static final enum f:Lcom/google/analytics/b/a/a/e;

.field public static final enum g:Lcom/google/analytics/b/a/a/e;

.field public static final enum h:Lcom/google/analytics/b/a/a/e;

.field public static final enum i:Lcom/google/analytics/b/a/a/e;

.field public static final enum j:Lcom/google/analytics/b/a/a/e;

.field public static final enum k:Lcom/google/analytics/b/a/a/e;

.field public static final enum l:Lcom/google/analytics/b/a/a/e;

.field public static final enum m:Lcom/google/analytics/b/a/a/e;

.field public static final enum n:Lcom/google/analytics/b/a/a/e;

.field public static final enum o:Lcom/google/analytics/b/a/a/e;

.field public static final enum p:Lcom/google/analytics/b/a/a/e;

.field public static final enum q:Lcom/google/analytics/b/a/a/e;

.field private static r:Lcom/google/tagmanager/a/ad;

.field private static final synthetic t:[Lcom/google/analytics/b/a/a/e;


# instance fields
.field private final s:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 492
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "ESCAPE_HTML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->a:Lcom/google/analytics/b/a/a/e;

    .line 496
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "ESCAPE_HTML_RCDATA"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->b:Lcom/google/analytics/b/a/a/e;

    .line 500
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "ESCAPE_HTML_ATTRIBUTE"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->c:Lcom/google/analytics/b/a/a/e;

    .line 504
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "ESCAPE_HTML_ATTRIBUTE_NOSPACE"

    invoke-direct {v0, v1, v6, v7}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->d:Lcom/google/analytics/b/a/a/e;

    .line 508
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "FILTER_HTML_ELEMENT_NAME"

    invoke-direct {v0, v1, v7, v8}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->e:Lcom/google/analytics/b/a/a/e;

    .line 512
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "FILTER_HTML_ATTRIBUTES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->f:Lcom/google/analytics/b/a/a/e;

    .line 516
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "ESCAPE_JS_STRING"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->g:Lcom/google/analytics/b/a/a/e;

    .line 520
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "ESCAPE_JS_VALUE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->h:Lcom/google/analytics/b/a/a/e;

    .line 524
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "ESCAPE_JS_REGEX"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->i:Lcom/google/analytics/b/a/a/e;

    .line 528
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "ESCAPE_CSS_STRING"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->j:Lcom/google/analytics/b/a/a/e;

    .line 532
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "FILTER_CSS_VALUE"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->k:Lcom/google/analytics/b/a/a/e;

    .line 536
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "ESCAPE_URI"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->l:Lcom/google/analytics/b/a/a/e;

    .line 540
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "NORMALIZE_URI"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->m:Lcom/google/analytics/b/a/a/e;

    .line 544
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "FILTER_NORMALIZE_URI"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->n:Lcom/google/analytics/b/a/a/e;

    .line 548
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "NO_AUTOESCAPE"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->o:Lcom/google/analytics/b/a/a/e;

    .line 552
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "TEXT"

    const/16 v2, 0xf

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->p:Lcom/google/analytics/b/a/a/e;

    .line 556
    new-instance v0, Lcom/google/analytics/b/a/a/e;

    const-string v1, "CONVERT_JS_VALUE_TO_EXPRESSION"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->q:Lcom/google/analytics/b/a/a/e;

    .line 487
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/google/analytics/b/a/a/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/analytics/b/a/a/e;->a:Lcom/google/analytics/b/a/a/e;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/analytics/b/a/a/e;->b:Lcom/google/analytics/b/a/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/analytics/b/a/a/e;->c:Lcom/google/analytics/b/a/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/analytics/b/a/a/e;->d:Lcom/google/analytics/b/a/a/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/analytics/b/a/a/e;->e:Lcom/google/analytics/b/a/a/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/analytics/b/a/a/e;->f:Lcom/google/analytics/b/a/a/e;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/google/analytics/b/a/a/e;->g:Lcom/google/analytics/b/a/a/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/analytics/b/a/a/e;->h:Lcom/google/analytics/b/a/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/analytics/b/a/a/e;->i:Lcom/google/analytics/b/a/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/analytics/b/a/a/e;->j:Lcom/google/analytics/b/a/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/analytics/b/a/a/e;->k:Lcom/google/analytics/b/a/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/analytics/b/a/a/e;->l:Lcom/google/analytics/b/a/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/analytics/b/a/a/e;->m:Lcom/google/analytics/b/a/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/analytics/b/a/a/e;->n:Lcom/google/analytics/b/a/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/analytics/b/a/a/e;->o:Lcom/google/analytics/b/a/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/analytics/b/a/a/e;->p:Lcom/google/analytics/b/a/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/analytics/b/a/a/e;->q:Lcom/google/analytics/b/a/a/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/analytics/b/a/a/e;->t:[Lcom/google/analytics/b/a/a/e;

    .line 659
    new-instance v0, Lcom/google/analytics/b/a/a/f;

    invoke-direct {v0}, Lcom/google/analytics/b/a/a/f;-><init>()V

    sput-object v0, Lcom/google/analytics/b/a/a/e;->r:Lcom/google/tagmanager/a/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 668
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 669
    iput p3, p0, Lcom/google/analytics/b/a/a/e;->s:I

    .line 670
    return-void
.end method

.method public static a(I)Lcom/google/analytics/b/a/a/e;
    .registers 2
    .parameter

    .prologue
    .line 632
    packed-switch p0, :pswitch_data_38

    .line 650
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 633
    :pswitch_5
    sget-object v0, Lcom/google/analytics/b/a/a/e;->a:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 634
    :pswitch_8
    sget-object v0, Lcom/google/analytics/b/a/a/e;->b:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 635
    :pswitch_b
    sget-object v0, Lcom/google/analytics/b/a/a/e;->c:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 636
    :pswitch_e
    sget-object v0, Lcom/google/analytics/b/a/a/e;->d:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 637
    :pswitch_11
    sget-object v0, Lcom/google/analytics/b/a/a/e;->e:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 638
    :pswitch_14
    sget-object v0, Lcom/google/analytics/b/a/a/e;->f:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 639
    :pswitch_17
    sget-object v0, Lcom/google/analytics/b/a/a/e;->g:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 640
    :pswitch_1a
    sget-object v0, Lcom/google/analytics/b/a/a/e;->h:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 641
    :pswitch_1d
    sget-object v0, Lcom/google/analytics/b/a/a/e;->i:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 642
    :pswitch_20
    sget-object v0, Lcom/google/analytics/b/a/a/e;->j:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 643
    :pswitch_23
    sget-object v0, Lcom/google/analytics/b/a/a/e;->k:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 644
    :pswitch_26
    sget-object v0, Lcom/google/analytics/b/a/a/e;->l:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 645
    :pswitch_29
    sget-object v0, Lcom/google/analytics/b/a/a/e;->m:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 646
    :pswitch_2c
    sget-object v0, Lcom/google/analytics/b/a/a/e;->n:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 647
    :pswitch_2f
    sget-object v0, Lcom/google/analytics/b/a/a/e;->o:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 648
    :pswitch_32
    sget-object v0, Lcom/google/analytics/b/a/a/e;->p:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 649
    :pswitch_35
    sget-object v0, Lcom/google/analytics/b/a/a/e;->q:Lcom/google/analytics/b/a/a/e;

    goto :goto_4

    .line 632
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/analytics/b/a/a/e;
    .registers 2
    .parameter

    .prologue
    .line 487
    const-class v0, Lcom/google/analytics/b/a/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/e;

    return-object v0
.end method

.method public static values()[Lcom/google/analytics/b/a/a/e;
    .registers 1

    .prologue
    .line 487
    sget-object v0, Lcom/google/analytics/b/a/a/e;->t:[Lcom/google/analytics/b/a/a/e;

    invoke-virtual {v0}, [Lcom/google/analytics/b/a/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/analytics/b/a/a/e;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 629
    iget v0, p0, Lcom/google/analytics/b/a/a/e;->s:I

    return v0
.end method
