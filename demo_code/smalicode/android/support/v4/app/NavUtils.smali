.class public Landroid/support/v4/app/NavUtils;
.super Ljava/lang/Object;
.source "NavUtils.java"


# static fields
.field private static final IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl; = null

.field public static final PARENT_ACTIVITY:Ljava/lang/String; = "android.support.PARENT_ACTIVITY"

.field private static final TAG:Ljava/lang/String; = "NavUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 118
    new-instance v0, Landroid/support/v4/app/NavUtils$NavUtilsImplJB;

    invoke-direct {v0}, Landroid/support/v4/app/NavUtils$NavUtilsImplJB;-><init>()V

    sput-object v0, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    .line 122
    :goto_d
    return-void

    .line 120
    :cond_e
    new-instance v0, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;

    invoke-direct {v0}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method

.method public static getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 196
    sget-object v0, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/app/NavUtils$NavUtilsImpl;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 231
    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_7
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 211
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 213
    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 214
    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_c
.end method

.method public static getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 246
    :catch_9
    move-exception v0

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 264
    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 265
    sget-object v1, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/app/NavUtils$NavUtilsImpl;->getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 266
    return-object v0
.end method

.method public static navigateUpFromSameTask(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 155
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    if-nez v0, :cond_29

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have a parent activity name specified. (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data>  element in your manifest?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_29
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public static navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 182
    sget-object v0, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/NavUtils$NavUtilsImpl;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method public static shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 139
    sget-object v0, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/NavUtils$NavUtilsImpl;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
