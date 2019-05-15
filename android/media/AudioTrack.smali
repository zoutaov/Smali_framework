.class public Landroid/media/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$NativeEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final SAMPLE_RATE_HZ_MAX:I = 0xbb80

.field private static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x4fc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field private static final VOLUME_MAX:F = 1.0f

.field private static final VOLUME_MIN:F


# instance fields
.field private mAudioFormat:I

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannels:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:I

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field private mNativeTrackInJavaObj:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 15
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 267
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 20
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 158
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 162
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 166
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 183
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 187
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 196
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 200
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 204
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 210
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 214
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 310
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v11

    .local v11, "looper":Landroid/os/Looper;
    if-nez v11, :cond_35

    .line 311
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    .line 313
    :cond_35
    iput-object v11, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    .line 315
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 317
    move/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 319
    if-gez p7, :cond_64

    .line 320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio session ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_64
    const/4 v1, 0x1

    new-array v9, v1, [I

    .line 324
    .local v9, "session":[I
    const/4 v1, 0x0

    aput p7, v9, v1

    .line 326
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    iget v4, p0, Landroid/media/AudioTrack;->mSampleRate:I

    iget v5, p0, Landroid/media/AudioTrack;->mChannels:I

    iget v6, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v7, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v8, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;IIIIII[I)I

    move-result v10

    .line 329
    .local v10, "initResult":I
    if-eqz v10, :cond_9f

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 341
    :goto_9e
    return-void

    .line 334
    :cond_9f
    const/4 v1, 0x0

    aget v1, v9, v1

    iput v1, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 336
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_ac

    .line 337
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_9e

    .line 339
    :cond_ac
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_9e
.end method

.method static synthetic access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioTrack;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .registers 7
    .param p1, "audioBufferSize"    # I

    .prologue
    const/4 v2, 0x1

    .line 474
    iget v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_19

    move v1, v2

    :goto_9
    mul-int v0, v3, v1

    .line 476
    .local v0, "frameSizeInBytes":I
    rem-int v1, p1, v0

    if-nez v1, :cond_11

    if-ge p1, v2, :cond_1b

    .line 477
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    .end local v0    # "frameSizeInBytes":I
    :cond_19
    const/4 v1, 0x2

    goto :goto_9

    .line 480
    .restart local v0    # "frameSizeInBytes":I
    :cond_1b
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 481
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 482
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .registers 10
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 367
    if-eq p1, v3, :cond_20

    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    if-eq p1, v2, :cond_20

    if-eq p1, v1, :cond_20

    if-eqz p1, :cond_20

    const/4 v0, 0x5

    if-eq p1, v0, :cond_20

    const/4 v0, 0x6

    if-eq p1, v0, :cond_20

    const/16 v0, 0x8

    if-eq p1, v0, :cond_20

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_20
    iput p1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 379
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_2b

    const v0, 0xbb80

    if-le p2, v0, :cond_44

    .line 380
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_44
    iput p2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 387
    iput p3, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 389
    sparse-switch p3, :sswitch_data_8c

    .line 402
    invoke-static {p3}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :sswitch_59
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 394
    iput v3, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 412
    :goto_5d
    packed-switch p4, :pswitch_data_a2

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :sswitch_68
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 399
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioTrack;->mChannels:I

    goto :goto_5d

    .line 406
    :cond_6f
    iput p3, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 407
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_5d

    .line 414
    :pswitch_78
    iput v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 427
    :goto_7a
    if-eq p5, v1, :cond_89

    if-eqz p5, :cond_89

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :pswitch_86
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    goto :goto_7a

    .line 430
    :cond_89
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 431
    return-void

    .line 389
    :sswitch_data_8c
    .sparse-switch
        0x1 -> :sswitch_59
        0x2 -> :sswitch_59
        0x3 -> :sswitch_68
        0x4 -> :sswitch_59
        0xc -> :sswitch_68
    .end sparse-switch

    .line 412
    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_78
        :pswitch_86
        :pswitch_86
    .end packed-switch
.end method

.method public static getMaxVolume()F
    .registers 1

    .prologue
    .line 523
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .registers 7
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v1, -0x2

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_56

    .line 695
    and-int/lit16 v2, p1, 0x4fc

    if-eq v2, p1, :cond_1e

    .line 697
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 722
    :cond_e
    :goto_e
    return v1

    .line 688
    :sswitch_f
    const/4 v0, 0x1

    .line 704
    :goto_10
    const/4 v2, 0x2

    if-eq p2, v2, :cond_23

    const/4 v2, 0x3

    if-eq p2, v2, :cond_23

    .line 706
    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_e

    .line 692
    :sswitch_1c
    const/4 v0, 0x2

    .line 693
    goto :goto_10

    .line 700
    :cond_1e
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    goto :goto_10

    .line 711
    :cond_23
    const/16 v2, 0xfa0

    if-lt p0, v2, :cond_2c

    const v2, 0xbb80

    if-le p0, v2, :cond_49

    .line 712
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_e

    .line 716
    :cond_49
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 717
    .local v1, "size":I
    if-gtz v1, :cond_e

    .line 718
    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 719
    const/4 v1, -0x1

    goto :goto_e

    .line 685
    :sswitch_data_56
    .sparse-switch
        0x2 -> :sswitch_f
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_f
        0xc -> :sswitch_1c
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .registers 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .registers 2
    .param p0, "streamType"    # I

    .prologue
    .line 661
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .registers 6
    .param p0, "channelConfig"    # I

    .prologue
    const/4 v2, 0x0

    .line 440
    and-int/lit16 v3, p0, 0x4fc

    if-eq v3, p0, :cond_b

    .line 441
    const-string v3, "Channel configuration features unsupported channels"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 461
    :goto_a
    return v2

    .line 447
    :cond_b
    const/16 v1, 0xc

    .line 449
    .local v1, "frontPair":I
    and-int/lit8 v3, p0, 0xc

    const/16 v4, 0xc

    if-eq v3, v4, :cond_19

    .line 450
    const-string v3, "Front channels must be present in multichannel configurations"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_a

    .line 453
    :cond_19
    const/16 v0, 0xc0

    .line 455
    .local v0, "backPair":I
    and-int/lit16 v3, p0, 0xc0

    if-eqz v3, :cond_2b

    .line 456
    and-int/lit16 v3, p0, 0xc0

    const/16 v4, 0xc0

    if-eq v3, v4, :cond_2b

    .line 457
    const-string v3, "Rear channels can\'t be used independently"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_a

    .line 461
    :cond_2b
    const/4 v2, 0x1

    goto :goto_a
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1382
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1386
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_native_frame_count()I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_pause()V
.end method

.method private final native native_release()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)V
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIIII[I)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIII)I
.end method

