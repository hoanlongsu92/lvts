.class public final Lcom/google/tagmanager/e;
.super Ljava/lang/Object;
.source "DataLayer.java"


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/concurrent/locks/ReentrantLock;

.field private final e:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/tagmanager/e;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/e;->c:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/e;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/e;->e:Ljava/util/LinkedList;

    .line 119
    return-void
.end method


# virtual methods
.method final a(Lcom/google/tagmanager/f;)V
    .registers 4
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/tagmanager/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method
