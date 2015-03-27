.class final Lcom/antispycell/connmonitor/z;
.super Ljava/lang/Object;
.source "ConnectionMonitorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/w;

.field private final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/w;Landroid/view/ViewGroup;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/z;->a:Lcom/antispycell/connmonitor/w;

    iput-object p2, p0, Lcom/antispycell/connmonitor/z;->b:Landroid/view/ViewGroup;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/antispycell/connmonitor/z;->a:Lcom/antispycell/connmonitor/w;

    iget-object v0, v0, Lcom/antispycell/connmonitor/w;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/antispycell/connmonitor/z;->a:Lcom/antispycell/connmonitor/w;

    iget-object v1, v1, Lcom/antispycell/connmonitor/w;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 165
    const-string v1, "resolvehostnames"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object v1, p0, Lcom/antispycell/connmonitor/z;->a:Lcom/antispycell/connmonitor/w;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/antispycell/connmonitor/w;->l:Ljava/lang/Boolean;

    .line 167
    const/4 v1, 0x0

    sput-object v1, Lcom/antispycell/connmonitor/w;->d:Ljava/util/HashMap;

    .line 174
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/antispycell/connmonitor/z;->a:Lcom/antispycell/connmonitor/w;

    iget-object v2, p0, Lcom/antispycell/connmonitor/z;->b:Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lcom/antispycell/connmonitor/w;->a(Lcom/antispycell/connmonitor/w;Landroid/view/ViewGroup;)V

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    return-void

    .line 171
    :cond_2f
    const-string v1, "resolvehostnames"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    iget-object v1, p0, Lcom/antispycell/connmonitor/z;->a:Lcom/antispycell/connmonitor/w;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/antispycell/connmonitor/w;->l:Ljava/lang/Boolean;

    .line 173
    iget-object v1, p0, Lcom/antispycell/connmonitor/z;->a:Lcom/antispycell/connmonitor/w;

    iget-object v1, v1, Lcom/antispycell/connmonitor/w;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Lcom/antispycell/connmonitor/w;->d:Ljava/util/HashMap;

    if-nez v1, :cond_24

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/antispycell/connmonitor/w;->d:Ljava/util/HashMap;

    goto :goto_24
.end method
