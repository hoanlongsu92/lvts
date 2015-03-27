.class Lcom/google/tagmanager/m;
.super Ljava/lang/Object;
.source "PreviewManager.java"


# static fields
.field private static a:Lcom/google/tagmanager/m;


# instance fields
.field private volatile b:Lcom/google/tagmanager/n;

.field private volatile c:Ljava/lang/String;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/google/tagmanager/n;->a:Lcom/google/tagmanager/n;

    iput-object v0, p0, Lcom/google/tagmanager/m;->b:Lcom/google/tagmanager/n;

    iput-object v1, p0, Lcom/google/tagmanager/m;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/tagmanager/m;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/tagmanager/m;->e:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static a()Lcom/google/tagmanager/m;
    .registers 2

    .prologue
    .line 58
    const-class v1, Lcom/google/tagmanager/m;

    monitor-enter v1

    .line 59
    :try_start_3
    sget-object v0, Lcom/google/tagmanager/m;->a:Lcom/google/tagmanager/m;

    if-nez v0, :cond_e

    .line 60
    new-instance v0, Lcom/google/tagmanager/m;

    invoke-direct {v0}, Lcom/google/tagmanager/m;-><init>()V

    sput-object v0, Lcom/google/tagmanager/m;->a:Lcom/google/tagmanager/m;

    .line 63
    :cond_e
    sget-object v0, Lcom/google/tagmanager/m;->a:Lcom/google/tagmanager/m;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    return-object v0

    .line 64
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 138
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(Landroid/net/Uri;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_72
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_c} :catch_6a

    move-result-object v2

    .line 75
    :try_start_d
    const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Container preview url: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/i;->d(Ljava/lang/String;)V

    .line 77
    const-string v1, ".*?&gtm_debug=x$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 78
    sget-object v1, Lcom/google/tagmanager/n;->c:Lcom/google/tagmanager/n;

    iput-object v1, p0, Lcom/google/tagmanager/m;->b:Lcom/google/tagmanager/n;

    .line 97
    :goto_33
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&gtm_debug=x"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tagmanager/m;->e:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/google/tagmanager/m;->b:Lcom/google/tagmanager/n;

    sget-object v2, Lcom/google/tagmanager/n;->b:Lcom/google/tagmanager/n;

    if-eq v1, v2, :cond_4d

    iget-object v1, p0, Lcom/google/tagmanager/m;->b:Lcom/google/tagmanager/n;

    sget-object v2, Lcom/google/tagmanager/n;->c:Lcom/google/tagmanager/n;

    if-ne v1, v2, :cond_60

    .line 100
    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/r?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/tagmanager/m;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tagmanager/m;->d:Ljava/lang/String;

    .line 103
    :cond_60
    iget-object v1, p0, Lcom/google/tagmanager/m;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/tagmanager/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/tagmanager/m;->c:Ljava/lang/String;
    :try_end_68
    .catchall {:try_start_d .. :try_end_68} :catchall_72

    .line 105
    :goto_68
    monitor-exit p0

    return v0

    .line 73
    :catch_6a
    move-exception v0

    move v0, v1

    goto :goto_68

    .line 80
    :cond_6d
    :try_start_6d
    sget-object v1, Lcom/google/tagmanager/n;->b:Lcom/google/tagmanager/n;

    iput-object v1, p0, Lcom/google/tagmanager/m;->b:Lcom/google/tagmanager/n;
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_72

    goto :goto_33

    .line 68
    :catchall_72
    move-exception v0

    monitor-exit p0

    throw v0

    .line 82
    :cond_75
    :try_start_75
    const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 83
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/tagmanager/m;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exit preview mode for container: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/tagmanager/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/i;->d(Ljava/lang/String;)V

    .line 85
    sget-object v1, Lcom/google/tagmanager/n;->a:Lcom/google/tagmanager/n;

    iput-object v1, p0, Lcom/google/tagmanager/m;->b:Lcom/google/tagmanager/n;

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/tagmanager/m;->d:Ljava/lang/String;

    goto :goto_68

    :cond_a9
    move v0, v1

    .line 90
    goto :goto_68

    .line 93
    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Invalid preview uri: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/i;->b(Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_75 .. :try_end_bd} :catchall_72

    move v0, v1

    .line 94
    goto :goto_68
.end method

.method final b()Lcom/google/tagmanager/n;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/tagmanager/m;->b:Lcom/google/tagmanager/n;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/tagmanager/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/tagmanager/m;->c:Ljava/lang/String;

    return-object v0
.end method
