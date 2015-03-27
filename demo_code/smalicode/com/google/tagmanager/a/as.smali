.class final Lcom/google/tagmanager/a/as;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Lcom/google/tagmanager/a/h;


# instance fields
.field a:I

.field final synthetic b:Lcom/google/tagmanager/a/ap;

.field private final c:Lcom/google/tagmanager/a/ar;

.field private d:Lcom/google/tagmanager/a/h;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/a/ap;)V
    .registers 4
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/google/tagmanager/a/as;->b:Lcom/google/tagmanager/a/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    new-instance v0, Lcom/google/tagmanager/a/ar;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/tagmanager/a/ar;-><init>(Lcom/google/tagmanager/a/g;B)V

    iput-object v0, p0, Lcom/google/tagmanager/a/as;->c:Lcom/google/tagmanager/a/ar;

    .line 763
    iget-object v0, p0, Lcom/google/tagmanager/a/as;->c:Lcom/google/tagmanager/a/ar;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ar;->a()Lcom/google/tagmanager/a/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ai;->c()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/as;->d:Lcom/google/tagmanager/a/h;

    .line 764
    invoke-virtual {p1}, Lcom/google/tagmanager/a/ap;->a()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/a/as;->a:I

    .line 765
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/ap;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 755
    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/as;-><init>(Lcom/google/tagmanager/a/ap;)V

    return-void
.end method


# virtual methods
.method public final a()B
    .registers 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/tagmanager/a/as;->d:Lcom/google/tagmanager/a/h;

    invoke-interface {v0}, Lcom/google/tagmanager/a/h;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    .line 777
    iget-object v0, p0, Lcom/google/tagmanager/a/as;->c:Lcom/google/tagmanager/a/ar;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ar;->a()Lcom/google/tagmanager/a/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ai;->c()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/as;->d:Lcom/google/tagmanager/a/h;

    .line 779
    :cond_14
    iget v0, p0, Lcom/google/tagmanager/a/as;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/a/as;->a:I

    .line 780
    iget-object v0, p0, Lcom/google/tagmanager/a/as;->d:Lcom/google/tagmanager/a/h;

    invoke-interface {v0}, Lcom/google/tagmanager/a/h;->a()B

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 768
    iget v0, p0, Lcom/google/tagmanager/a/as;->a:I

    if-lez v0, :cond_6

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
    .line 755
    invoke-virtual {p0}, Lcom/google/tagmanager/a/as;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 784
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
