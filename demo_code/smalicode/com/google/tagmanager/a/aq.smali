.class final Lcom/google/tagmanager/a/aq;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# instance fields
.field private final a:Ljava/util/Deque;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-static {}, Lcom/google/tagmanager/a/ap;->b()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/google/tagmanager/a/aq;-><init>()V

    return-void
.end method

.method private static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 668
    invoke-static {}, Lcom/google/tagmanager/a/ap;->b()[I

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 669
    if-gez v0, :cond_f

    .line 672
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 673
    add-int/lit8 v0, v0, -0x1

    .line 676
    :cond_f
    return v0
.end method

.method static synthetic a(Lcom/google/tagmanager/a/aq;Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;)Lcom/google/tagmanager/a/g;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/aq;->a(Lcom/google/tagmanager/a/g;)V

    invoke-direct {p0, p2}, Lcom/google/tagmanager/a/aq;->a(Lcom/google/tagmanager/a/g;)V

    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/g;

    move-object v1, v0

    :goto_f
    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/g;

    new-instance v2, Lcom/google/tagmanager/a/ap;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/tagmanager/a/ap;-><init>(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;B)V

    move-object v1, v2

    goto :goto_f

    :cond_27
    return-object v1
.end method

.method private a(Lcom/google/tagmanager/a/g;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 601
    move-object v1, p1

    :goto_2
    invoke-virtual {v1}, Lcom/google/tagmanager/a/g;->k()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 602
    invoke-virtual {v1}, Lcom/google/tagmanager/a/g;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/a/aq;->a(I)I

    move-result v2

    invoke-static {}, Lcom/google/tagmanager/a/ap;->b()[I

    move-result-object v0

    add-int/lit8 v3, v2, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/g;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v0

    if-lt v0, v3, :cond_34

    :cond_2e
    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :goto_33
    return-void

    :cond_34
    invoke-static {}, Lcom/google/tagmanager/a/ap;->b()[I

    move-result-object v0

    aget v4, v0, v2

    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/g;

    move-object v2, v0

    :goto_43
    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/g;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v0

    if-ge v0, v4, :cond_68

    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/g;

    new-instance v3, Lcom/google/tagmanager/a/ap;

    invoke-direct {v3, v0, v2, v5}, Lcom/google/tagmanager/a/ap;-><init>(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;B)V

    move-object v2, v3

    goto :goto_43

    :cond_68
    new-instance v0, Lcom/google/tagmanager/a/ap;

    invoke-direct {v0, v2, v1, v5}, Lcom/google/tagmanager/a/ap;-><init>(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;B)V

    move-object v1, v0

    :goto_6e
    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-virtual {v1}, Lcom/google/tagmanager/a/g;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/a/aq;->a(I)I

    move-result v0

    invoke-static {}, Lcom/google/tagmanager/a/ap;->b()[I

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/g;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/g;->a()I

    move-result v0

    if-ge v0, v2, :cond_a3

    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/g;

    new-instance v2, Lcom/google/tagmanager/a/ap;

    invoke-direct {v2, v0, v1, v5}, Lcom/google/tagmanager/a/ap;-><init>(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/g;B)V

    move-object v1, v2

    goto :goto_6e

    :cond_a3
    iget-object v0, p0, Lcom/google/tagmanager/a/aq;->a:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_33

    .line 603
    :cond_a9
    instance-of v0, v1, Lcom/google/tagmanager/a/ap;

    if-eqz v0, :cond_bd

    move-object v0, v1

    .line 604
    check-cast v0, Lcom/google/tagmanager/a/ap;

    .line 605
    invoke-static {v0}, Lcom/google/tagmanager/a/ap;->a(Lcom/google/tagmanager/a/ap;)Lcom/google/tagmanager/a/g;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/tagmanager/a/aq;->a(Lcom/google/tagmanager/a/g;)V

    .line 606
    invoke-static {v0}, Lcom/google/tagmanager/a/ap;->b(Lcom/google/tagmanager/a/ap;)Lcom/google/tagmanager/a/g;

    move-result-object v1

    goto/16 :goto_2

    .line 607
    :cond_bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Has a new type of ByteString been created? Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
