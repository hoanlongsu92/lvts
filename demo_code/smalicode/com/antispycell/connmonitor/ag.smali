.class final Lcom/antispycell/connmonitor/ag;
.super Ljava/lang/Object;
.source "ConnectionMonitorLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antispycell/connmonitor/ae;

.field private final synthetic b:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/antispycell/connmonitor/ae;Landroid/widget/Button;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/antispycell/connmonitor/ag;->a:Lcom/antispycell/connmonitor/ae;

    iput-object p2, p0, Lcom/antispycell/connmonitor/ag;->b:Landroid/widget/Button;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    const-class v2, Lcom/antispycell/connmonitor/LoggingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    sget-object v1, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 160
    sget-object v1, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 161
    iget-object v0, p0, Lcom/antispycell/connmonitor/ag;->b:Landroid/widget/Button;

    const-string v1, "Stop Live Capture"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/antispycell/connmonitor/ag;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/antispycell/connmonitor/ag;->a:Lcom/antispycell/connmonitor/ae;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/ae;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    .line 172
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/antispycell/connmonitor/ag;->a:Lcom/antispycell/connmonitor/ae;

    sget-object v1, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/p;->a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v1

    iput-object v1, v0, Lcom/antispycell/connmonitor/ae;->h:Lcom/google/analytics/tracking/android/p;

    .line 173
    iget-object v0, p0, Lcom/antispycell/connmonitor/ag;->a:Lcom/antispycell/connmonitor/ae;

    iget-object v1, v0, Lcom/antispycell/connmonitor/ae;->h:Lcom/google/analytics/tracking/android/p;

    .line 174
    const-string v2, "ui_action"

    .line 175
    const-string v3, "button_press"

    .line 176
    sget-object v0, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8d

    const-string v0, "LIVE CAPTURE START"

    .line 177
    :goto_52
    const/4 v4, 0x0

    .line 173
    invoke-static {v2, v3, v0, v4}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/at;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v0

    .line 173
    invoke-virtual {v1, v0}, Lcom/google/analytics/tracking/android/p;->a(Ljava/util/Map;)V

    .line 180
    return-void

    .line 165
    :cond_5f
    sget-object v1, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 166
    sget-object v1, Lcom/antispycell/connmonitor/ae;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 167
    iget-object v0, p0, Lcom/antispycell/connmonitor/ag;->b:Landroid/widget/Button;

    const-string v1, "Start Live Capture"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/antispycell/connmonitor/ag;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/antispycell/connmonitor/ag;->a:Lcom/antispycell/connmonitor/ae;

    invoke-virtual {v1}, Lcom/antispycell/connmonitor/ae;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/antispycell/connmonitor/ae;->d:Ljava/lang/Boolean;

    goto :goto_36

    .line 176
    :cond_8d
    const-string v0, "LIVE CAPTURE STOP"

    goto :goto_52
.end method
