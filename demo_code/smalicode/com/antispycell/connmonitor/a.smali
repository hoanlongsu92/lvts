.class final Lcom/antispycell/connmonitor/a;
.super Ljava/lang/Object;
.source "AppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/AppDetails;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/AppDetails;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/a;->a:Lcom/antispycell/connmonitor/AppDetails;

    iput-object p2, p0, Lcom/antispycell/connmonitor/a;->b:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/antispycell/connmonitor/a;->a:Lcom/antispycell/connmonitor/AppDetails;

    iget-object v1, p0, Lcom/antispycell/connmonitor/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/antispycell/connmonitor/AppDetails;->a(Ljava/lang/String;)V

    .line 90
    return-void
.end method
