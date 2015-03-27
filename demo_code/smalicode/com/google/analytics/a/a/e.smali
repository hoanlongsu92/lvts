.class public final enum Lcom/google/analytics/a/a/e;
.super Ljava/lang/Enum;
.source "Serving.java"

# interfaces
.implements Lcom/google/tagmanager/a/ac;


# static fields
.field public static final enum a:Lcom/google/analytics/a/a/e;

.field public static final enum b:Lcom/google/analytics/a/a/e;

.field public static final enum c:Lcom/google/analytics/a/a/e;

.field private static d:Lcom/google/tagmanager/a/ad;

.field private static final synthetic f:[Lcom/google/analytics/a/a/e;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5642
    new-instance v0, Lcom/google/analytics/a/a/e;

    const-string v1, "NO_CACHE"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/analytics/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/a/a/e;->a:Lcom/google/analytics/a/a/e;

    .line 5646
    new-instance v0, Lcom/google/analytics/a/a/e;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/a/a/e;->b:Lcom/google/analytics/a/a/e;

    .line 5650
    new-instance v0, Lcom/google/analytics/a/a/e;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v3, v5}, Lcom/google/analytics/a/a/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/analytics/a/a/e;->c:Lcom/google/analytics/a/a/e;

    .line 5637
    new-array v0, v5, [Lcom/google/analytics/a/a/e;

    sget-object v1, Lcom/google/analytics/a/a/e;->a:Lcom/google/analytics/a/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/analytics/a/a/e;->b:Lcom/google/analytics/a/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/analytics/a/a/e;->c:Lcom/google/analytics/a/a/e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/analytics/a/a/e;->f:[Lcom/google/analytics/a/a/e;

    .line 5683
    new-instance v0, Lcom/google/analytics/a/a/f;

    invoke-direct {v0}, Lcom/google/analytics/a/a/f;-><init>()V

    sput-object v0, Lcom/google/analytics/a/a/e;->d:Lcom/google/tagmanager/a/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5692
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5693
    iput p3, p0, Lcom/google/analytics/a/a/e;->e:I

    .line 5694
    return-void
.end method

.method public static a(I)Lcom/google/analytics/a/a/e;
    .registers 2
    .parameter

    .prologue
    .line 5670
    packed-switch p0, :pswitch_data_e

    .line 5674
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 5671
    :pswitch_5
    sget-object v0, Lcom/google/analytics/a/a/e;->a:Lcom/google/analytics/a/a/e;

    goto :goto_4

    .line 5672
    :pswitch_8
    sget-object v0, Lcom/google/analytics/a/a/e;->b:Lcom/google/analytics/a/a/e;

    goto :goto_4

    .line 5673
    :pswitch_b
    sget-object v0, Lcom/google/analytics/a/a/e;->c:Lcom/google/analytics/a/a/e;

    goto :goto_4

    .line 5670
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/analytics/a/a/e;
    .registers 2
    .parameter

    .prologue
    .line 5637
    const-class v0, Lcom/google/analytics/a/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/e;

    return-object v0
.end method

.method public static values()[Lcom/google/analytics/a/a/e;
    .registers 1

    .prologue
    .line 5637
    sget-object v0, Lcom/google/analytics/a/a/e;->f:[Lcom/google/analytics/a/a/e;

    invoke-virtual {v0}, [Lcom/google/analytics/a/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/analytics/a/a/e;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 5667
    iget v0, p0, Lcom/google/analytics/a/a/e;->e:I

    return v0
.end method
