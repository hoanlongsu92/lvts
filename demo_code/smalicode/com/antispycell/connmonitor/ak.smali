.class final Lcom/antispycell/connmonitor/ak;
.super Ljava/lang/Object;
.source "ConnectionMonitorLog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/ae;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/ae;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/ak;->a:Lcom/antispycell/connmonitor/ae;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/antispycell/connmonitor/ae;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/antispycell/connmonitor/ae;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antispycell/connmonitor/ao;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/ao;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antispycell/connmonitor/ak;->a:Lcom/antispycell/connmonitor/ae;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/ae;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antispycell/connmonitor/by;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 232
    const/4 v0, 0x1

    return v0
.end method
