.class final Lcom/google/tagmanager/a/ar;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/util/Deque;

.field private b:Lcom/google/tagmanager/a/ai;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/a/g;)V
    .registers 4
    .parameter

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-static {}, Lcom/google/tagmanager/a/ap;->b()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/tagmanager/a/ar;->a:Ljava/util/Deque;

    .line 696
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/ar;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/ar;->b:Lcom/google/tagmanager/a/ai;

    .line 697
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/g;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/ar;-><init>(Lcom/google/tagmanager/a/g;)V

    return-void
.end method

.method private a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/ai;
    .registers 4
    .parameter

    .prologue
    .line 700
    move-object v0, p1

    :goto_1
    instance-of v1, v0, Lcom/google/tagmanager/a/ap;

    if-eqz v1, :cond_11

    .line 702
    check-cast v0, Lcom/google/tagmanager/a/ap;

    .line 703
    iget-object v1, p0, Lcom/google/tagmanager/a/ar;->a:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 704
    invoke-static {v0}, Lcom/google/tagmanager/a/ap;->a(Lcom/google/tagmanager/a/ap;)Lcom/google/tagmanager/a/g;

    move-result-object v0

    goto :goto_1

    .line 706
    :cond_11
    check-cast v0, Lcom/google/tagmanager/a/ai;

    return-object v0
.end method

.method private b()Lcom/google/tagmanager/a/ai;
    .registers 3

    .prologue
    .line 713
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/a/ar;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 714
    const/4 v0, 0x0

    .line 718
    :goto_9
    return-object v0

    .line 716
    :cond_a
    iget-object v0, p0, Lcom/google/tagmanager/a/ar;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/ap;

    invoke-static {v0}, Lcom/google/tagmanager/a/ap;->b(Lcom/google/tagmanager/a/ap;)Lcom/google/tagmanager/a/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/ar;->a(Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/ai;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lcom/google/tagmanager/a/ai;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_9
.end method


# virtual methods
.method public final a()Lcom/google/tagmanager/a/ai;
    .registers 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/tagmanager/a/ar;->b:Lcom/google/tagmanager/a/ai;

    if-nez v0, :cond_a

    .line 735
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 737
    :cond_a
    iget-object v0, p0, Lcom/google/tagmanager/a/ar;->b:Lcom/google/tagmanager/a/ai;

    .line 738
    invoke-direct {p0}, Lcom/google/tagmanager/a/ar;->b()Lcom/google/tagmanager/a/ai;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tagmanager/a/ar;->b:Lcom/google/tagmanager/a/ai;

    .line 739
    return-object v0
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/tagmanager/a/ar;->b:Lcom/google/tagmanager/a/ai;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/google/tagmanager/a/ar;->a()Lcom/google/tagmanager/a/ai;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 743
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
