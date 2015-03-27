.class public final enum Lcom/google/analytics/b/a/a/g;
.super Ljava/lang/Enum;
.source "TypeSystem.java"

# interfaces
.implements Lcom/google/tagmanager/a/ac;


# static fields
.field public static final enum a:Lcom/google/analytics/b/a/a/g;

.field public static final enum b:Lcom/google/analytics/b/a/a/g;

.field public static final enum c:Lcom/google/analytics/b/a/a/g;

.field public static final enum d:Lcom/google/analytics/b/a/a/g;

.field public static final enum e:Lcom/google/analytics/b/a/a/g;

.field public static final enum f:Lcom/google/analytics/b/a/a/g;

.field public static final enum g:Lcom/google/analytics/b/a/a/g;

.field public static final enum h:Lcom/google/analytics/b/a/a/g;

.field private static i:Lcom/google/tagmanager/a/ad;

.field private static final synthetic k:[Lcom/google/analytics/b/a/a/g;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 382
    new-instance v0, Lcom/google/analytics/b/a/a/g;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/google/analytics/b/a/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/g;->a:Lcom/google/analytics/b/a/a/g;

    .line 386
    new-instance v0, Lcom/google/analytics/b/a/a/g;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/analytics/b/a/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/g;->b:Lcom/google/analytics/b/a/a/g;

    .line 390
    new-instance v0, Lcom/google/analytics/b/a/a/g;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/analytics/b/a/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/g;->c:Lcom/google/analytics/b/a/a/g;

    .line 394
    new-instance v0, Lcom/google/analytics/b/a/a/g;

    const-string v1, "MACRO_REFERENCE"

    invoke-direct {v0, v1, v6, v7}, Lcom/google/analytics/b/a/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/g;->d:Lcom/google/analytics/b/a/a/g;

    .line 398
    new-instance v0, Lcom/google/analytics/b/a/a/g;

    const-string v1, "FUNCTION_ID"

    invoke-direct {v0, v1, v7, v8}, Lcom/google/analytics/b/a/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/g;->e:Lcom/google/analytics/b/a/a/g;

    .line 402
    new-instance v0, Lcom/google/analytics/b/a/a/g;

    const-string v1, "INTEGER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/google/analytics/b/a/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/g;->f:Lcom/google/analytics/b/a/a/g;

    .line 406
    new-instance v0, Lcom/google/analytics/b/a/a/g;

    const-string v1, "TEMPLATE"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/g;->g:Lcom/google/analytics/b/a/a/g;

    .line 410
    new-instance v0, Lcom/google/analytics/b/a/a/g;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/b/a/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/b/a/a/g;->h:Lcom/google/analytics/b/a/a/g;

    .line 377
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/analytics/b/a/a/g;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/analytics/b/a/a/g;->a:Lcom/google/analytics/b/a/a/g;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/analytics/b/a/a/g;->b:Lcom/google/analytics/b/a/a/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/analytics/b/a/a/g;->c:Lcom/google/analytics/b/a/a/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/analytics/b/a/a/g;->d:Lcom/google/analytics/b/a/a/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/analytics/b/a/a/g;->e:Lcom/google/analytics/b/a/a/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/analytics/b/a/a/g;->f:Lcom/google/analytics/b/a/a/g;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/google/analytics/b/a/a/g;->g:Lcom/google/analytics/b/a/a/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/analytics/b/a/a/g;->h:Lcom/google/analytics/b/a/a/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/analytics/b/a/a/g;->k:[Lcom/google/analytics/b/a/a/g;

    .line 468
    new-instance v0, Lcom/google/analytics/b/a/a/h;

    invoke-direct {v0}, Lcom/google/analytics/b/a/a/h;-><init>()V

    sput-object v0, Lcom/google/analytics/b/a/a/g;->i:Lcom/google/tagmanager/a/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 478
    iput p3, p0, Lcom/google/analytics/b/a/a/g;->j:I

    .line 479
    return-void
.end method

.method public static a(I)Lcom/google/analytics/b/a/a/g;
    .registers 2
    .parameter

    .prologue
    .line 450
    packed-switch p0, :pswitch_data_1e

    .line 459
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 451
    :pswitch_5
    sget-object v0, Lcom/google/analytics/b/a/a/g;->a:Lcom/google/analytics/b/a/a/g;

    goto :goto_4

    .line 452
    :pswitch_8
    sget-object v0, Lcom/google/analytics/b/a/a/g;->b:Lcom/google/analytics/b/a/a/g;

    goto :goto_4

    .line 453
    :pswitch_b
    sget-object v0, Lcom/google/analytics/b/a/a/g;->c:Lcom/google/analytics/b/a/a/g;

    goto :goto_4

    .line 454
    :pswitch_e
    sget-object v0, Lcom/google/analytics/b/a/a/g;->d:Lcom/google/analytics/b/a/a/g;

    goto :goto_4

    .line 455
    :pswitch_11
    sget-object v0, Lcom/google/analytics/b/a/a/g;->e:Lcom/google/analytics/b/a/a/g;

    goto :goto_4

    .line 456
    :pswitch_14
    sget-object v0, Lcom/google/analytics/b/a/a/g;->f:Lcom/google/analytics/b/a/a/g;

    goto :goto_4

    .line 457
    :pswitch_17
    sget-object v0, Lcom/google/analytics/b/a/a/g;->g:Lcom/google/analytics/b/a/a/g;

    goto :goto_4

    .line 458
    :pswitch_1a
    sget-object v0, Lcom/google/analytics/b/a/a/g;->h:Lcom/google/analytics/b/a/a/g;

    goto :goto_4

    .line 450
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/analytics/b/a/a/g;
    .registers 2
    .parameter

    .prologue
    .line 377
    const-class v0, Lcom/google/analytics/b/a/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/g;

    return-object v0
.end method

.method public static values()[Lcom/google/analytics/b/a/a/g;
    .registers 1

    .prologue
    .line 377
    sget-object v0, Lcom/google/analytics/b/a/a/g;->k:[Lcom/google/analytics/b/a/a/g;

    invoke-virtual {v0}, [Lcom/google/analytics/b/a/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/analytics/b/a/a/g;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 447
    iget v0, p0, Lcom/google/analytics/b/a/a/g;->j:I

    return v0
.end method
