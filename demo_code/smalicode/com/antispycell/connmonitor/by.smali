.class public abstract Lcom/antispycell/connmonitor/by;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 78
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 82
    array-length v3, v2
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_e} :catch_2a

    move v0, v1

    :goto_f
    if-lt v0, v3, :cond_16

    .line 90
    :goto_11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_15
    return-object v0

    .line 82
    :cond_16
    :try_start_16
    aget-object v4, v2, v0

    .line 84
    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v4

    const v5, -0x8c8e338

    if-ne v4, v5, :cond_27

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_25} :catch_2a

    move-result-object v0

    goto :goto_15

    .line 82
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 87
    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_11
.end method

.method public static a(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 115
    const-string v0, ""

    .line 116
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit8 v4, v4, 0x18

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 124
    if-lez v1, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_5f
    if-lez v4, :cond_78

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_78
    if-lez v3, :cond_91

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_91
    if-lez v2, :cond_aa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_aa
    return-object v0
.end method

.method static a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    const/16 v1, 0xb

    if-ge v0, v1, :cond_29

    .line 98
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 99
    invoke-virtual {v0, p0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Copied to clipboard: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    return-void

    .line 102
    :cond_29
    :try_start_29
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 103
    invoke-static {p0, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_39

    goto :goto_11

    .line 106
    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 19
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 29
    const-string v0, "com.antispycell.connmonitor.unlock"

    aput-object v0, v4, v1

    .line 30
    const-string v0, "com.antispycell.connmonitor.unlockxda"

    aput-object v0, v4, v3

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move v0, v1

    move v2, v1

    .line 36
    :goto_13
    array-length v6, v4

    if-lt v0, v6, :cond_17

    .line 63
    :cond_16
    return v2

    .line 39
    :cond_17
    :try_start_17
    aget-object v6, v4, v0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 40
    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    if-eqz v6, :cond_4d

    const-string v7, "com.google.android.feedback"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    const-string v7, "com.android.vending"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 44
    :cond_35
    aget-object v6, v4, v0

    invoke-static {p0, v6}, Lcom/antispycell/connmonitor/by;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 45
    if-eqz v6, :cond_48

    invoke-static {p0}, Lcom/antispycell/connmonitor/by;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_44} :catch_4f

    move-result-object v6

    if-eqz v6, :cond_48

    move v2, v3

    .line 60
    :cond_48
    :goto_48
    if-nez v2, :cond_16

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_4d
    move v2, v1

    .line 54
    goto :goto_48

    .line 57
    :catch_4f
    move-exception v2

    move v2, v1

    goto :goto_48
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 67
    const-string v0, "content://com.antispycell.connmonitor.license"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 70
    if-nez v1, :cond_f

    const-string v0, ""

    .line 73
    :cond_e
    :goto_e
    return-object v0

    .line 71
    :cond_f
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 73
    if-nez v0, :cond_e

    const-string v0, ""

    goto :goto_e
.end method
