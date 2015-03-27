.class final Lcom/antispycell/connmonitor/ai;
.super Ljava/lang/Object;
.source "ConnectionMonitorLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/ae;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/ae;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/ai;->a:Lcom/antispycell/connmonitor/ae;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/antispycell/connmonitor/ai;->a:Lcom/antispycell/connmonitor/ae;

    iget-object v1, p0, Lcom/antispycell/connmonitor/ai;->a:Lcom/antispycell/connmonitor/ae;

    iget-object v1, v1, Lcom/antispycell/connmonitor/ae;->e:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/antispycell/connmonitor/ae;->a(Landroid/view/ViewGroup;Ljava/lang/Integer;)V

    .line 194
    return-void
.end method
