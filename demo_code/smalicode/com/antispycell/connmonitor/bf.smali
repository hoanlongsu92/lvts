.class final Lcom/antispycell/connmonitor/bf;
.super Ljava/lang/Object;
.source "LoggingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/LoggingService;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/LoggingService;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/bf;->a:Lcom/antispycell/connmonitor/LoggingService;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/antispycell/connmonitor/bf;->a:Lcom/antispycell/connmonitor/LoggingService;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/LoggingService;->a()V

    .line 207
    iget-object v0, p0, Lcom/antispycell/connmonitor/bf;->a:Lcom/antispycell/connmonitor/LoggingService;

    invoke-static {v0}, Lcom/antispycell/connmonitor/LoggingService;->a(Lcom/antispycell/connmonitor/LoggingService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    return-void
.end method
