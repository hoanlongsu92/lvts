.class public final Lcom/google/tagmanager/a/n;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# static fields
.field private static volatile a:Z

.field private static final c:Lcom/google/tagmanager/a/n;


# instance fields
.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 52
    sput-boolean v1, Lcom/google/tagmanager/a/n;->a:Z

    .line 131
    new-instance v0, Lcom/google/tagmanager/a/n;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/n;-><init>(B)V

    sput-object v0, Lcom/google/tagmanager/a/n;->c:Lcom/google/tagmanager/a/n;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/a/n;->b:Ljava/util/Map;

    .line 113
    return-void
.end method

.method private constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/n;->b:Ljava/util/Map;

    .line 130
    return-void
.end method

.method public static a()Lcom/google/tagmanager/a/n;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/tagmanager/a/n;->c:Lcom/google/tagmanager/a/n;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/tagmanager/a/ak;I)Lcom/google/tagmanager/a/z;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/tagmanager/a/n;->b:Ljava/util/Map;

    new-instance v1, Lcom/google/tagmanager/a/o;

    invoke-direct {v1, p1, p2}, Lcom/google/tagmanager/a/o;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/z;

    return-object v0
.end method
