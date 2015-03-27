.class public Lcom/antispycell/connmonitor/StopLoggerAlarm;
.super Landroid/content/BroadcastReceiver;
.source "StopLoggerAlarm.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antispycell/connmonitor/LoggingService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 17
    invoke-static {p1}, Lcom/antispycell/connmonitor/by;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antispycell/connmonitor/ConnectionMonitorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    const-string v1, "trial"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 23
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 25
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020010

    const-string v4, "Network Connections - Live Capture Stopped"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 26
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 27
    const-string v3, "Network Connections"

    const-string v4, "Live Capture is limited in the Trial version."

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 29
    const/16 v1, 0x1ba

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 33
    :cond_4d
    return-void
.end method
