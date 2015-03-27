.class final Lcom/antispycell/connmonitor/u;
.super Ljava/lang/Object;
.source "ConnectionMonitorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/t;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/t;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/u;->a:Lcom/antispycell/connmonitor/t;

    iput p2, p0, Lcom/antispycell/connmonitor/u;->b:I

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/antispycell/connmonitor/u;->a:Lcom/antispycell/connmonitor/t;

    invoke-static {v0}, Lcom/antispycell/connmonitor/t;->a(Lcom/antispycell/connmonitor/t;)Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;->a(Lcom/antispycell/connmonitor/ConnectionMonitorActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/antispycell/connmonitor/u;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 233
    return-void
.end method
