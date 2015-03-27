.class final Lcom/google/tagmanager/a/aw;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"


# static fields
.field private static final a:Ljava/util/Iterator;

.field private static final b:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 563
    new-instance v0, Lcom/google/tagmanager/a/ax;

    invoke-direct {v0}, Lcom/google/tagmanager/a/ax;-><init>()V

    sput-object v0, Lcom/google/tagmanager/a/aw;->a:Ljava/util/Iterator;

    .line 578
    new-instance v0, Lcom/google/tagmanager/a/ay;

    invoke-direct {v0}, Lcom/google/tagmanager/a/ay;-><init>()V

    sput-object v0, Lcom/google/tagmanager/a/aw;->b:Ljava/lang/Iterable;

    return-void
.end method

.method static a()Ljava/lang/Iterable;
    .registers 1

    .prologue
    .line 587
    sget-object v0, Lcom/google/tagmanager/a/aw;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Iterator;
    .registers 1

    .prologue
    .line 561
    sget-object v0, Lcom/google/tagmanager/a/aw;->a:Ljava/util/Iterator;

    return-object v0
.end method
