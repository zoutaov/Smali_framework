.class Landroid/media/AudioService$ScoClient;
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
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .registers 4
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2039
    iput-object p1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    iput-object p2, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    .line 2041
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Landroid/media/AudioService$ScoClient;->mCreatorPid:I

    .line 2042
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 2043
    return-void
.end method

.method private requestScoState(II)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "targetSdkVersion"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2131
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->checkScoAudioState()V
    invoke-static {v1}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)V

    .line 2132
    invoke-virtual {p0}, Landroid/media/AudioService$ScoClient;->totalCount()I

    move-result v1

    if-nez v1, :cond_8e

    .line 2133
    const/16 v1, 0xc

    if-ne p1, v1, :cond_cf

    .line 2136
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v4}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    .line 2139
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 2140
    :try_start_20
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1

    iget v5, p0, Landroid/media/AudioService$ScoClient;->mCreatorPid:I

    if-ne v1, v5, :cond_c8

    :cond_41
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v1

    if-ne v1, v6, :cond_c8

    .line 2144
    :cond_51
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v1

    if-nez v1, :cond_bb

    .line 2145
    iget-object v5, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/16 v1, 0x12

    if-ge p2, v1, :cond_8f

    move v1, v2

    :goto_60
    # setter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v5, v1}, Landroid/media/AudioService;->access$2302(Landroid/media/AudioService;I)I

    .line 2148
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_ac

    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_ac

    .line 2150
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result v1

    if-ne v1, v3, :cond_91

    .line 2151
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v0

    .line 2156
    .local v0, "status":Z
    :goto_85
    if-eqz v0, :cond_a2

    .line 2157
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x3

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 2172
    .end local v0    # "status":Z
    :cond_8d
    :goto_8d
    monitor-exit v4

    .line 2199
    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    move v1, v3

    .line 2145
    goto :goto_60

    .line 2153
    :cond_91
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .restart local v0    # "status":Z
    goto :goto_85

    .line 2159
    :cond_a2
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    goto :goto_8d

    .line 2172
    .end local v0    # "status":Z
    :catchall_a9
    move-exception v1

    monitor-exit v4
    :try_end_ab
    .catchall {:try_start_20 .. :try_end_ab} :catchall_a9

    throw v1

    .line 2162
    :cond_ac
    :try_start_ac
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 2163
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    goto :goto_8d

    .line 2166
    :cond_bb
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x3

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 2167
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    goto :goto_8d

    .line 2170
    :cond_c8
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V
    :try_end_ce
    .catchall {:try_start_ac .. :try_end_ce} :catchall_a9

    goto :goto_8d

    .line 2173
    :cond_cf
    const/16 v1, 0xa

    if-ne p1, v1, :cond_8e

    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v1

    if-eq v1, v4, :cond_e3

    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v1

    if-ne v1, v3, :cond_8e

    .line 2176
    :cond_e3
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v1

    if-ne v1, v4, :cond_13b

    .line 2177
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_12c

    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_12c

    .line 2179
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result v1

    if-ne v1, v3, :cond_11b

    .line 2180
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v0

    .line 2185
    .restart local v0    # "status":Z
    :goto_10d
    if-nez v0, :cond_8e

    .line 2186
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 2187
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    goto/16 :goto_8e

    .line 2182
    .end local v0    # "status":Z
    :cond_11b
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .restart local v0    # "status":Z
    goto :goto_10d

    .line 2190
    .end local v0    # "status":Z
    :cond_12c
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 2191
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v6}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    goto/16 :goto_8e

    .line 2194
    :cond_13b
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 2195
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    goto/16 :goto_8e
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 2046
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2047
    :try_start_7
    const-string v1, "AudioService"

    const-string v3, "SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2049
    .local v0, "index":I
    if-gez v0, :cond_24

    .line 2050
    const-string v1, "AudioService"

    const-string/jumbo v3, "unregistered SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :goto_22
    monitor-exit v2

    .line 2056
    return-void

    .line 2052
    :cond_24
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 2053
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_22

    .line 2055
    .end local v0    # "index":I
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public clearCount(Z)V
    .registers 7
    .param p1, "stopSco"    # Z

    .prologue
    .line 2092
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2093
    :try_start_7
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_40

    if-eqz v1, :cond_11

    .line 2095
    :try_start_b
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_11
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_11} :catch_1e
    .catchall {:try_start_b .. :try_end_11} :catchall_40

    .line 2100
    :cond_11
    :goto_11
    const/4 v1, 0x0

    :try_start_12
    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 2101
    if-eqz p1, :cond_1c

    .line 2102
    const/16 v1, 0xa

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Landroid/media/AudioService$ScoClient;->requestScoState(II)V

    .line 2104
    :cond_1c
    monitor-exit v2

    .line 2105
    return-void

    .line 2096
    :catch_1e
    move-exception v0

    .line 2097
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCount() mStartcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != 0 but not registered to binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2104
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catchall_40
    move-exception v1

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_12 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public decCount()V
    .registers 5

    .prologue
    .line 2074
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2075
    :try_start_7
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    if-nez v1, :cond_14

    .line 2076
    const-string v1, "AudioService"

    const-string v3, "ScoClient.decCount() already 0"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :goto_12
    monitor-exit v2

    .line 2089
    return-void

    .line 2078
    :cond_14
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 2079
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2b

    if-nez v1, :cond_24

    .line 2081
    :try_start_1e
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_24
    .catch Ljava/util/NoSuchElementException; {:try_start_1e .. :try_end_24} :catch_2e
    .catchall {:try_start_1e .. :try_end_24} :catchall_2b

    .line 2086
    :cond_24
    :goto_24
    const/16 v1, 0xa

    const/4 v3, 0x0

    :try_start_27
    invoke-direct {p0, v1, v3}, Landroid/media/AudioService$ScoClient;->requestScoState(II)V

    goto :goto_12

    .line 2088
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    throw v1

    .line 2082
    :catch_2e
    move-exception v0

    .line 2083
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_2f
    const-string v1, "AudioService"

    const-string v3, "decCount() going to 0 but not registered to binder"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_2b

    goto :goto_24
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 2112
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 2108
    iget v0, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    return v0
.end method

.method public getPid()I
    .registers 2

    .prologue
    .line 2116
    iget v0, p0, Landroid/media/AudioService$ScoClient;->mCreatorPid:I

    return v0
.end method

.method public incCount(I)V
    .registers 7
    .param p1, "targetSdkVersion"    # I

    .prologue
    .line 2059
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2060
    const/16 v1, 0xc

    :try_start_9
    invoke-direct {p0, v1, p1}, Landroid/media/AudioService$ScoClient;->requestScoState(II)V

    .line 2061
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_40

    if-nez v1, :cond_16

    .line 2063
    :try_start_10
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_1e
    .catchall {:try_start_10 .. :try_end_16} :catchall_40

    .line 2069
    :cond_16
    :goto_16
    :try_start_16
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 2070
    monitor-exit v2

    .line 2071
    return-void

    .line 2064
    :catch_1e
    move-exception v0

    .line 2066
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScoClient  incCount() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 2070
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_40
    move-exception v1

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public totalCount()I
    .registers 6

    .prologue
    .line 2120
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 2121
    const/4 v0, 0x0

    .line 2122
    .local v0, "count":I
    :try_start_8
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2123
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v2, :cond_29

    .line 2124
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoClient;

    invoke-virtual {v3}, Landroid/media/AudioService$ScoClient;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 2123
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2126
    :cond_29
    monitor-exit v4

    return v0

    .line 2127
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v3
.end method
