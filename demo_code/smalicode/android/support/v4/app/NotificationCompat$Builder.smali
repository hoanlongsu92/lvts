.class public Landroid/support/v4/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field mActions:Ljava/util/ArrayList;

.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mStyle:Landroid/support/v4/app/NotificationCompat$Style;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mUseChronometer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 196
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 199
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 200
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    .line 202
    return-void
.end method

.method private setFlag(IZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 494
    if-eqz p2, :cond_a

    .line 495
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 499
    :goto_9
    return-void

    .line 497
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_9
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .registers 2

    .prologue
    .line 558
    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->access$000()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .registers 2

    .prologue
    .line 550
    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->access$000()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3
    .parameter

    .prologue
    .line 471
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 472
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 317
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 298
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 330
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 270
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 262
    return-object p0
.end method

.method public setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 4
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 487
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_10

    .line 488
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 490
    :cond_10
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 342
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 360
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 361
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 389
    return-object p0
.end method

.method public setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 431
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 432
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 433
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz v0, :cond_2a

    move v0, v1

    .line 434
    :goto_1b
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_2c

    :goto_25
    or-int v0, v4, v1

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 436
    return-object p0

    :cond_2a
    move v0, v2

    .line 433
    goto :goto_1b

    :cond_2c
    move v1, v2

    .line 434
    goto :goto_25
.end method

.method public setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2
    .parameter

    .prologue
    .line 289
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    .line 290
    return-object p0
.end method

.method public setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3
    .parameter

    .prologue
    .line 451
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 452
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3
    .parameter

    .prologue
    .line 460
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 461
    return-object p0
.end method

.method public setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2
    .parameter

    .prologue
    .line 513
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    .line 514
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    .line 307
    iput p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    .line 308
    iput-boolean p3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 309
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 238
    return-object p0
.end method

.method public setSmallIcon(II)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 253
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 254
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 4
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 397
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 398
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 409
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 410
    return-object p0
.end method

.method public setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3
    .parameter

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eq v0, p1, :cond_f

    .line 537
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    .line 538
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v0, :cond_f

    .line 539
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Style;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 542
    :cond_f
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 280
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 370
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 380
    iput-object p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 381
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 226
    return-object p0
.end method

.method public setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 421
    return-object p0
.end method

.method public setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 4
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 210
    return-object p0
.end method
