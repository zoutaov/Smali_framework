.class Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService$VolumeStreamState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeDeathHandler"
.end annotation


# instance fields
.field private mICallback:Landroid/os/IBinder;

.field private mMuteCount:I

.field final synthetic this$1:Landroid/media/AudioService$VolumeStreamState;


# direct methods
.method constructor <init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3074
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3075
    iput-object p2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    .line 3076
    return-void
.end method

.method static synthetic access$1800(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .prologue
    .line 3070
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    return v0
.end method

.method static synthetic access$1802(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .param p1, "x1"    # I

    .prologue
    .line 3070
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    return p1
.end method

.method static synthetic access$4300(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .prologue
    .line 3070
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 3132
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume service client died for stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-eqz v0, :cond_29

    .line 3135
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    .line 3136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 3138
    :cond_29
    return-void
.end method

.method public mute(Z)V
    .registers 11
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3080
    const/4 v8, 0x0

    .line 3081
    .local v8, "updateVolume":Z
    if-eqz p1, :cond_6a

    .line 3082
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-nez v0, :cond_44

    .line 3086
    :try_start_8
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    if-eqz v0, :cond_12

    .line 3087
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3089
    :cond_12
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3091
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_3f

    move-result v0

    if-nez v0, :cond_24

    .line 3092
    const/4 v8, 0x1

    .line 3102
    :cond_24
    :goto_24
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    .line 3121
    :cond_2a
    :goto_2a
    if-eqz v8, :cond_3e

    .line 3122
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v0, v0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x2

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    move v4, v3

    move v6, v3

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3129
    :cond_3e
    :goto_3e
    return-void

    .line 3094
    :catch_3f
    move-exception v7

    .line 3096
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->binderDied()V

    goto :goto_3e

    .line 3100
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_44
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was already muted by this client"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 3104
    :cond_6a
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-nez v0, :cond_8e

    .line 3105
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected unmute for stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 3107
    :cond_8e
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    .line 3108
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-nez v0, :cond_2a

    .line 3110
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3112
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    if-eqz v0, :cond_aa

    .line 3113
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3115
    :cond_aa
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 3116
    const/4 v8, 0x1

    goto/16 :goto_2a
.end method
