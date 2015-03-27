.class final Lcom/antispycell/connmonitor/j;
.super Ljava/lang/Object;
.source "ConnectionAppLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/h;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/h;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/j;->a:Lcom/antispycell/connmonitor/h;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/antispycell/connmonitor/j;->a:Lcom/antispycell/connmonitor/h;

    iget-object v1, p0, Lcom/antispycell/connmonitor/j;->a:Lcom/antispycell/connmonitor/h;

    iget-object v1, v1, Lcom/antispycell/connmonitor/h;->d:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/antispycell/connmonitor/h;->a(Landroid/view/ViewGroup;Ljava/lang/Integer;)V

    .line 107
    return-void
.end method
