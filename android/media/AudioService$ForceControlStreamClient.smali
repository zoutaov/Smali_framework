.class Landroid/media/AudioService$ForceControlStreamClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceControlStreamClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .registers 7
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1079
    iput-object p1, p0, Landroid/media/AudioService$ForceControlStreamClient;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1080
    if-eqz p2, :cond_b

    .line 1082
    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_e

    .line 1089
    :cond_b
    :goto_b
    iput-object p2, p0, Landroid/media/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    .line 1090
    return-void

    .line 1083
    :catch_e
    move-exception v0

    .line 1085
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForceControlStreamClient() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 p2, 0x0

    goto :goto_b
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$600(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1094
    :try_start_7
    const-string v0, "AudioService"

    const-string v2, "SCO client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;
    invoke-static {v0}, Landroid/media/AudioService;->access$700(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;

    move-result-object v0

    if-eq v0, p0, :cond_20

    .line 1096
    const-string v0, "AudioService"

    const-string/jumbo v2, "unregistered control stream client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :goto_1e
    monitor-exit v1

    .line 1102
    return-void

    .line 1098
    :cond_20
    iget-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    # setter for: Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$702(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;

    .line 1099
    iget-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->this$0:Landroid/media/AudioService;

    const/4 v2, -0x1

    # setter for: Landroid/media/AudioService;->mVolumeControlStream:I
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$802(Landroid/media/AudioService;I)I

    goto :goto_1e

    .line 1101
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public release()V
    .registers 3

    .prologue
    .line 1105
    iget-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    if-eqz v0, :cond_d

    .line 1106
    iget-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    .line 1109
    :cond_d
    return-void
.end method
