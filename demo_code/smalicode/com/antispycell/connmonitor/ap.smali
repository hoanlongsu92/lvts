.class final Lcom/antispycell/connmonitor/ap;
.super Ljava/lang/Object;
.source "IPDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/IPDetails;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/IPDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/ap;->a:Lcom/antispycell/connmonitor/IPDetails;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/antispycell/connmonitor/ap;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-virtual {v0}, Lcom/antispycell/connmonitor/IPDetails;->finish()V

    .line 132
    return-void
.end method