.method private final native native_write_short([SIII)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 9
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1300
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiotrack_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;

    .line 1301
    .local v3, "track":Landroid/media/AudioTrack;
    if-nez v3, :cond_b

    .line 1314
    :cond_a
    :goto_a
    return-void

    .line 1305
    :cond_b
    iget-object v0, v3, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 1306
    .local v0, "delegate":Landroid/media/AudioTrack$NativeEventHandlerDelegate;
    if-eqz v0, :cond_a

    .line 1307
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1308
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_a

    .line 1309
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1310
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method


# virtual methods
.method public attachAuxEffect(I)I
    .registers 3
    .param p1, "effectId"    # I

    .prologue
    .line 1175
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 1176
    const/4 v0, -0x3

    .line 1178
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    goto :goto_5
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 502
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 503
    return-void
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 1046
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1048
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 1051
    :cond_8
    return-void
.end method

.method public getAudioFormat()I
    .registers 2

    .prologue
    .line 545
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 732
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getChannelConfiguration()I
    .registers 2

    .prologue
    .line 565
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .registers 2

    .prologue
    .line 572
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getLatency()I
    .registers 2

    .prologue
    .line 654
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method protected getNativeFrameCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 613
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .registers 2

    .prologue
    .line 622
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .registers 3

    .prologue
    .line 594
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_3
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v1

    return v0

    .line 596
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getPlaybackHeadPosition()I
    .registers 2

    .prologue
    .line 642
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackRate()I
    .registers 2

    .prologue
    .line 537
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .registers 2

    .prologue
    .line 630
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 530
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 584
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .registers 2

    .prologue
    .line 556
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .registers 8
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 759
    if-nez p1, :cond_a

    .line 760
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 763
    :cond_a
    const/4 v4, 0x2

    new-array v0, v4, [J

    .line 764
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 765
    .local v1, "ret":I
    if-eqz v1, :cond_14

    .line 770
    :goto_13
    return v2

    .line 768
    :cond_14
    aget-wide v4, v0, v2

    iput-wide v4, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 769
    aget-wide v4, v0, v3

    iput-wide v4, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    move v2, v3

    .line 770
    goto :goto_13
.end method

.method public pause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1023
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 1024
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_e
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1030
    :try_start_11
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 1031
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1032
    monitor-exit v1

    .line 1033
    return-void

    .line 1032
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public play()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 983
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 984
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_e
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_11
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 989
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 990
    monitor-exit v1

    .line 991
    return-void

    .line 990
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 492
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_a

    .line 496
    :goto_3
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 497
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 498
    return-void

    .line 493
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public reloadStaticData()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1147
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_b

    .line 1148
    :cond_9
    const/4 v0, -0x3

    .line 1150
    :goto_a
    return v0

    :cond_b
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    goto :goto_a
.end method

.method public setAuxEffectSendLevel(F)I
    .registers 3
    .param p1, "level"    # F

    .prologue
    .line 1198
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 1199
    const/4 v0, -0x3

    .line 1209
    :goto_5
    return v0

    .line 1202
    :cond_6
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_12

    .line 1203
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 1205
    :cond_12
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    .line 1206
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 1208
    :cond_1e
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)V

    .line 1209
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setLoopPoints(III)I
    .registers 6
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 946
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 948
    :cond_10
    const/4 v0, -0x3

    .line 956
    :goto_11
    return v0

    .line 950
    :cond_12
    if-nez p3, :cond_19

    .line 956
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    goto :goto_11

    .line 952
    :cond_19
    if-ltz p1, :cond_25

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_25

    if-ge p1, p2, :cond_25

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_14

    .line 954
    :cond_25
    const/4 v0, -0x2

    goto :goto_11
.end method

.method public setNotificationMarkerPosition(I)I
    .registers 3
    .param p1, "markerInFrames"    # I

    .prologue
    .line 885
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 886
    const/4 v0, -0x3

    .line 888
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_5
.end method

.method public setPlaybackHeadPosition(I)I
    .registers 4
    .param p1, "positionInFrames"    # I

    .prologue
    const/4 v1, 0x1

    .line 916
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 918
    :cond_10
    const/4 v0, -0x3

    .line 923
    :goto_11
    return v0

    .line 920
    :cond_12
    if-ltz p1, :cond_18

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_1a

    .line 921
    :cond_18
    const/4 v0, -0x2

    goto :goto_11

    .line 923
    :cond_1a
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    goto :goto_11
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 786
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 798
    if-eqz p1, :cond_a

    .line 799
    new-instance v0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 803
    :goto_9
    return-void

    .line 801
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    goto :goto_9
.end method

.method public setPlaybackRate(I)I
    .registers 4
    .param p1, "sampleRateInHz"    # I

    .prologue
    .line 865
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 866
    const/4 v0, -0x3

    .line 871
    :goto_6
    return v0

    .line 868
    :cond_7
    if-gtz p1, :cond_b

    .line 869
    const/4 v0, -0x2

    goto :goto_6

    .line 871
    :cond_b
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    goto :goto_6
.end method

.method public setPositionNotificationPeriod(I)I
    .registers 3
    .param p1, "periodInFrames"    # I

    .prologue
    .line 898
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 899
    const/4 v0, -0x3

    .line 901
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_5
.end method

.method protected setState(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 968
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 969
    return-void
.end method

.method public setStereoVolume(FF)I
    .registers 4
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 817
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 818
    const/4 v0, -0x3

    .line 837
    :goto_5
    return v0

    .line 822
    :cond_6
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_12

    .line 823
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 825
    :cond_12
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    .line 826
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 828
    :cond_1e
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2a

    .line 829
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p2

    .line 831
    :cond_2a
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_36

    .line 832
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p2

    .line 835
    :cond_36
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 837
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setVolume(F)I
    .registers 3
    .param p1, "volume"    # F

    .prologue
    .line 846
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1003
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_e

    .line 1004
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_e
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1009
    :try_start_11
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 1010
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1011
    monitor-exit v1

    .line 1012
    return-void

    .line 1011
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public write([BII)I
    .registers 7
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 1073
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v1, :cond_6

    .line 1074
    const/4 v0, -0x3

    .line 1092
    :cond_5
    :goto_5
    return v0

    .line 1077
    :cond_6
    if-eqz p1, :cond_15

    if-ltz p2, :cond_15

    if-ltz p3, :cond_15

    add-int v1, p2, p3

    if-ltz v1, :cond_15

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_17

    .line 1080
    :cond_15
    const/4 v0, -0x2

    goto :goto_5

    .line 1083
    :cond_17
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioTrack;->native_write_byte([BIII)I

    move-result v0

    .line 1085
    .local v0, "ret":I
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_5

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    if-lez v0, :cond_5

    .line 1089
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_5
.end method

.method public write([SII)I
    .registers 7
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    .line 1116
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v1, :cond_6

    .line 1117
    const/4 v0, -0x3

    .line 1135
    :cond_5
    :goto_5
    return v0

    .line 1120
    :cond_6
    if-eqz p1, :cond_15

    if-ltz p2, :cond_15

    if-ltz p3, :cond_15

    add-int v1, p2, p3

    if-ltz v1, :cond_15

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_17

    .line 1123
    :cond_15
    const/4 v0, -0x2

    goto :goto_5

    .line 1126
    :cond_17
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioTrack;->native_write_short([SIII)I

    move-result v0

    .line 1128
    .local v0, "ret":I
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_5

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    if-lez v0, :cond_5

    .line 1132
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_5
.end method
