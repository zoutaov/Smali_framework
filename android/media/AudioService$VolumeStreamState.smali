.class public Landroid/media/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    }
.end annotation


# instance fields
.field private mDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexMax:I

.field private final mStreamType:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;Ljava/lang/String;I)V
    .registers 8
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    .prologue
    .line 2842
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2838
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2844
    iput-object p2, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 2846
    iput p3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    .line 2847
    # getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {}, Landroid/media/AudioService;->access$3300()[I

    move-result-object v0

    aget v0, v0, p3

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 2848
    const/4 v0, 0x0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 2849
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 2852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    .line 2854
    invoke-virtual {p0}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 2855
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V
    .registers 5
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/media/AudioService$1;

    .prologue
    .line 2833
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 2833
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioService$VolumeStreamState;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 2833
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isMuted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 2833
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$500(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 2833
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 2833
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic access$900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 2833
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3176
    const-string v3, "   Mute count: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3177
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3178
    const-string v3, "   Current: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3179
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 3180
    .local v2, "set":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3181
    .local v1, "i":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 3182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3183
    .local v0, "entry":Ljava/util/Map$Entry;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1b

    .line 3186
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_64
    return-void
.end method

.method private getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .registers 9
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .prologue
    .line 3157
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3158
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v3, :cond_1c

    .line 3159
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .line 3160
    .local v0, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    # getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$4300(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;

    move-result-object v4

    if-ne p1, v4, :cond_19

    move-object v1, v0

    .line 3172
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .local v1, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_18
    return-object v1

    .line 3158
    .end local v1    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3166
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_1c
    if-eqz p2, :cond_25

    .line 3167
    new-instance v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;-><init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V

    .restart local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_23
    move-object v1, v0

    .line 3172
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v1    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_18

    .line 3169
    .end local v1    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_25
    const-string v4, "AudioService"

    const-string/jumbo v5, "stream was not muted by this client"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    const/4 v0, 0x0

    .restart local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_23
.end method

.method private getValidIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 3061
    if-gez p1, :cond_4

    .line 3062
    const/4 p1, 0x0

    .line 3067
    .end local p1    # "index":I
    :cond_3
    :goto_3
    return p1

    .line 3063
    .restart local p1    # "index":I
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_3

    .line 3064
    :cond_10
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_3
.end method

.method private declared-synchronized isMuted()Z
    .registers 2

    .prologue
    .line 3151
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized muteCount()I
    .registers 5

    .prologue
    .line 3142
    monitor-enter p0

    const/4 v0, 0x0

    .line 3143
    .local v0, "count":I
    :try_start_2
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3144
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_1b

    .line 3145
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    # getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1800(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_1d

    move-result v3

    add-int/2addr v0, v3

    .line 3144
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3147
    :cond_1b
    monitor-exit p0

    return v0

    .line 3142
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_1d
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public adjustIndex(II)Z
    .registers 4
    .param p1, "deltaIndex"    # I
    .param p2, "device"    # I

    .prologue
    .line 2962
    invoke-virtual {p0, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized applyAllVolumes()V
    .registers 9

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 2935
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isMuted()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 2936
    const/4 v3, 0x0

    .line 2940
    .local v3, "index":I
    :goto_a
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v3, v6}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 2942
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 2943
    .local v4, "set":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2944
    .local v2, "i":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 2945
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2946
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2947
    .local v0, "device":I
    if-eq v0, v7, :cond_1b

    .line 2948
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isMuted()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 2949
    const/4 v3, 0x0

    .line 2956
    :goto_3a
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_40

    goto :goto_1b

    .line 2935
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "set":Ljava/util/Set;
    :catchall_40
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2938
    :cond_43
    const/high16 v5, 0x40000000    # 2.0f

    :try_start_45
    invoke-virtual {p0, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v3, v5, 0xa

    .restart local v3    # "index":I
    goto :goto_a

    .line 2950
    .restart local v0    # "device":I
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    .restart local v2    # "i":Ljava/util/Iterator;
    .restart local v4    # "set":Ljava/util/Set;
    :cond_4e
    and-int/lit16 v5, v0, 0x380

    if-eqz v5, :cond_61

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v5}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 2952
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v3, v5, 0xa

    goto :goto_3a

    .line 2954
    :cond_61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v3, v5, 0xa
    :try_end_6f
    .catchall {:try_start_45 .. :try_end_6f} :catchall_40

    goto :goto_3a

    .line 2959
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_70
    monitor-exit p0

    return-void
.end method

.method public applyDeviceVolume(I)V
    .registers 4
    .param p1, "device"    # I

    .prologue
    .line 2920
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2921
    const/4 v0, 0x0

    .line 2928
    .local v0, "index":I
    :goto_7
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 2929
    return-void

    .line 2922
    .end local v0    # "index":I
    :cond_d
    and-int/lit16 v1, p1, 0x380

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2924
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .restart local v0    # "index":I
    goto :goto_7

    .line 2926
    .end local v0    # "index":I
    :cond_20
    invoke-virtual {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .restart local v0    # "index":I
    goto :goto_7
.end method

.method public declared-synchronized getIndex(I)I
    .registers 5
    .param p1, "device"    # I

    .prologue
    .line 3001
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3002
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_1d

    .line 3004
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "index":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 3006
    .restart local v0    # "index":Ljava/lang/Integer;
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    move-result v1

    monitor-exit p0

    return v1

    .line 3001
    .end local v0    # "index":Ljava/lang/Integer;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMaxIndex()I
    .registers 2

    .prologue
    .line 3010
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .registers 6
    .param p1, "device"    # I

    .prologue
    .line 2858
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 2859
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 2860
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2863
    .end local v0    # "name":Ljava/lang/String;
    :goto_c
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getStreamType()I
    .registers 2

    .prologue
    .line 3057
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public declared-synchronized mute(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .prologue
    .line 3048
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 3049
    .local v0, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_23

    .line 3050
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get client death handler for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_27

    .line 3054
    :goto_21
    monitor-exit p0

    return-void

    .line 3053
    :cond_23
    :try_start_23
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_21

    .line 3048
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readSettings()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v7, -0x1

    const/high16 v10, 0x40000000    # 2.0f

    .line 2868
    monitor-enter p0

    :try_start_5
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v6}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 2869
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_57

    .line 2916
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    .line 2875
    :cond_20
    :try_start_20
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v6, v11, :cond_29

    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v8, 0x7

    if-ne v6, v8, :cond_5d

    .line 2877
    :cond_29
    sget-object v6, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v7

    mul-int/lit8 v3, v6, 0xa

    .line 2878
    .local v3, "index":I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v6}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v7

    monitor-enter v7
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_57

    .line 2879
    :try_start_38
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v6}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 2880
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 2882
    :cond_46
    monitor-exit v7
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_5a

    .line 2883
    :try_start_47
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_57

    goto :goto_1e

    .line 2868
    .end local v3    # "index":I
    :catchall_57
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2882
    .restart local v3    # "index":I
    :catchall_5a
    move-exception v6

    :try_start_5b
    monitor-exit v7
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v6

    .line 2887
    .end local v3    # "index":I
    :cond_5d
    const v5, 0x4000ffff

    .line 2889
    .local v5, "remainingDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_61
    if-eqz v5, :cond_1e

    .line 2890
    shl-int v1, v11, v2

    .line 2891
    .local v1, "device":I
    and-int v6, v1, v5

    if-nez v6, :cond_6c

    .line 2889
    :cond_69
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 2894
    :cond_6c
    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v5, v6

    .line 2897
    invoke-virtual {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v4

    .line 2900
    .local v4, "name":Ljava/lang/String;
    if-ne v1, v10, :cond_ab

    sget-object v6, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v6, v8

    .line 2902
    .local v0, "defaultIndex":I
    :goto_7b
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, -0x2

    invoke-static {v6, v4, v0, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 2904
    .restart local v3    # "index":I
    if-eq v3, v7, :cond_69

    .line 2909
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v6}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)[I

    move-result-object v6

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v8

    const/4 v8, 0x3

    if-ne v6, v8, :cond_af

    and-int/lit16 v6, v1, 0x7c00

    if-eqz v6, :cond_af

    .line 2911
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v3, :cond_ad

    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    :goto_a3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    .end local v0    # "defaultIndex":I
    .end local v3    # "index":I
    :cond_ab
    move v0, v7

    .line 2900
    goto :goto_7b

    .line 2911
    .restart local v0    # "defaultIndex":I
    .restart local v3    # "index":I
    :cond_ad
    const/4 v6, 0x0

    goto :goto_a3

    .line 2913
    :cond_af
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    mul-int/lit8 v9, v3, 0xa

    invoke-direct {p0, v9}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c2
    .catchall {:try_start_5c .. :try_end_c2} :catchall_57

    goto :goto_69
.end method

.method public declared-synchronized setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V
    .registers 10
    .param p1, "srcStream"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 3014
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->getStreamType()I

    move-result v5

    .line 3017
    .local v5, "srcStreamType":I
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p1, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    .line 3018
    .local v3, "index":I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, v3, v5, v7}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;III)I

    move-result v3

    .line 3019
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 3020
    .local v4, "set":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3021
    .local v2, "i":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 3022
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3023
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_31

    goto :goto_1d

    .line 3014
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "set":Ljava/util/Set;
    .end local v5    # "srcStreamType":I
    :catchall_31
    move-exception v6

    monitor-exit p0

    throw v6

    .line 3026
    .restart local v2    # "i":Ljava/util/Iterator;
    .restart local v3    # "index":I
    .restart local v4    # "set":Ljava/util/Set;
    .restart local v5    # "srcStreamType":I
    :cond_34
    :try_start_34
    iget-object v6, p1, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 3027
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3028
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 3029
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3030
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3031
    .local v0, "device":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3032
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, v3, v5, v7}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;III)I

    move-result v3

    .line 3034
    invoke-virtual {p0, v3, v0}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z
    :try_end_69
    .catchall {:try_start_34 .. :try_end_69} :catchall_31

    goto :goto_3e

    .line 3036
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_6a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAllIndexesToMax()V
    .registers 5

    .prologue
    .line 3039
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 3040
    .local v2, "set":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3041
    .local v1, "i":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3042
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3043
    .local v0, "entry":Ljava/util/Map$Entry;
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_b

    .line 3039
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "set":Ljava/util/Set;
    :catchall_21
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3045
    .restart local v1    # "i":Ljava/util/Iterator;
    .restart local v2    # "set":Ljava/util/Set;
    :cond_24
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setIndex(II)Z
    .registers 13
    .param p1, "index"    # I
    .param p2, "device"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2967
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 2968
    .local v2, "oldIndex":I
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result p1

    .line 2969
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v7}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v7

    monitor-enter v7
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_84

    .line 2970
    :try_start_12
    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_25

    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v8}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 2971
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 2973
    :cond_25
    monitor-exit v7
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_81

    .line 2974
    :try_start_26
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2976
    if-eq v2, p1, :cond_89

    .line 2980
    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v7, v8}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;I)I

    move-result v7

    if-ne p2, v7, :cond_87

    move v0, v5

    .line 2981
    .local v0, "currentDevice":Z
    :goto_40
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2982
    .local v1, "numStreamTypes":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "streamType":I
    :goto_46
    if-ltz v4, :cond_8a

    .line 2983
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v4, v6, :cond_7e

    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v6}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)[I

    move-result-object v6

    aget v6, v6, v4

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v7, :cond_7e

    .line 2985
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, p1, v7, v4}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;III)I

    move-result v3

    .line 2986
    .local v3, "scaledIndex":I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v6}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6, v3, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    .line 2988
    if-eqz v0, :cond_7e

    .line 2989
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v6}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v4

    iget-object v7, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v7, v4}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;I)I

    move-result v7

    invoke-virtual {v6, v3, v7}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z
    :try_end_7e
    .catchall {:try_start_26 .. :try_end_7e} :catchall_84

    .line 2982
    .end local v3    # "scaledIndex":I
    :cond_7e
    add-int/lit8 v4, v4, -0x1

    goto :goto_46

    .line 2973
    .end local v0    # "currentDevice":Z
    .end local v1    # "numStreamTypes":I
    .end local v4    # "streamType":I
    :catchall_81
    move-exception v5

    :try_start_82
    monitor-exit v7
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    :try_start_83
    throw v5
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    .line 2967
    .end local v2    # "oldIndex":I
    :catchall_84
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v2    # "oldIndex":I
    :cond_87
    move v0, v6

    .line 2980
    goto :goto_40

    :cond_89
    move v5, v6

    .line 2996
    :cond_8a
    monitor-exit p0

    return v5
.end method
