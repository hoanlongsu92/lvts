.class final Lcom/antispycell/connmonitor/aq;
.super Ljava/lang/Object;
.source "IPDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/IPDetails;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/IPDetails;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/aq;->a:Lcom/antispycell/connmonitor/IPDetails;

    iput-object p2, p0, Lcom/antispycell/connmonitor/aq;->b:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/antispycell/connmonitor/aq;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/antispycell/connmonitor/aq;->a:Lcom/antispycell/connmonitor/IPDetails;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/IPDetails;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/antispycell/connmonitor/by;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 142
    return-void
.end method
