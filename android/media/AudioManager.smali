.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$FocusEventHandlerDelegate;,
        Landroid/media/AudioManager$OnAudioFocusChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final ADJUST_LOWER:I = -0x1

.field public static final ADJUST_RAISE:I = 0x1

.field public static final ADJUST_SAME:I = 0x0

.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_LOSS:I = -0x1

.field public static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final AUDIOFOCUS_NONE:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field public static final DEFAULT_STREAM_VOLUME:[I

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final EXTRA_MASTER_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_MUTED"

.field public static final EXTRA_MASTER_VOLUME_VALUE:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_VALUE"

.field public static final EXTRA_PREV_MASTER_VOLUME_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_BLUETOOTH_ABS_VOLUME:I = 0x40

.field public static final FLAG_FIXED_VOLUME:I = 0x20

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_VIBRATE:I = 0x10

.field public static final FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final FX_KEYPRESS_DELETE:I = 0x7

.field public static final FX_KEYPRESS_INVALID:I = 0x9

.field public static final FX_KEYPRESS_RETURN:I = 0x8

.field public static final FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final FX_KEYPRESS_STANDARD:I = 0x5

.field public static final FX_KEY_CLICK:I = 0x0

.field public static final MASTER_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_MUTE_CHANGED_ACTION"

.field public static final MASTER_VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_VOLUME_CHANGED_ACTION"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field public static final NUM_SOUND_EFFECTS:I = 0xa

.field public static final NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROPERTY_OUTPUT_FRAMES_PER_BUFFER:Ljava/lang/String; = "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

.field public static final PROPERTY_OUTPUT_SAMPLE_RATE:Ljava/lang/String; = "android.media.property.OUTPUT_SAMPLE_RATE"

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field private static final RINGER_MODE_MAX:I = 0x2

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field public static final VIBRATE_SETTING_OFF:I = 0x0

.field public static final VIBRATE_SETTING_ON:I = 0x1

.field public static final VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I = 0x0

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private final mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

.field private final mAudioFocusIdListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFocusListenerLock:Ljava/lang/Object;

.field private final mICallBack:Landroid/os/IBinder;

.field private final mToken:Landroid/os/Binder;

.field private final mUseMasterVolume:Z

.field private final mUseVolumeKeySounds:Z

.field private mVolumeKeyUpTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "AudioManager"

    sput-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    .line 229
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    return-void

    :array_e
    .array-data 4
        0x4
        0x7
        0x5
        0xb
        0x6
        0x5
        0x7
        0x7
        0xb
        0xb
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mToken:Landroid/os/Binder;

    .line 1906
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    .line 1912
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    .line 1921
    new-instance v0, Landroid/media/AudioManager$FocusEventHandlerDelegate;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$FocusEventHandlerDelegate;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    .line 1960
    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2512
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 430
    iput-object p1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    .line 431
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    .line 433
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseVolumeKeySounds:Z

    .line 435
    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioManager;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 3
    .param p0, "x0"    # Landroid/media/AudioManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioManager;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    return-object v0
.end method

.method private findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1915
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method private getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .registers 5
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 1970
    if-nez p1, :cond_c

    .line 1971
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1973
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static getService()Landroid/media/IAudioService;
    .registers 2

    .prologue
    .line 439
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_7

    .line 440
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 444
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 442
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 443
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 444
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    goto :goto_6
.end method

.method public static isValidRingerMode(I)Z
    .registers 2
    .param p0, "ringerMode"    # I

    .prologue
    .line 709
    if-ltz p0, :cond_5

    const/4 v0, 0x2

    if-le p0, v0, :cond_7

    .line 710
    :cond_5
    const/4 v0, 0x0

    .line 712
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private querySoundEffectsEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1793
    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .registers 8
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 2096
    const/4 v2, 0x0

    .line 2097
    .local v2, "status":I
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 2098
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2100
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_8
    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    move-result v2

    .line 2105
    :goto_12
    return v2

    .line 2102
    :catch_13
    move-exception v0

    .line 2103
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call abandonAudioFocus() on AudioService due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public abandonAudioFocusForCall()V
    .registers 6

    .prologue
    .line 2082
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2084
    .local v1, "service":Landroid/media/IAudioService;
    const/4 v2, 0x0

    :try_start_5
    const-string v3, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 2088
    :goto_a
    return-void

    .line 2085
    :catch_b
    move-exception v0

    .line 2086
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call abandonAudioFocusForCall() on AudioService due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public adjustLocalOrRemoteStreamVolume(II)V
    .registers 8
    .param p1, "streamType"    # I
    .param p2, "direction"    # I

    .prologue
    .line 1614
    const/4 v2, 0x3

    if-eq p1, v2, :cond_1b

    .line 1615
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustLocalOrRemoteStreamVolume() doesn\'t support stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_1b
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1619
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_1f
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->adjustLocalOrRemoteStreamVolume(IILjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_29

    .line 1624
    :goto_28
    return-void

    .line 1621
    :catch_29
    move-exception v0

    .line 1622
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustLocalOrRemoteStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method public adjustMasterVolume(II)V
    .registers 7
    .param p1, "steps"    # I
    .param p2, "flags"    # I

    .prologue
    .line 675
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 677
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 681
    :goto_d
    return-void

    .line 678
    :catch_e
    move-exception v0

    .line 679
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public adjustStreamVolume(III)V
    .registers 8
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 591
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 593
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_12

    .line 594
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, p3, v2}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V

    .line 602
    :goto_11
    return-void

    .line 596
    :cond_12
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 599
    :catch_1c
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public adjustSuggestedStreamVolume(III)V
    .registers 8
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I

    .prologue
    .line 652
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 654
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_12

    .line 655
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p3, v2}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V

    .line 663
    :goto_11
    return-void

    .line 657
    :cond_12
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 660
    :catch_1c
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustSuggestedStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public adjustVolume(II)V
    .registers 7
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 622
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 624
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_12

    .line 625
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V

    .line 632
    :goto_11
    return-void

    .line 627
    :cond_12
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->adjustVolume(IILjava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 629
    :catch_1c
    move-exception v0

    .line 630
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 2501
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2503
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2507
    :goto_7
    return-void

    .line 2504
    :catch_8
    move-exception v0

    .line 2505
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in avrcpSupportsAbsoluteVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 471
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 473
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 477
    :goto_7
    return-void

    .line 474
    :catch_8
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "dispatchMediaKeyEvent threw exception "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public forceVolumeControlStream(I)V
    .registers 6
    .param p1, "streamType"    # I

    .prologue
    .line 1019
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1021
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->forceVolumeControlStream(ILandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1025
    :goto_9
    return-void

    .line 1022
    :catch_a
    move-exception v0

    .line 1023
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in forceVolumeControlStream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getDevicesForStream(I)I
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 2626
    packed-switch p1, :pswitch_data_a

    .line 2636
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2634
    :pswitch_5
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    goto :goto_4

    .line 2626
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getLastAudibleMasterVolume()I
    .registers 5

    .prologue
    .line 875
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 877
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getLastAudibleMasterVolume()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 880
    :goto_8
    return v2

    .line 878
    :catch_9
    move-exception v0

    .line 879
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getLastAudibleMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 6
    .param p1, "streamType"    # I

    .prologue
    .line 764
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 766
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_d

    .line 767
    invoke-interface {v1}, Landroid/media/IAudioService;->getLastAudibleMasterVolume()I

    move-result v2

    .line 773
    :goto_c
    return v2

    .line 769
    :cond_d
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v2

    goto :goto_c

    .line 771
    :catch_12
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getLastAudibleStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getMasterMaxVolume()I
    .registers 5

    .prologue
    .line 844
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 846
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterMaxVolume()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 849
    :goto_8
    return v2

    .line 847
    :catch_9
    move-exception v0

    .line 848
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMasterMaxVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getMasterStreamType()I
    .registers 5

    .prologue
    .line 783
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 785
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterStreamType()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 788
    :goto_8
    return v2

    .line 786
    :catch_9
    move-exception v0

    .line 787
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMasterStreamType"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    const/4 v2, 0x2

    goto :goto_8
.end method

.method public getMasterVolume()I
    .registers 5

    .prologue
    .line 860
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 862
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterVolume()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 865
    :goto_8
    return v2

    .line 863
    :catch_9
    move-exception v0

    .line 864
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 865
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getMode()I
    .registers 5

    .prologue
    .line 1442
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1444
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1447
    :goto_8
    return v2

    .line 1445
    :catch_9
    move-exception v0

    .line 1446
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1447
    const/4 v2, -0x2

    goto :goto_8
.end method

.method public getOutputLatency(I)I
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 2728
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputLatency(I)I

    move-result v0

    return v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 1664
    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2708
    const-string v3, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2709
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v1

    .line 2710
    .local v1, "outputSampleRate":I
    if-lez v1, :cond_13

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2716
    .end local v1    # "outputSampleRate":I
    :cond_13
    :goto_13
    return-object v2

    .line 2711
    :cond_14
    const-string v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2712
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputFrameCount()I

    move-result v0

    .line 2713
    .local v0, "outputFramesPerBuffer":I
    if-lez v0, :cond_13

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13
.end method

.method public getRingerMode()I
    .registers 5

    .prologue
    .line 691
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 693
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 696
    :goto_8
    return v2

    .line 694
    :catch_9
    move-exception v0

    .line 695
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    const/4 v2, 0x2

    goto :goto_8
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .registers 3

    .prologue
    .line 2679
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 2681
    :goto_8
    return-object v1

    .line 2680
    :catch_9
    move-exception v0

    .line 2681
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getRouting(I)I
    .registers 3
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1551
    const/4 v0, -0x1

    return v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 6
    .param p1, "streamType"    # I

    .prologue
    .line 723
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 725
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_d

    .line 726
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterMaxVolume()I

    move-result v2

    .line 732
    :goto_c
    return v2

    .line 728
    :cond_d
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v2

    goto :goto_c

    .line 730
    :catch_12
    move-exception v0

    .line 731
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamMaxVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getStreamVolume(I)I
    .registers 6
    .param p1, "streamType"    # I

    .prologue
    .line 745
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 747
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_d

    .line 748
    invoke-interface {v1}, Landroid/media/IAudioService;->getMasterVolume()I

    move-result v2

    .line 754
    :goto_c
    return v2

    .line 750
    :cond_d
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    move-result v2

    goto :goto_c

    .line 752
    :catch_12
    move-exception v0

    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getVibrateSetting(I)I
    .registers 6
    .param p1, "vibrateType"    # I

    .prologue
    .line 1074
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1076
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1079
    :goto_8
    return v2

    .line 1077
    :catch_9
    move-exception v0

    .line 1078
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1079
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public handleKeyDown(Landroid/view/KeyEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .prologue
    const/16 v5, 0x18

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 509
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 510
    .local v1, "keyCode":I
    sparse-switch v1, :sswitch_data_38

    .line 544
    :cond_b
    :goto_b
    return-void

    .line 517
    :sswitch_c
    const/16 v0, 0x11

    .line 519
    .local v0, "flags":I
    iget-boolean v4, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v4, :cond_1a

    .line 520
    if-ne v1, v5, :cond_18

    :goto_14
    invoke-virtual {p0, v2, v0}, Landroid/media/AudioManager;->adjustMasterVolume(II)V

    goto :goto_b

    :cond_18
    move v2, v3

    goto :goto_14

    .line 526
    :cond_1a
    if-ne v1, v5, :cond_20

    :goto_1c
    invoke-virtual {p0, v2, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_b

    :cond_20
    move v2, v3

    goto :goto_1c

    .line 535
    .end local v0    # "flags":I
    :sswitch_22
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_b

    .line 536
    iget-boolean v3, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v3, :cond_b

    .line 537
    invoke-virtual {p0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v3

    if-nez v3, :cond_36

    :goto_32
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->setMasterMute(Z)V

    goto :goto_b

    :cond_36
    const/4 v2, 0x0

    goto :goto_32

    .line 510
    :sswitch_data_38
    .sparse-switch
        0x18 -> :sswitch_c
        0x19 -> :sswitch_c
        0xa4 -> :sswitch_22
    .end sparse-switch
.end method

.method public handleKeyUp(Landroid/view/KeyEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .prologue
    const/4 v3, 0x0

    .line 550
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 551
    .local v1, "keyCode":I
    packed-switch v1, :pswitch_data_22

    .line 572
    :goto_8
    return-void

    .line 558
    :pswitch_9
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseVolumeKeySounds:Z

    if-eqz v2, :cond_15

    .line 559
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_1c

    .line 560
    const/4 v2, 0x4

    invoke-virtual {p0, v3, v2}, Landroid/media/AudioManager;->adjustMasterVolume(II)V

    .line 569
    :cond_15
    :goto_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    goto :goto_8

    .line 562
    :cond_1c
    const/4 v0, 0x4

    .line 563
    .local v0, "flags":I
    invoke-virtual {p0, v3, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_15

    .line 551
    nop

    :pswitch_data_22
    .packed-switch 0x18
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public isAudioFocusExclusive()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1598
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1600
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_5
    invoke-interface {v1}, Landroid/media/IAudioService;->getCurrentAudioFocus()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_e

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    const/4 v2, 0x1

    .line 1603
    :cond_d
    :goto_d
    return v2

    .line 1601
    :catch_e
    move-exception v0

    .line 1602
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isAudioFocusExclusive()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public isBluetoothA2dpOn()Z
    .registers 3

    .prologue
    .line 1350
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 1352
    const/4 v0, 0x0

    .line 1354
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .registers 3

    .prologue
    .line 1225
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .registers 5

    .prologue
    .line 1326
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1328
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothScoOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1331
    :goto_8
    return v2

    .line 1329
    :catch_9
    move-exception v0

    .line 1330
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1331
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isLocalOrRemoteMusicActive()Z
    .registers 5

    .prologue
    .line 1582
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1584
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isLocalOrRemoteMusicActive()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1587
    :goto_8
    return v2

    .line 1585
    :catch_9
    move-exception v0

    .line 1586
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isLocalOrRemoteMusicActive()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1587
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isMasterMute()Z
    .registers 5

    .prologue
    .line 1002
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1004
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isMasterMute()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1007
    :goto_8
    return v2

    .line 1005
    :catch_9
    move-exception v0

    .line 1006
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isMasterMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isMicrophoneMute()Z
    .registers 2

    .prologue
    .line 1407
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isMusicActive()Z
    .registers 3

    .prologue
    .line 1560
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isMusicActiveRemotely()Z
    .registers 3

    .prologue
    .line 1570
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    return v0
.end method

.method public isSilentMode()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2524
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 2525
    .local v0, "ringerMode":I
    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_a

    .line 2528
    .local v1, "silentMode":Z
    :cond_9
    :goto_9
    return v1

    .line 2525
    .end local v1    # "silentMode":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public isSpeakerphoneOn()Z
    .registers 5

    .prologue
    .line 1134
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1136
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1139
    :goto_8
    return v2

    .line 1137
    :catch_9
    move-exception v0

    .line 1138
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1139
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isStreamMute(I)Z
    .registers 6
    .param p1, "streamType"    # I

    .prologue
    .line 964
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 966
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 969
    :goto_8
    return v2

    .line 967
    :catch_9
    move-exception v0

    .line 968
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 969
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public isWiredHeadsetOn()Z
    .registers 3

    .prologue
    .line 1378
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 1382
    const/4 v0, 0x0

    .line 1384
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public loadSoundEffects()V
    .registers 6

    .prologue
    .line 1802
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1804
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1808
    :goto_7
    return-void

    .line 1805
    :catch_8
    move-exception v0

    .line 1806
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in loadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public playSoundEffect(I)V
    .registers 7
    .param p1, "effectType"    # I

    .prologue
    .line 1741
    if-ltz p1, :cond_6

    const/16 v2, 0xa

    if-lt p1, v2, :cond_7

    .line 1755
    :cond_6
    :goto_6
    return-void

    .line 1745
    :cond_7
    invoke-direct {p0}, Landroid/media/AudioManager;->querySoundEffectsEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1749
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1751
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_11
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_6

    .line 1752
    :catch_15
    move-exception v0

    .line 1753
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public playSoundEffect(IF)V
    .registers 8
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 1777
    if-ltz p1, :cond_6

    const/16 v2, 0xa

    if-lt p1, v2, :cond_7

    .line 1787
    :cond_6
    :goto_6
    return-void

    .line 1781
    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1783
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_6

    .line 1784
    :catch_f
    move-exception v0

    .line 1785
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 487
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 488
    .local v0, "keyCode":I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_27

    const/16 v1, 0x18

    if-eq v0, v1, :cond_27

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_27

    iget-wide v1, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    const-wide/16 v3, 0x12c

    add-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_27

    .line 496
    iget-boolean v1, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v1, :cond_28

    .line 497
    invoke-virtual {p0, v5, v6}, Landroid/media/AudioManager;->adjustMasterVolume(II)V

    .line 503
    :cond_27
    :goto_27
    return-void

    .line 499
    :cond_28
    invoke-virtual {p0, v5, p2, v6}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_27
.end method

.method public registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .registers 5
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 1985
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1986
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1987
    monitor-exit v1

    .line 1991
    :goto_10
    return-void

    .line 1989
    :cond_11
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    monitor-exit v1

    goto :goto_10

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 2147
    if-nez p1, :cond_3

    .line 2151
    :goto_2
    return-void

    .line 2150
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_2
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 2119
    if-nez p1, :cond_4

    .line 2134
    :goto_3
    return-void

    .line 2122
    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2123
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2128
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2130
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2131
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2133
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_3
.end method

.method public registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 2179
    if-nez p1, :cond_3

    .line 2189
    :goto_2
    return-void

    .line 2182
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2185
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 2186
    :catch_b
    move-exception v0

    .line 2187
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in registerMediaButtonEventReceiverForCalls"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 2158
    if-nez p1, :cond_a

    .line 2159
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Cannot call registerMediaButtonIntent() with a null parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    :goto_9
    return-void

    .line 2162
    :cond_a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2165
    .local v1, "service":Landroid/media/IAudioService;
    if-nez p2, :cond_30

    :try_start_10
    iget-object v2, p0, Landroid/media/AudioManager;->mToken:Landroid/os/Binder;

    :goto_12
    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_9

    .line 2167
    :catch_16
    move-exception v0

    .line 2168
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerMediaButtonIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2165
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 8
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 2253
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v3

    if-nez v3, :cond_9

    .line 2267
    :cond_8
    :goto_8
    return-void

    .line 2256
    :cond_9
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 2258
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_d
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getIRemoteControlClient()Landroid/media/IRemoteControlClient;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Landroid/media/IAudioService;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    move-result v1

    .line 2263
    .local v1, "rcseId":I
    invoke-virtual {p1, v1}, Landroid/media/RemoteControlClient;->setRcseId(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_22} :catch_23

    goto :goto_8

    .line 2264
    .end local v1    # "rcseId":I
    :catch_23
    move-exception v0

    .line 2265
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead object in registerRemoteControlClient"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 3
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    const/4 v0, -0x1

    .line 2350
    invoke-virtual {p0, p1, v0, v0}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 2351
    return-void
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .registers 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 2364
    if-nez p1, :cond_3

    .line 2373
    :goto_2
    return-void

    .line 2367
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2369
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 2370
    :catch_b
    move-exception v0

    .line 2371
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public registerRemoteController(Landroid/media/RemoteController;)Z
    .registers 12
    .param p1, "rctlr"    # Landroid/media/RemoteController;

    .prologue
    const/4 v6, 0x0

    .line 2300
    if-nez p1, :cond_5

    move v4, v6

    .line 2315
    :goto_4
    return v4

    .line 2303
    :cond_5
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v5

    .line 2304
    .local v5, "service":Landroid/media/IAudioService;
    invoke-virtual {p1}, Landroid/media/RemoteController;->getUpdateListener()Landroid/media/RemoteController$OnClientUpdateListener;

    move-result-object v2

    .line 2305
    .local v2, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v7, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2307
    .local v3, "listenerComponent":Landroid/content/ComponentName;
    :try_start_18
    invoke-virtual {p1}, Landroid/media/RemoteController;->getArtworkSize()[I

    move-result-object v0

    .line 2308
    .local v0, "artworkDimensions":[I
    invoke-virtual {p1}, Landroid/media/RemoteController;->getRcDisplay()Landroid/media/RemoteController$RcDisplay;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v0, v8

    const/4 v9, 0x1

    aget v9, v0, v9

    invoke-interface {v5, v7, v8, v9, v3}, Landroid/media/IAudioService;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v4

    .line 2311
    .local v4, "reg":Z
    invoke-virtual {p1, v4}, Landroid/media/RemoteController;->setIsRegistered(Z)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2d} :catch_2e

    goto :goto_4

    .line 2313
    .end local v0    # "artworkDimensions":[I
    .end local v4    # "reg":Z
    :catch_2e
    move-exception v1

    .line 2314
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v7, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dead object in registerRemoteController "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 2315
    goto :goto_4
.end method

.method public reloadAudioSettings()V
    .registers 6

    .prologue
    .line 2486
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2488
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2492
    :goto_7
    return-void

    .line 2489
    :catch_8
    move-exception v0

    .line 2490
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in reloadAudioSettings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .registers 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 2402
    if-nez p1, :cond_3

    .line 2411
    :goto_2
    return-void

    .line 2405
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2407
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 2408
    :catch_b
    move-exception v0

    .line 2409
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in remoteControlDisplayUsesBitmapSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .registers 8
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 2428
    if-nez p1, :cond_3

    .line 2437
    :goto_2
    return-void

    .line 2431
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2433
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 2434
    :catch_b
    move-exception v0

    .line 2435
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in remoteControlDisplayWantsPlaybackPositionSync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .registers 14
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "streamType"    # I
    .param p3, "durationHint"    # I

    .prologue
    .line 2035
    const/4 v8, 0x0

    .line 2036
    .local v8, "status":I
    const/4 v1, 0x1

    if-lt p3, v1, :cond_7

    const/4 v1, 0x4

    if-le p3, v1, :cond_10

    .line 2038
    :cond_7
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Invalid duration hint, audio focus request denied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 2051
    .end local v8    # "status":I
    .local v9, "status":I
    :goto_f
    return v9

    .line 2041
    .end local v9    # "status":I
    .restart local v8    # "status":I
    :cond_10
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 2043
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2045
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_17
    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p2

    move v2, p3

    invoke-interface/range {v0 .. v6}, Landroid/media/IAudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2d

    move-result v8

    :goto_2b
    move v9, v8

    .line 2051
    .end local v8    # "status":I
    .restart local v9    # "status":I
    goto :goto_f

    .line 2048
    .end local v9    # "status":I
    .restart local v8    # "status":I
    :catch_2d
    move-exception v7

    .line 2049
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call requestAudioFocus() on AudioService due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public requestAudioFocusForCall(II)V
    .registers 11
    .param p1, "streamType"    # I
    .param p2, "durationHint"    # I

    .prologue
    .line 2065
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2067
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    const/4 v4, 0x0

    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v6}, Landroid/media/IAudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    .line 2073
    :goto_14
    return-void

    .line 2070
    :catch_15
    move-exception v7

    .line 2071
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call requestAudioFocusForCall() on AudioService due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 2665
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    .line 2666
    .local v3, "service":Landroid/media/IAudioService;
    const/4 v0, 0x0

    .line 2668
    .local v0, "delay":I
    :try_start_5
    invoke-interface {v3, p1, p2}, Landroid/media/IAudioService;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_b
    .catchall {:try_start_5 .. :try_end_8} :catchall_26

    move-result v0

    move v1, v0

    .line 2672
    .end local v0    # "delay":I
    .local v1, "delay":I
    :goto_a
    return v1

    .line 2669
    .end local v1    # "delay":I
    .restart local v0    # "delay":I
    :catch_b
    move-exception v2

    .line 2670
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_c
    sget-object v4, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in setBluetoothA2dpDeviceConnectionState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_26

    move v1, v0

    .line 2672
    .end local v0    # "delay":I
    .restart local v1    # "delay":I
    goto :goto_a

    .end local v1    # "delay":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "delay":I
    :catchall_26
    move-exception v4

    move v1, v0

    .end local v0    # "delay":I
    .restart local v1    # "delay":I
    goto :goto_a
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 2
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1341
    return-void
.end method

.method public setBluetoothScoOn(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 1311
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1313
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1317
    :goto_7
    return-void

    .line 1314
    :catch_8
    move-exception v0

    .line 1315
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setMasterMute(Z)V
    .registers 3
    .param p1, "state"    # Z

    .prologue
    .line 979
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->setMasterMute(ZI)V

    .line 980
    return-void
.end method

.method public setMasterMute(ZI)V
    .registers 7
    .param p1, "state"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 988
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 990
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setMasterMute(ZILandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 994
    :goto_9
    return-void

    .line 991
    :catch_a
    move-exception v0

    .line 992
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMasterMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setMasterVolume(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "flags"    # I

    .prologue
    .line 895
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 897
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setMasterVolume(IILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 901
    :goto_d
    return-void

    .line 898
    :catch_e
    move-exception v0

    .line 899
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMasterVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setMicrophoneMute(Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    .line 1398
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1399
    return-void
.end method

.method public setMode(I)V
    .registers 6
    .param p1, "mode"    # I

    .prologue
    .line 1426
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1428
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1432
    :goto_9
    return-void

    .line 1429
    :catch_a
    move-exception v0

    .line 1430
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1643
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 1653
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1654
    return-void
.end method

.method public setRemoteControlClientPlaybackPosition(IJ)V
    .registers 9
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .prologue
    .line 2447
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_7

    .line 2457
    :goto_6
    return-void

    .line 2450
    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2452
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setRemoteControlClientPlaybackPosition(IJ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_6

    .line 2453
    :catch_f
    move-exception v0

    .line 2454
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in setRccPlaybackPosition("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public setRingerMode(I)V
    .registers 6
    .param p1, "ringerMode"    # I

    .prologue
    .line 804
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 813
    :goto_6
    return-void

    .line 807
    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 809
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setRingerMode(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_6

    .line 810
    :catch_f
    move-exception v0

    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public setRouting(III)V
    .registers 4
    .param p1, "mode"    # I
    .param p2, "routes"    # I
    .param p3, "mask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1538
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 1120
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1122
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setSpeakerphoneOn(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1126
    :goto_7
    return-void

    .line 1123
    :catch_8
    move-exception v0

    .line 1124
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setStreamMute(IZ)V
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "state"    # Z

    .prologue
    .line 950
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 952
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamMute(IZLandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 956
    :goto_9
    return-void

    .line 953
    :catch_a
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setStreamSolo(IZ)V
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "state"    # Z

    .prologue
    .line 921
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 923
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamSolo(IZLandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 927
    :goto_9
    return-void

    .line 924
    :catch_a
    move-exception v0

    .line 925
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamSolo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setStreamVolume(III)V
    .registers 8
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 826
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 828
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-boolean v2, p0, Landroid/media/AudioManager;->mUseMasterVolume:Z

    if-eqz v2, :cond_12

    .line 829
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, p3, v2}, Landroid/media/IAudioService;->setMasterVolume(IILjava/lang/String;)V

    .line 836
    :goto_11
    return-void

    .line 831
    :cond_12
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 833
    :catch_1c
    move-exception v0

    .line 834
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setVibrateSetting(II)V
    .registers 7
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 1102
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1104
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1108
    :goto_7
    return-void

    .line 1105
    :catch_8
    move-exception v0

    .line 1106
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .registers 9
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 2648
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2650
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2654
    :goto_7
    return-void

    .line 2651
    :catch_8
    move-exception v0

    .line 2652
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in setWiredDeviceConnectionState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setWiredHeadsetOn(Z)V
    .registers 2
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1366
    return-void
.end method

.method public shouldVibrate(I)Z
    .registers 6
    .param p1, "vibrateType"    # I

    .prologue
    .line 1047
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1049
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 1052
    :goto_8
    return v2

    .line 1050
    :catch_9
    move-exception v0

    .line 1051
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in shouldVibrate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public startBluetoothSco()V
    .registers 5

    .prologue
    .line 1275
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1277
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 1281
    :goto_11
    return-void

    .line 1278
    :catch_12
    move-exception v0

    .line 1279
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in startBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public stopBluetoothSco()V
    .registers 5

    .prologue
    .line 1293
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1295
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1299
    :goto_9
    return-void

    .line 1296
    :catch_a
    move-exception v0

    .line 1297
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in stopBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public unloadSoundEffects()V
    .registers 6

    .prologue
    .line 1816
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1818
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1822
    :goto_7
    return-void

    .line 1819
    :catch_8
    move-exception v0

    .line 1820
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unloadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .registers 5
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 2001
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2002
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    monitor-exit v1

    .line 2004
    return-void

    .line 2003
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 2227
    if-nez p1, :cond_3

    .line 2231
    :goto_2
    return-void

    .line 2230
    :cond_3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto :goto_2
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 2209
    if-nez p1, :cond_4

    .line 2219
    :goto_3
    return-void

    .line 2213
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2215
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2216
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2218
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto :goto_3
.end method

.method public unregisterMediaButtonEventReceiverForCalls()V
    .registers 5

    .prologue
    .line 2195
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2197
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->unregisterMediaButtonEventReceiverForCalls()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2201
    :goto_7
    return-void

    .line 2198
    :catch_8
    move-exception v0

    .line 2199
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in unregisterMediaButtonEventReceiverForCalls"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 2237
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2239
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2243
    :goto_7
    return-void

    .line 2240
    :catch_8
    move-exception v0

    .line 2241
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterMediaButtonIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 7
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 2276
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_9

    .line 2286
    :cond_8
    :goto_8
    return-void

    .line 2279
    :cond_9
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2281
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_d
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getIRemoteControlClient()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_8

    .line 2283
    :catch_19
    move-exception v0

    .line 2284
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlClient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 7
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 2381
    if-nez p1, :cond_3

    .line 2390
    :goto_2
    return-void

    .line 2384
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2386
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    .line 2387
    :catch_b
    move-exception v0

    .line 2388
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public unregisterRemoteController(Landroid/media/RemoteController;)V
    .registers 7
    .param p1, "rctlr"    # Landroid/media/RemoteController;

    .prologue
    .line 2325
    if-nez p1, :cond_3

    .line 2335
    :goto_2
    return-void

    .line 2328
    :cond_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2330
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_7
    invoke-virtual {p1}, Landroid/media/RemoteController;->getRcDisplay()Landroid/media/RemoteController$RcDisplay;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 2331
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/media/RemoteController;->setIsRegistered(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_2

    .line 2332
    :catch_13
    move-exception v0

    .line 2333
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateRemoteControlClientMetadata(IILandroid/media/Rating;)V
    .registers 9
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Landroid/media/Rating;

    .prologue
    .line 2470
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2472
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->updateRemoteControlClientMetadata(IILandroid/media/Rating;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2477
    :goto_7
    return-void

    .line 2473
    :catch_8
    move-exception v0

    .line 2474
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in updateRemoteControlClientMetadata("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method
