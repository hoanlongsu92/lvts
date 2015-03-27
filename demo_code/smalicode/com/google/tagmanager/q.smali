.class final Lcom/google/tagmanager/q;
.super Ljava/lang/Object;
.source "SharedPreferencesUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/tagmanager/q;->a:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/tagmanager/q;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method
