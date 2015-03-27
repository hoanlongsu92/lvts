.class public Lcom/antispycell/connmonitor/Legal;
.super Landroid/app/Activity;
.source "Legal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/Legal;->setContentView(I)V

    .line 18
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/antispycell/connmonitor/Legal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 23
    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ver: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/antispycell/connmonitor/Legal;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/antispycell/connmonitor/Legal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_33} :catch_7e

    .line 28
    :goto_33
    invoke-static {p0}, Lcom/antispycell/connmonitor/by;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 29
    invoke-static {p0}, Lcom/antispycell/connmonitor/by;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 32
    const-string v1, "\n LICENSE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_63

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 37
    :cond_63
    :goto_63
    invoke-virtual {p0}, Lcom/antispycell/connmonitor/Legal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    .line 38
    const-string v1, "&cd"

    const-string v2, "LEGAL TERMS"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/google/analytics/tracking/android/at;->b()Lcom/google/analytics/tracking/android/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 41
    return-void

    .line 25
    :catch_7e
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_33

    .line 35
    :cond_83
    const-string v1, "\n (FREE TRIAL LICENSE)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_63
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 46
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 51
    return-void
.end method
