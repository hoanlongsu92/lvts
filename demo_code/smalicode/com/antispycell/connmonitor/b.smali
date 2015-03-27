.class final Lcom/antispycell/connmonitor/b;
.super Ljava/lang/Object;
.source "AppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/AppDetails;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/AppDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/b;->a:Lcom/antispycell/connmonitor/AppDetails;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/antispycell/connmonitor/b;->a:Lcom/antispycell/connmonitor/AppDetails;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/AppDetails;->finish()V

    .line 154
    return-void
.end method
