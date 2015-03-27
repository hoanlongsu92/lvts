.class final Lcom/antispycell/connmonitor/bk;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/bj;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/bj;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/bk;->a:Lcom/antispycell/connmonitor/bj;

    iput p2, p0, Lcom/antispycell/connmonitor/bk;->b:I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/antispycell/connmonitor/bk;->a:Lcom/antispycell/connmonitor/bj;

    iget v1, p0, Lcom/antispycell/connmonitor/bk;->b:I

    invoke-static {v0, v1, p2}, Lcom/antispycell/connmonitor/bj;->a(Lcom/antispycell/connmonitor/bj;IZ)V

    .line 127
    return-void
.end method
