.class Lcom/google/tagmanager/h;
.super Ljava/lang/Object;
.source "InstallReferrerUtil.java"


# static fields
.field static a:Ljava/util/Map;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/tagmanager/h;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 41
    const-string v0, "gtm_install_referrer"

    const-string v1, "referrer"

    invoke-static {p0, v0, v1, p1}, Lcom/google/tagmanager/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "conv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://hostname/?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_32

    sget-object v1, Lcom/google/tagmanager/h;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gtm_click_referrers"

    invoke-static {p0, v1, v0, p1}, Lcom/google/tagmanager/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_32
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    const-class v1, Lcom/google/tagmanager/h;

    monitor-enter v1

    .line 33
    :try_start_3
    sput-object p0, Lcom/google/tagmanager/h;->b:Ljava/lang/String;

    .line 34
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method
