.class public Lcom/google/tagmanager/PreviewActivity;
.super Landroid/app/Activity;
.source "PreviewActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 37
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const-string v0, "Preview activity"

    invoke-static {v0}, Lcom/google/tagmanager/i;->c(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 42
    invoke-static {p0}, Lcom/google/tagmanager/r;->a(Landroid/content/Context;)Lcom/google/tagmanager/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/r;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot preview the app with the uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/i;->b(Ljava/lang/String;)V

    .line 61
    :goto_2c
    return-void

    .line 49
    :cond_2d
    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_6d

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invoke the launch activity for package name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/i;->c(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/PreviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55

    goto :goto_2c

    .line 58
    :catch_55
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling preview threw an exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/i;->a(Ljava/lang/String;)V

    goto :goto_2c

    .line 54
    :cond_6d
    :try_start_6d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No launch activity found for package name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/i;->c(Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_83} :catch_55

    goto :goto_2c
.end method
