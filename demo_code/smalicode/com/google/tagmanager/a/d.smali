.class public abstract Lcom/google/tagmanager/a/d;
.super Ljava/lang/Object;
.source "AbstractParser.java"

# interfaces
.implements Lcom/google/tagmanager/a/ao;


# static fields
.field private static final a:Lcom/google/tagmanager/a/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    invoke-static {}, Lcom/google/tagmanager/a/n;->a()Lcom/google/tagmanager/a/n;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/a/d;->a:Lcom/google/tagmanager/a/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/ak;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/a/g;->h()Lcom/google/tagmanager/a/j;

    move-result-object v1

    .line 80
    invoke-virtual {p0, v1, p2}, Lcom/google/tagmanager/a/d;->a(Lcom/google/tagmanager/a/j;Lcom/google/tagmanager/a/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/ak;
    :try_end_a
    .catch Lcom/google/tagmanager/a/ae; {:try_start_0 .. :try_end_a} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_17

    .line 82
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v1, v2}, Lcom/google/tagmanager/a/j;->a(I)V
    :try_end_e
    .catch Lcom/google/tagmanager/a/ae; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_17

    .line 86
    return-object v0

    .line 83
    :catch_f
    move-exception v1

    :try_start_10
    invoke-virtual {v1, v0}, Lcom/google/tagmanager/a/ae;->a(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0
    :try_end_15
    .catch Lcom/google/tagmanager/a/ae; {:try_start_10 .. :try_end_15} :catch_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_17

    .line 87
    :catch_15
    move-exception v0

    throw v0

    .line 89
    :catch_17
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/n;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/a/d;->b(Lcom/google/tagmanager/a/g;Lcom/google/tagmanager/a/n;)Lcom/google/tagmanager/a/ak;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Lcom/google/tagmanager/a/ak;->i()Z

    move-result v0

    if-nez v0, :cond_2d

    instance-of v0, v1, Lcom/google/tagmanager/a/a;

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/google/tagmanager/a/bc;

    invoke-direct {v0}, Lcom/google/tagmanager/a/bc;-><init>()V

    :goto_15
    invoke-virtual {v0}, Lcom/google/tagmanager/a/bc;->a()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/ae;->a(Lcom/google/tagmanager/a/ak;)Lcom/google/tagmanager/a/ae;

    move-result-object v0

    throw v0

    :cond_1e
    instance-of v0, v1, Lcom/google/tagmanager/a/c;

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/google/tagmanager/a/c;->a()Lcom/google/tagmanager/a/bc;

    move-result-object v0

    goto :goto_15

    :cond_27
    new-instance v0, Lcom/google/tagmanager/a/bc;

    invoke-direct {v0}, Lcom/google/tagmanager/a/bc;-><init>()V

    goto :goto_15

    :cond_2d
    return-object v1
.end method
