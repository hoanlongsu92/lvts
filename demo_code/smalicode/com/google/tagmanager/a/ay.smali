.class final Lcom/google/tagmanager/a/ay;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 581
    invoke-static {}, Lcom/google/tagmanager/a/aw;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
