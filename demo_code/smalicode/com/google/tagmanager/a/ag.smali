.class public final Lcom/google/tagmanager/a/ag;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Lcom/google/tagmanager/a/ah;
.implements Ljava/util/RandomAccess;


# static fields
.field public static final a:Lcom/google/tagmanager/a/ah;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/tagmanager/a/bd;

    new-instance v1, Lcom/google/tagmanager/a/ag;

    invoke-direct {v1}, Lcom/google/tagmanager/a/ag;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/bd;-><init>(Lcom/google/tagmanager/a/ah;)V

    sput-object v0, Lcom/google/tagmanager/a/ag;->a:Lcom/google/tagmanager/a/ah;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/google/tagmanager/a/ah;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/google/tagmanager/a/ah;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/a/ag;->addAll(Ljava/util/Collection;)Z

    .line 52
    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 188
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 189
    check-cast p0, Ljava/lang/String;

    .line 193
    :goto_6
    return-object p0

    .line 190
    :cond_7
    instance-of v0, p0, Lcom/google/tagmanager/a/g;

    if-eqz v0, :cond_12

    .line 191
    check-cast p0, Lcom/google/tagmanager/a/g;

    invoke-virtual {p0}, Lcom/google/tagmanager/a/g;->f()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 193
    :cond_12
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/tagmanager/a/ab;->b([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/tagmanager/a/g;)V
    .registers 3
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget v0, p0, Lcom/google/tagmanager/a/ag;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/a/ag;->modCount:I

    .line 148
    return-void
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 37
    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/google/tagmanager/a/ag;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/a/ag;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 110
    instance-of v0, p2, Lcom/google/tagmanager/a/ah;

    if-eqz v0, :cond_a

    check-cast p2, Lcom/google/tagmanager/a/ah;

    invoke-interface {p2}, Lcom/google/tagmanager/a/ah;->a()Ljava/util/List;

    move-result-object p2

    .line 112
    :cond_a
    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 113
    iget v1, p0, Lcom/google/tagmanager/a/ag;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/tagmanager/a/ag;->modCount:I

    .line 114
    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/tagmanager/a/ag;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/tagmanager/a/ag;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    iget v0, p0, Lcom/google/tagmanager/a/ag;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/a/ag;->modCount:I

    .line 142
    return-void
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    instance-of v1, v0, Lcom/google/tagmanager/a/g;

    if-eqz v1, :cond_24

    check-cast v0, Lcom/google/tagmanager/a/g;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/tagmanager/a/g;->g()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_22
    move-object v0, v1

    goto :goto_c

    :cond_24
    check-cast v0, [B

    invoke-static {v0}, Lcom/google/tagmanager/a/ab;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/tagmanager/a/ab;->a([B)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_35
    move-object v0, v1

    goto :goto_c
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/tagmanager/a/ag;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/tagmanager/a/ag;->modCount:I

    invoke-static {v0}, Lcom/google/tagmanager/a/ag;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 37
    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/a/ag;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
