.class final Lcom/antispycell/connmonitor/x;
.super Ljava/lang/Object;
.source "ConnectionMonitorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/w;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/w;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/x;->a:Lcom/antispycell/connmonitor/w;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 209
    sget-object v0, Lcom/antispycell/connmonitor/w;->a:Lcom/antispycell/connmonitor/JNI;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/JNI;->ncDataLoad()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 210
    iget-object v0, p0, Lcom/antispycell/connmonitor/x;->a:Lcom/antispycell/connmonitor/w;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/w;->a()V

    .line 213
    :cond_e
    iget-object v0, p0, Lcom/antispycell/connmonitor/x;->a:Lcom/antispycell/connmonitor/w;

    invoke-static {v0}, Lcom/antispycell/connmonitor/w;->a(Lcom/antispycell/connmonitor/w;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    return-void
.end method
