.class final Lcom/antispycell/connmonitor/i;
.super Ljava/lang/Object;
.source "ConnectionAppLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/h;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/h;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/i;->a:Lcom/antispycell/connmonitor/h;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/antispycell/connmonitor/i;->a:Lcom/antispycell/connmonitor/h;

    iget-object v1, p0, Lcom/antispycell/connmonitor/i;->a:Lcom/antispycell/connmonitor/h;

    iget-object v1, v1, Lcom/antispycell/connmonitor/h;->d:Landroid/view/ViewGroup;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/antispycell/connmonitor/h;->a(Landroid/view/ViewGroup;Ljava/lang/Integer;)V

    .line 60
    iget-object v0, p0, Lcom/antispycell/connmonitor/i;->a:Lcom/antispycell/connmonitor/h;

    invoke-static {v0}, Lcom/antispycell/connmonitor/h;->a(Lcom/antispycell/connmonitor/h;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void
.end method
