.class Landroid/support/v4/app/LoaderManagerImpl;
.super Landroid/support/v4/app/LoaderManager;
.source "LoaderManager.java"


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field mCreatingLoader:Z

.field final mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

.field final mLoaders:Landroid/support/v4/util/SparseArrayCompat;

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-direct {p0}, Landroid/support/v4/app/LoaderManager;-><init>()V

    .line 194
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    .line 200
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    .line 476
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 477
    iput-boolean p2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 478
    return-void
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 495
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    .line 496
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 497
    invoke-virtual {p0, v0}, Landroid/support/v4/app/LoaderManagerImpl;->installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    .line 498
    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    return-object v0

    :catchall_e
    move-exception v0

    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    throw v0
.end method

.method private createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;-><init>(Landroid/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    .line 487
    invoke-interface {p3, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v1

    .line 488
    iput-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    .line 489
    return-object v0
.end method


# virtual methods
.method public destroyLoader(I)V
    .registers 5
    .parameter

    .prologue
    .line 655
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v0, :cond_c

    .line 656
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_c
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destroyLoader in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v1

    .line 661
    if-ltz v1, :cond_46

    .line 662
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 663
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 664
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 666
    :cond_46
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v1

    .line 667
    if-ltz v1, :cond_5e

    .line 668
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 669
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 670
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 672
    :cond_5e
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 673
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 675
    :cond_6f
    return-void
.end method

.method doDestroy()V
    .registers 4

    .prologue
    .line 770
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v0, :cond_36

    .line 771
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Active in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_25
    if-ltz v1, :cond_36

    .line 773
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 772
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_25

    .line 777
    :cond_36
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_4e

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Inactive in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_4e
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_57
    if-ltz v1, :cond_68

    .line 779
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 778
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_57

    .line 781
    :cond_68
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 782
    return-void
.end method

.method doReportNextStart()V
    .registers 4

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 759
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 758
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 761
    :cond_1a
    return-void
.end method

.method doReportStart()V
    .registers 3

    .prologue
    .line 764
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 765
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->reportStart()V

    .line 764
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 767
    :cond_1a
    return-void
.end method

.method doRetain()V
    .registers 5

    .prologue
    .line 731
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retaining in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_18
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_3b

    .line 733
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 735
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doRetain when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    :cond_3a
    return-void

    .line 739
    :cond_3b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4a
    if-ltz v1, :cond_3a

    .line 742
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->retain()V

    .line 741
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4a
.end method

.method doStart()V
    .registers 5

    .prologue
    .line 698
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_18
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_3b

    .line 700
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 702
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStart when already started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    :cond_3a
    return-void

    .line 706
    :cond_3b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 710
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_47
    if-ltz v1, :cond_3a

    .line 711
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 710
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_47
.end method

.method doStop()V
    .registers 5

    .prologue
    .line 716
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_18
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_3b

    .line 718
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 720
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStop when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    :goto_3a
    return-void

    .line 724
    :cond_3b
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_44
    if-ltz v1, :cond_55

    .line 725
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 724
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_44

    .line 727
    :cond_55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    goto :goto_3a
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 797
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_59

    .line 798
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 800
    :goto_25
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-ge v1, v0, :cond_59

    .line 801
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 802
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 803
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 800
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 807
    :cond_59
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_af

    .line 808
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 810
    :goto_7c
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-ge v2, v0, :cond_af

    .line 811
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 812
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 813
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 810
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 817
    :cond_af
    return-void
.end method

.method finishRetain()V
    .registers 4

    .prologue
    .line 747
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v0, :cond_39

    .line 748
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finished Retaining in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    .line 751
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_28
    if-ltz v1, :cond_39

    .line 752
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V

    .line 751
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_28

    .line 755
    :cond_39
    return-void
.end method

.method public getLoader(I)Landroid/support/v4/content/Loader;
    .registers 4
    .parameter

    .prologue
    .line 683
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v0, :cond_c

    .line 684
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 688
    if-eqz v0, :cond_22

    .line 689
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_1f

    .line 690
    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    .line 694
    :goto_1e
    return-object v0

    .line 692
    :cond_1f
    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    goto :goto_1e

    .line 694
    :cond_22
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public hasRunningLoaders()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 821
    .line 822
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 823
    :goto_9
    if-ge v2, v4, :cond_23

    .line 824
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 825
    iget-boolean v5, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v5, :cond_21

    iget-boolean v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    :goto_1c
    or-int/2addr v3, v0

    .line 823
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_21
    move v0, v1

    .line 825
    goto :goto_1c

    .line 827
    :cond_23
    return v3
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v0, :cond_c

    .line 541
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 546
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_36

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initLoader in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_36
    if-nez v0, :cond_66

    .line 550
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 551
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_54

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Created new loader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_54
    :goto_54
    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v1, :cond_63

    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v1, :cond_63

    .line 559
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    iget-object v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 562
    :cond_63
    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    return-object v0

    .line 553
    :cond_66
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_7e

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Re-using existing loader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_7e
    iput-object p3, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    goto :goto_54
.end method

.method installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    iget v1, p1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 506
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_e

    .line 510
    invoke-virtual {p1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 512
    :cond_e
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 590
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v0, :cond_d

    .line 591
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 595
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_37

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restartLoader in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_37
    if-eqz v0, :cond_6f

    .line 597
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 598
    if-eqz v1, :cond_c9

    .line 599
    iget-boolean v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v2, :cond_76

    .line 604
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_5f

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Removing last inactive loader: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_5f
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 606
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 638
    :cond_65
    :goto_65
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->abandon()V

    .line 639
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 643
    :cond_6f
    :goto_6f
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 644
    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    :goto_75
    return-object v0

    .line 612
    :cond_76
    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v1, :cond_8e

    .line 616
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_85

    const-string v1, "LoaderManager"

    const-string v2, "  Current loader is stopped; replacing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_85
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 618
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    goto :goto_6f

    .line 623
    :cond_8e
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_b3

    .line 624
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_ac

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Removing pending loader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_ac
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 626
    iput-object v4, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 628
    :cond_b3
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_be

    const-string v1, "LoaderManager"

    const-string v2, "  Enqueuing as new pending loader"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_be
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 631
    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    goto :goto_75

    .line 637
    :cond_c9
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_65

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Making last loader inactive: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 787
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 791
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateActivity(Landroid/support/v4/app/FragmentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 482
    return-void
.end method
