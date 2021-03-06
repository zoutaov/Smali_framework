.class final Landroid/os/Handler$BlockingRunnable;
.super Ljava/lang/Object;
.source "Handler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingRunnable"
.end annotation


# instance fields
.field private mDone:Z

.field private final mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p1, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    .line 748
    return-void
.end method


# virtual methods
.method public postAndWait(Landroid/os/Handler;J)Z
    .registers 13
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "timeout"    # J

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    .line 763
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 789
    :goto_9
    return v4

    .line 767
    :cond_a
    monitor-enter p0

    .line 768
    cmp-long v5, p2, v7

    if-lez v5, :cond_2e

    .line 769
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long v2, v5, p2

    .line 770
    .local v2, "expirationTime":J
    :goto_15
    iget-boolean v5, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    if-nez v5, :cond_38

    .line 771
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v0, v2, v5

    .line 772
    .local v0, "delay":J
    cmp-long v5, v0, v7

    if-gtz v5, :cond_28

    .line 773
    monitor-exit p0

    goto :goto_9

    .line 788
    .end local v0    # "delay":J
    .end local v2    # "expirationTime":J
    :catchall_25
    move-exception v4

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_25

    throw v4

    .line 776
    .restart local v0    # "delay":J
    .restart local v2    # "expirationTime":J
    :cond_28
    :try_start_28
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    goto :goto_15

    .line 777
    :catch_2c
    move-exception v5

    goto :goto_15

    .line 781
    .end local v0    # "delay":J
    .end local v2    # "expirationTime":J
    :cond_2e
    :goto_2e
    :try_start_2e
    iget-boolean v4, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_25

    if-nez v4, :cond_38

    .line 783
    :try_start_32
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_25

    goto :goto_2e

    .line 784
    :catch_36
    move-exception v4

    goto :goto_2e

    .line 788
    :cond_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_25

    .line 789
    const/4 v4, 0x1

    goto :goto_9
.end method

.method public run()V
    .registers 3

    .prologue
    .line 753
    :try_start_0
    iget-object v0, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_11

    .line 755
    monitor-enter p0

    .line 756
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    .line 757
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 758
    monitor-exit p0

    .line 760
    return-void

    .line 758
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0

    .line 755
    :catchall_11
    move-exception v0

    monitor-enter p0

    .line 756
    const/4 v1, 0x1

    :try_start_14
    iput-boolean v1, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    .line 757
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 758
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1b

    throw v0

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method
