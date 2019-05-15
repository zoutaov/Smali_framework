.class public Landroid/media/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFocusControl$DisplayInfoForServer;,
        Landroid/media/MediaFocusControl$RemoteControlStackEntry;,
        Landroid/media/MediaFocusControl$RccPlaybackState;,
        Landroid/media/MediaFocusControl$RemotePlaybackState;,
        Landroid/media/MediaFocusControl$RcClientDeathHandler;,
        Landroid/media/MediaFocusControl$PackageIntentsReceiver;,
        Landroid/media/MediaFocusControl$AudioFocusDeathHandler;,
        Landroid/media/MediaFocusControl$MediaEventHandler;,
        Landroid/media/MediaFocusControl$NotificationListenerObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field protected static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MSG_PERSIST_MEDIABUTTONRECEIVER:I = 0x0

.field private static final MSG_PROMOTE_RCC:I = 0x6

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x4

.field private static final MSG_RCC_NEW_PLAYBACK_STATE:I = 0x7

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x5

.field private static final MSG_RCC_SEEK_REQUEST:I = 0x8

.field private static final MSG_RCC_UPDATE_METADATA:I = 0x9

.field private static final MSG_RCDISPLAY_CLEAR:I = 0x1

.field private static final MSG_RCDISPLAY_INIT_INFO:I = 0xa

.field private static final MSG_RCDISPLAY_UPDATE:I = 0x2

.field private static final MSG_REEVALUATE_RCD:I = 0xb

.field private static final MSG_REEVALUATE_REMOTE:I = 0x3

.field private static final RCD_REG_FAILURE:I = 0x0

.field private static final RCD_REG_SUCCESS_ENABLED_NOTIF:I = 0x2

.field private static final RCD_REG_SUCCESS_PERMISSION:I = 0x1

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;

.field private static sLastRccId:I


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioService:Landroid/media/AudioService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private mCurrentRcClientIntent:Landroid/app/PendingIntent;

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private final mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRemotePlayback:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private final mNotifListenerObserver:Landroid/media/MediaFocusControl$NotificationListenerObserver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/MediaFocusControl$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaFocusControl$DisplayInfoForServer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private final mVolumeController:Landroid/media/VolumeController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 136
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 433
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 435
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    .line 1106
    const/4 v0, 0x0

    sput v0, Landroid/media/MediaFocusControl;->sLastRccId:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/VolumeController;Landroid/media/AudioService;)V
    .registers 15
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "volumeCtrl"    # Landroid/media/VolumeController;
    .param p4, "as"    # Landroid/media/AudioService;

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v9, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    .line 81
    new-instance v0, Landroid/media/MediaFocusControl$PackageIntentsReceiver;

    invoke-direct {v0, p0, v5}, Landroid/media/MediaFocusControl$PackageIntentsReceiver;-><init>(Landroid/media/MediaFocusControl;Landroid/media/MediaFocusControl$1;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v0, Landroid/media/MediaFocusControl$1;

    invoke-direct {v0, p0}, Landroid/media/MediaFocusControl$1;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 496
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 843
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    .line 1031
    new-instance v0, Landroid/media/MediaFocusControl$2;

    invoke-direct {v0, p0}, Landroid/media/MediaFocusControl$2;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 1049
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    .line 1055
    iput-object v5, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1060
    iput-object v5, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1074
    iput v9, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1312
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    .line 1318
    iput-object v5, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 2094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/media/MediaFocusControl$MediaEventHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaFocusControl$MediaEventHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    .line 90
    iput-object p2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    .line 92
    iput-object p3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    .line 93
    iput-object p4, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    .line 95
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 96
    .local v7, "pm":Landroid/os/PowerManager;
    const-string v0, "handleMediaEvent"

    invoke-virtual {v7, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    new-instance v0, Landroid/media/MediaFocusControl$RemotePlaybackState;

    const/4 v2, -0x1

    invoke-static {v4}, Landroid/media/AudioService;->getMaxStreamVolume(I)I

    move-result v3

    invoke-static {v4}, Landroid/media/AudioService;->getMaxStreamVolume(I)I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaFocusControl$RemotePlaybackState;-><init>(Landroid/media/MediaFocusControl;IIILandroid/media/MediaFocusControl$1;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    .line 102
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 104
    .local v8, "tmgr":Landroid/telephony/TelephonyManager;
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v8, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 108
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v6, "pkgFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 117
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 119
    new-instance v0, Landroid/media/MediaFocusControl$NotificationListenerObserver;

    invoke-direct {v0, p0}, Landroid/media/MediaFocusControl$NotificationListenerObserver;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mNotifListenerObserver:Landroid/media/MediaFocusControl$NotificationListenerObserver;

    .line 121
    iput-boolean v9, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    .line 122
    iput-boolean v9, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 123
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    .line 124
    return-void
.end method

.method static synthetic access$1100(Landroid/media/MediaFocusControl;Landroid/content/ComponentName;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->onHandlePersistMediaButtonReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onRcDisplayClear()V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/MediaFocusControl;Landroid/media/MediaFocusControl$RemoteControlStackEntry;I)V
    .registers 3
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .param p2, "x2"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->onRcDisplayUpdate(Landroid/media/MediaFocusControl$RemoteControlStackEntry;I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onReevaluateRemote()V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/MediaFocusControl;III)V
    .registers 4
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onNewPlaybackInfoForRcc(III)V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V
    .registers 3
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/MediaFocusControl;IILandroid/media/MediaFocusControl$RccPlaybackState;)V
    .registers 4
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/media/MediaFocusControl$RccPlaybackState;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onNewPlaybackStateForRcc(IILandroid/media/MediaFocusControl$RccPlaybackState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/MediaFocusControl;IJ)V
    .registers 4
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onSetRemoteControlClientPlaybackPosition(IJ)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/MediaFocusControl;IILandroid/media/Rating;)V
    .registers 4
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/media/Rating;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onUpdateRemoteControlClientMetadata(IILandroid/media/Rating;)V

    return-void
.end method

.method static synthetic access$200(Landroid/media/MediaFocusControl;)Landroid/media/MediaFocusControl$MediaEventHandler;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaFocusControl;I)V
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->onPromoteRcc(I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .registers 4
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$2300()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/media/MediaFocusControl;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$2500()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/media/MediaFocusControl;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->cleanupMediaButtonReceiverForPackage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2800(Landroid/media/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    return-void
.end method

.method static synthetic access$300(Landroid/media/MediaFocusControl;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3004()I
    .registers 1

    .prologue
    .line 64
    sget v0, Landroid/media/MediaFocusControl;->sLastRccId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/media/MediaFocusControl;->sLastRccId:I

    return v0
.end method

.method static synthetic access$3300(Landroid/media/MediaFocusControl;)Ljava/util/Stack;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/MediaFocusControl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Landroid/media/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemoteControlDisplays()V

    return-void
.end method

.method private canReassignAudioFocus()Z
    .registers 3

    .prologue
    .line 591
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, v1}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 592
    const/4 v0, 0x0

    .line 594
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I
    .registers 11
    .param p1, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 173
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_c

    .line 176
    const/4 v7, 0x1

    .line 210
    :goto_b
    return v7

    .line 180
    :cond_c
    if-eqz p1, :cond_47

    .line 182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 184
    .local v5, "ident":J
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 185
    .local v2, "currentUser":I
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_notification_listeners"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v3, :cond_44

    .line 190
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "components":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    array-length v7, v1

    if-ge v4, v7, :cond_44

    .line 192
    aget-object v7, v1, v4

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 194
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_41

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_49

    move-result v7

    if-eqz v7, :cond_41

    .line 198
    const/4 v7, 0x2

    .line 206
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b

    .line 191
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 206
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_44
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    .end local v2    # "currentUser":I
    .end local v3    # "enabledNotifListeners":Ljava/lang/String;
    .end local v5    # "ident":J
    :cond_47
    const/4 v7, 0x0

    goto :goto_b

    .line 206
    .restart local v5    # "ident":J
    :catchall_49
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    .registers 9
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1760
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1761
    :cond_10
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    .line 1807
    :goto_13
    return-void

    .line 1773
    :cond_14
    const/4 v0, 0x0

    .line 1775
    .local v0, "af":Landroid/media/FocusRequester;
    :try_start_15
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "index":I
    :goto_1d
    if-ltz v3, :cond_36

    .line 1776
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/FocusRequester;

    .line 1777
    .local v2, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v2}, Landroid/media/FocusRequester;->getStreamType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_35

    invoke-virtual {v2}, Landroid/media/FocusRequester;->getGainRequest()I
    :try_end_31
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_15 .. :try_end_31} :catch_3f

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3c

    .line 1779
    :cond_35
    move-object v0, v2

    .line 1787
    .end local v2    # "fr":Landroid/media/FocusRequester;
    .end local v3    # "index":I
    :cond_36
    :goto_36
    if-nez v0, :cond_5a

    .line 1788
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_13

    .line 1775
    .restart local v2    # "fr":Landroid/media/FocusRequester;
    .restart local v3    # "index":I
    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 1783
    .end local v2    # "fr":Landroid/media/FocusRequester;
    .end local v3    # "index":I
    :catch_3f
    move-exception v1

    .line 1784
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "MediaFocusControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong index accessing audio focus stack when updating RCD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    const/4 v0, 0x0

    goto :goto_36

    .line 1793
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5a
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v4, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/media/FocusRequester;->hasSamePackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 1794
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_13

    .line 1799
    :cond_6e
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v4, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v0, v4}, Landroid/media/FocusRequester;->hasSameUid(I)Z

    move-result v4

    if-nez v4, :cond_82

    .line 1800
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_13

    .line 1806
    :cond_82
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->updateRemoteControlDisplay_syncAfRcs(I)V

    goto :goto_13
.end method

.method private cleanupMediaButtonReceiverForPackage(Ljava/lang/String;Z)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "removeAll"    # Z

    .prologue
    .line 1403
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v6

    .line 1404
    :try_start_3
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1405
    monitor-exit v6

    .line 1448
    :goto_c
    return-void

    .line 1407
    :cond_d
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1408
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1409
    .local v1, "oldTop":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1413
    .local v4, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1414
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1415
    .local v3, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    if-eqz p2, :cond_45

    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1417
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1418
    invoke-virtual {v3}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->destroy()V

    goto :goto_21

    .line 1447
    .end local v1    # "oldTop":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v4    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_42
    move-exception v5

    monitor-exit v6
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v5

    .line 1419
    .restart local v1    # "oldTop":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .restart local v4    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_45
    :try_start_45
    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_42

    if-eqz v5, :cond_21

    .line 1422
    :try_start_49
    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_4f} :catch_50
    .catchall {:try_start_49 .. :try_end_4f} :catchall_42

    goto :goto_21

    .line 1423
    :catch_50
    move-exception v0

    .line 1425
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_51
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1426
    invoke-virtual {v3}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->destroy()V

    goto :goto_21

    .line 1430
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_58
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 1432
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1447
    :cond_6f
    :goto_6f
    monitor-exit v6

    goto :goto_c

    .line 1435
    :cond_71
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    if-eq v1, v5, :cond_6f

    .line 1439
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1440
    .restart local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_6f

    .line 1441
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_95
    .catchall {:try_start_51 .. :try_end_95} :catchall_42

    goto :goto_6f
.end method

.method private clearRemoteControlDisplay_syncAfRcs()V
    .registers 4

    .prologue
    .line 1711
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1712
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1713
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_14

    .line 1715
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1716
    return-void

    .line 1713
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 19
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 802
    if-eqz p2, :cond_9

    .line 803
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 805
    :cond_9
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v4, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 806
    .local v4, "keyIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 807
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v15

    .line 808
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_6d

    move-result v1

    if-nez v1, :cond_70

    .line 811
    :try_start_27
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v1, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_46

    const/16 v3, 0x7bc

    :goto_3b
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_44
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_27 .. :try_end_44} :catch_48
    .catchall {:try_start_27 .. :try_end_44} :catchall_6d

    .line 833
    :goto_44
    :try_start_44
    monitor-exit v15

    .line 834
    return-void

    .line 811
    :cond_46
    const/4 v3, 0x0

    goto :goto_3b

    .line 814
    :catch_48
    move-exception v12

    .line 815
    .local v12, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending pending intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {v12}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_44

    .line 833
    .end local v12    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_6d
    move-exception v1

    monitor-exit v15
    :try_end_6f
    .catchall {:try_start_44 .. :try_end_6f} :catchall_6d

    throw v1

    .line 821
    :cond_70
    if-eqz p2, :cond_79

    .line 822
    :try_start_72
    const-string v1, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    :cond_79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_6d

    move-result-wide v13

    .line 826
    .local v13, "ident":J
    :try_start_7d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_92
    .catchall {:try_start_7d .. :try_end_92} :catchall_96

    .line 830
    :try_start_92
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_44

    :catchall_96
    move-exception v1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_6d
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .registers 14
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x0

    .line 778
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 779
    .local v1, "keyIntent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 780
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    if-eqz p2, :cond_24

    .line 782
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 783
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 785
    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 787
    .local v9, "ident":J
    :try_start_28
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_3b

    .line 790
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 792
    return-void

    .line 790
    :catchall_3b
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 503
    const-string v1, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 505
    :try_start_8
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 506
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 507
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1, p1}, Landroid/media/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_e

    .line 509
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    .line 510
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1347
    const-string v2, "\nRemote Control Client stack entries (last is top of stack):"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1348
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1349
    :try_start_8
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1350
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1351
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1352
    .local v0, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volMax: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volObs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 1364
    .end local v0    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_87
    move-exception v2

    monitor-exit v3
    :try_end_89
    .catchall {:try_start_8 .. :try_end_89} :catchall_87

    throw v2

    .line 1361
    .restart local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_8a
    :try_start_8a
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_87

    .line 1362
    :try_start_8d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nCurrent remote control generation ID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    monitor-exit v4
    :try_end_a6
    .catchall {:try_start_8d .. :try_end_a6} :catchall_14d

    .line 1364
    :try_start_a6
    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_87

    .line 1365
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v3

    .line 1366
    :try_start_aa
    const-string v2, "\nRemote Volume State:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  has remote: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  is remote active: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  rccId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v4, v4, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v2, v2, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_150

    const-string v2, "PLAYBACK_VOLUME_FIXED(0)"

    :goto_10c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v4, v4, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume steps: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v4, v4, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    monitor-exit v3
    :try_end_14c
    .catchall {:try_start_aa .. :try_end_14c} :catchall_153

    .line 1376
    return-void

    .line 1363
    :catchall_14d
    move-exception v2

    :try_start_14e
    monitor-exit v4
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_14d

    :try_start_14f
    throw v2
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_87

    .line 1370
    :cond_150
    :try_start_150
    const-string v2, "PLAYBACK_VOLUME_VARIABLE(1)"

    goto :goto_10c

    .line 1375
    :catchall_153
    move-exception v2

    monitor-exit v3
    :try_end_155
    .catchall {:try_start_150 .. :try_end_155} :catchall_153

    throw v2
.end method

.method private dumpRCDList(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1383
    const-string v2, "\nRemote Control Display list entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1384
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1385
    :try_start_8
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1386
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1387
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1388
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  IRCD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- w:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- h:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- wantsPosSync:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$3200(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string v2, "enabled"

    :goto_65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 1394
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_71
    move-exception v2

    monitor-exit v3
    :try_end_73
    .catchall {:try_start_8 .. :try_end_73} :catchall_71

    throw v2

    .line 1388
    .restart local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_74
    :try_start_74
    const-string v2, "disabled"

    goto :goto_65

    .line 1394
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_77
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_71

    .line 1395
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1325
    const-string v2, "\nRemote Control stack entries (last is top of stack):"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1327
    :try_start_8
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1328
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1329
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1330
    .local v0, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  pi: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- pack: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- ercvr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 1338
    .end local v0    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_7b
    move-exception v2

    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_8 .. :try_end_7d} :catchall_7b

    throw v2

    .restart local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_7e
    :try_start_7e
    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7b

    .line 1339
    return-void
.end method

.method private enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V
    .registers 8
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enabled"    # Z

    .prologue
    .line 2120
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2121
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2123
    .local v1, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_6

    .line 2125
    :try_start_16
    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1, p2}, Landroid/media/IRemoteControlClient;->enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_6

    .line 2126
    :catch_1c
    move-exception v0

    .line 2127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to client: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 2131
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_25
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 748
    invoke-static {p1}, Landroid/media/MediaFocusControl;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 749
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :goto_1f
    return-void

    .line 753
    :cond_20
    sget-object v1, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 754
    :try_start_23
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3d

    .line 755
    :try_start_26
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_40

    .line 757
    :cond_37
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V

    .line 758
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_50

    :try_start_3b
    monitor-exit v1

    goto :goto_1f

    .line 761
    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3d

    throw v0

    .line 760
    :cond_40
    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_50

    .line 761
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3d

    .line 763
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFocusControl;->isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 764
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1f

    .line 760
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_3d

    .line 766
    :cond_53
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1f
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x1

    .line 859
    const/4 v1, 0x1

    .line 860
    .local v1, "voiceButtonAction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 861
    .local v0, "keyAction":I
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 862
    if-nez v0, :cond_31

    .line 863
    :try_start_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1c

    .line 865
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    .line 866
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 882
    :cond_17
    :goto_17
    monitor-exit v3

    .line 885
    packed-switch v1, :pswitch_data_52

    .line 899
    :goto_1b
    :pswitch_1b
    return-void

    .line 867
    :cond_1c
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_17

    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_17

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_17

    .line 870
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 871
    const/4 v1, 0x2

    goto :goto_17

    .line 873
    :cond_31
    if-ne v0, v2, :cond_17

    .line 874
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_17

    .line 876
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    .line 877
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_17

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_17

    .line 878
    const/4 v1, 0x3

    goto :goto_17

    .line 882
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_46

    throw v2

    .line 892
    :pswitch_49
    invoke-direct {p0, p2}, Landroid/media/MediaFocusControl;->startVoiceBasedInteractions(Z)V

    goto :goto_1b

    .line 896
    :pswitch_4d
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1b

    .line 885
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_49
        :pswitch_4d
    .end packed-switch
.end method

.method private isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z
    .registers 7
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "enabledArray"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 301
    if-eqz p2, :cond_6

    array-length v3, p2

    if-nez v3, :cond_7

    .line 313
    :cond_6
    :goto_6
    return v2

    .line 305
    :cond_7
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "compString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v3, p2

    if-ge v1, v3, :cond_6

    .line 307
    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 309
    const/4 v2, 0x1

    goto :goto_6

    .line 306
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .registers 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1550
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1551
    const/4 v0, 0x1

    .line 1553
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected static isMediaKeyCode(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 935
    sparse-switch p0, :sswitch_data_8

    .line 952
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 950
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 935
    nop

    :sswitch_data_8
    .sparse-switch
        0x4f -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x80 -> :sswitch_5
        0x81 -> :sswitch_5
        0x82 -> :sswitch_5
        0xde -> :sswitch_5
    .end sparse-switch
.end method

.method private static isPlaystateActive(I)Z
    .registers 2
    .param p0, "playState"    # I

    .prologue
    .line 2571
    packed-switch p0, :pswitch_data_8

    .line 2580
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2578
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2571
    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 957
    if-nez p0, :cond_4

    .line 958
    const/4 v0, 0x0

    .line 960
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFocusControl;->isMediaKeyCode(I)Z

    move-result v0

    goto :goto_3
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 970
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_6

    .line 971
    const/4 v0, 0x1

    .line 973
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private notifyTopOfAudioFocusStack()V
    .registers 3

    .prologue
    .line 476
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 477
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 478
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/FocusRequester;->handleFocusGain(I)V

    .line 481
    :cond_1a
    return-void
.end method

.method private onHandlePersistMediaButtonReceiver(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "receiver"    # Landroid/content/ComponentName;

    .prologue
    .line 1557
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "media_button_receiver"

    if-nez p1, :cond_d

    const-string v0, ""

    :goto_8
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1561
    return-void

    .line 1557
    :cond_d
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private onNewPlaybackInfoForRcc(III)V
    .registers 11
    .param p1, "rccId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # I

    .prologue
    .line 2406
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2410
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_b
    if-ltz v1, :cond_4f

    .line 2411
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2412
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v3, p1, :cond_a2

    .line 2413
    packed-switch p2, :pswitch_data_a6

    .line 2449
    const-string v3, "MediaFocusControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unhandled key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for RCC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3f} :catch_47
    .catchall {:try_start_3 .. :try_end_3f} :catchall_51

    .line 2452
    :goto_3f
    :try_start_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_51

    .line 2460
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :goto_40
    return-void

    .line 2415
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :pswitch_41
    :try_start_41
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    .line 2416
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V
    :try_end_46
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_41 .. :try_end_46} :catch_47
    .catchall {:try_start_41 .. :try_end_46} :catchall_51

    goto :goto_3f

    .line 2455
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_47
    move-exception v0

    .line 2457
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_48
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index mRCStack on onNewPlaybackInfoForRcc, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2459
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4f
    monitor-exit v4

    goto :goto_40

    :catchall_51
    move-exception v3

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_51

    throw v3

    .line 2419
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :pswitch_54
    :try_start_54
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolume:I

    .line 2420
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5
    :try_end_59
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_54 .. :try_end_59} :catch_47
    .catchall {:try_start_54 .. :try_end_59} :catchall_51

    .line 2421
    :try_start_59
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    if-ne p1, v3, :cond_68

    .line 2422
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iput p3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    .line 2423
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v3}, Landroid/media/VolumeController;->postHasNewRemotePlaybackInfo()V

    .line 2425
    :cond_68
    monitor-exit v5

    goto :goto_3f

    :catchall_6a
    move-exception v3

    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_59 .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v3

    .line 2428
    :pswitch_6d
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    .line 2429
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5
    :try_end_72
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6c .. :try_end_72} :catch_47
    .catchall {:try_start_6c .. :try_end_72} :catchall_51

    .line 2430
    :try_start_72
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    if-ne p1, v3, :cond_81

    .line 2431
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iput p3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    .line 2432
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v3}, Landroid/media/VolumeController;->postHasNewRemotePlaybackInfo()V

    .line 2434
    :cond_81
    monitor-exit v5

    goto :goto_3f

    :catchall_83
    move-exception v3

    monitor-exit v5
    :try_end_85
    .catchall {:try_start_72 .. :try_end_85} :catchall_83

    :try_start_85
    throw v3

    .line 2437
    :pswitch_86
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    .line 2438
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5
    :try_end_8b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_85 .. :try_end_8b} :catch_47
    .catchall {:try_start_85 .. :try_end_8b} :catchall_51

    .line 2439
    :try_start_8b
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    if-ne p1, v3, :cond_9a

    .line 2440
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iput p3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    .line 2441
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v3}, Landroid/media/VolumeController;->postHasNewRemotePlaybackInfo()V

    .line 2443
    :cond_9a
    monitor-exit v5

    goto :goto_3f

    :catchall_9c
    move-exception v3

    monitor-exit v5
    :try_end_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_9c

    :try_start_9e
    throw v3

    .line 2446
    :pswitch_9f
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackStream:I
    :try_end_a1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9e .. :try_end_a1} :catch_47
    .catchall {:try_start_9e .. :try_end_a1} :catchall_51

    goto :goto_3f

    .line 2410
    :cond_a2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_b

    .line 2413
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_41
        :pswitch_54
        :pswitch_6d
        :pswitch_86
        :pswitch_9f
    .end packed-switch
.end method

.method private onNewPlaybackStateForRcc(IILandroid/media/MediaFocusControl$RccPlaybackState;)V
    .registers 10
    .param p1, "rccId"    # I
    .param p2, "state"    # I
    .param p3, "newState"    # Landroid/media/MediaFocusControl$RccPlaybackState;

    .prologue
    .line 2471
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2475
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_b
    if-ltz v1, :cond_45

    .line 2476
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2477
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v3, p1, :cond_37

    .line 2478
    iput-object p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    .line 2479
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5
    :try_end_1e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_1e} :catch_3d
    .catchall {:try_start_3 .. :try_end_1e} :catchall_47

    .line 2480
    :try_start_1e
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    if-ne p1, v3, :cond_2d

    .line 2481
    invoke-static {p2}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2482
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    .line 2484
    :cond_2d
    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_3a

    .line 2488
    :try_start_2e
    invoke-static {p2}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2489
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->postPromoteRcc(I)V
    :try_end_37
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2e .. :try_end_37} :catch_3d
    .catchall {:try_start_2e .. :try_end_37} :catchall_47

    .line 2475
    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2484
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v3
    :try_end_3d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3c .. :try_end_3d} :catch_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_47

    .line 2493
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_3d
    move-exception v0

    .line 2495
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3e
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index on mRCStack in onNewPlaybackStateForRcc, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2497
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_45
    monitor-exit v4

    .line 2498
    return-void

    .line 2497
    :catchall_47
    move-exception v3

    monitor-exit v4
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_47

    throw v3
.end method

.method private onPromoteRcc(I)V
    .registers 10
    .param p1, "rccId"    # I

    .prologue
    .line 1822
    sget-object v5, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1823
    :try_start_3
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4c

    .line 1825
    :try_start_6
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v4, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_1d

    .line 1826
    monitor-exit v6
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_5b

    :try_start_1b
    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_4c

    .line 1851
    :goto_1c
    return-void

    .line 1828
    :cond_1d
    const/4 v2, -0x1

    .line 1830
    .local v2, "indexToPromote":I
    :try_start_1e
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_26
    if-ltz v1, :cond_35

    .line 1831
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1832
    .local v3, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v4, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_4f

    .line 1833
    move v2, v1

    .line 1837
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_35
    if-ltz v2, :cond_49

    .line 1840
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1841
    .restart local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    :try_end_49
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1e .. :try_end_49} :catch_52
    .catchall {:try_start_1e .. :try_end_49} :catchall_5b

    .line 1849
    .end local v1    # "index":I
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_49
    :goto_49
    :try_start_49
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_5b

    .line 1850
    :try_start_4a
    monitor-exit v5

    goto :goto_1c

    .end local v2    # "indexToPromote":I
    :catchall_4c
    move-exception v4

    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4c

    throw v4

    .line 1830
    .restart local v1    # "index":I
    .restart local v2    # "indexToPromote":I
    .restart local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 1845
    .end local v1    # "index":I
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_52
    move-exception v0

    .line 1847
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_53
    const-string v4, "MediaFocusControl"

    const-string v7, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 1849
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2    # "indexToPromote":I
    :catchall_5b
    move-exception v4

    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_4c
.end method

.method private onRcDisplayClear()V
    .registers 6

    .prologue
    .line 1632
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1633
    :try_start_3
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 1634
    :try_start_6
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1636
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Landroid/media/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1638
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    .line 1639
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_19

    .line 1640
    return-void

    .line 1638
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0

    .line 1639
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    .registers 10
    .param p1, "newRcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1681
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1682
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_32

    .line 1683
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_2f

    if-eqz v1, :cond_17

    .line 1688
    :try_start_a
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-interface {p1, v1, v4, v5}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_26
    .catchall {:try_start_a .. :try_end_12} :catchall_2f

    .line 1693
    :try_start_12
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_1a
    .catchall {:try_start_12 .. :try_end_17} :catchall_2f

    .line 1702
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_2f

    .line 1703
    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_32

    .line 1704
    return-void

    .line 1694
    :catch_1a
    move-exception v0

    .line 1695
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1b
    const-string v1, "MediaFocusControl"

    const-string v4, "Current valid remote client is dead: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1696
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_25} :catch_26
    .catchall {:try_start_1b .. :try_end_25} :catchall_2f

    goto :goto_17

    .line 1698
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_26
    move-exception v0

    .line 1699
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_27
    const-string v1, "MediaFocusControl"

    const-string v4, "Dead display in onRcDisplayInitInfo()"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 1702
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2f
    move-exception v1

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1

    .line 1703
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private onRcDisplayUpdate(Landroid/media/MediaFocusControl$RemoteControlStackEntry;I)V
    .registers 9
    .param p1, "rcse"    # Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .param p2, "flags"    # I

    .prologue
    .line 1646
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1647
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4c

    .line 1648
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1651
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1654
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    iget-object v4, p1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroid/media/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_49

    .line 1661
    :try_start_22
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-interface {v1, v4, p2}, Landroid/media/IRemoteControlClient;->onInformationRequested(II)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_2c
    .catchall {:try_start_22 .. :try_end_29} :catchall_49

    .line 1671
    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_49

    .line 1672
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_4c

    .line 1673
    return-void

    .line 1662
    :catch_2c
    move-exception v0

    .line 1663
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2d
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_29

    .line 1671
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_49
    move-exception v1

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v1

    .line 1672
    :catchall_4c
    move-exception v1

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private onReevaluateRemote()V
    .registers 7

    .prologue
    .line 2708
    const/4 v0, 0x0

    .line 2709
    .local v0, "hasRemotePlayback":Z
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2712
    :try_start_4
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2713
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2714
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2715
    .local v1, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_a

    .line 2716
    const/4 v0, 0x1

    .line 2720
    .end local v1    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_1c
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_2d

    .line 2721
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v4

    .line 2722
    :try_start_20
    iget-boolean v3, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    if-eq v3, v0, :cond_2b

    .line 2723
    iput-boolean v0, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    .line 2724
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v3, v0}, Landroid/media/VolumeController;->postRemoteSliderVisibility(Z)V

    .line 2726
    :cond_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_30

    .line 2727
    return-void

    .line 2720
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v3

    .line 2726
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v3
.end method

.method private onReevaluateRemoteControlDisplays()V
    .registers 18

    .prologue
    .line 247
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 248
    .local v8, "currentUser":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 253
    .local v13, "enabledNotifListeners":Ljava/lang/String;
    sget-object v15, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 254
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_92

    .line 258
    if-nez v13, :cond_95

    .line 259
    const/4 v12, 0x0

    .line 263
    .local v12, "enabledComponents":[Ljava/lang/String;
    :goto_1f
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 264
    .local v10, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_27
    :goto_27
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 265
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 267
    .local v9, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 268
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v14

    .line 269
    .local v14, "wasEnabled":Z
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, Landroid/media/MediaFocusControl;->isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z

    move-result v1

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9, v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$702(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 271
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z
    :try_end_4d
    .catchall {:try_start_1f .. :try_end_4d} :catchall_8f

    move-result v1

    if-eq v14, v1, :cond_27

    .line 274
    :try_start_50
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/IRemoteControlDisplay;->setEnabled(Z)V

    .line 276
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaFocusControl;->enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V

    .line 279
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0xa

    const/4 v3, 0x2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_85} :catch_86
    .catchall {:try_start_50 .. :try_end_85} :catchall_8f

    goto :goto_27

    .line 285
    :catch_86
    move-exception v11

    .line 286
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_87
    const-string v1, "MediaFocusControl"

    const-string v2, "Error en/disabling RCD: "

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 291
    .end local v9    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "enabledComponents":[Ljava/lang/String;
    .end local v14    # "wasEnabled":Z
    :catchall_8f
    move-exception v1

    monitor-exit v16
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_8f

    :try_start_91
    throw v1

    .line 292
    :catchall_92
    move-exception v1

    monitor-exit v15
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_92

    throw v1

    .line 261
    :cond_95
    :try_start_95
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "enabledComponents":[Ljava/lang/String;
    goto :goto_1f

    .line 291
    .restart local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_9c
    monitor-exit v16
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_8f

    .line 292
    :try_start_9d
    monitor-exit v15
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_92

    .line 293
    return-void
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .registers 9
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 2507
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2512
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_b
    if-ltz v1, :cond_1b

    .line 2513
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2514
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v3, p1, :cond_1d

    .line 2515
    iput-object p2, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_1b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_1b} :catch_20
    .catchall {:try_start_3 .. :try_end_1b} :catchall_29

    .line 2523
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_1b
    :goto_1b
    :try_start_1b
    monitor-exit v4

    .line 2524
    return-void

    .line 2512
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2519
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_20
    move-exception v0

    .line 2521
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 2523
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_29

    throw v3
.end method

.method private onSetRemoteControlClientPlaybackPosition(IJ)V
    .registers 10
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .prologue
    .line 2352
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 2353
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_36

    .line 2354
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_13

    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_33

    if-ne v1, p1, :cond_13

    .line 2357
    :try_start_e
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->seekTo(IJ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_16
    .catchall {:try_start_e .. :try_end_13} :catchall_33

    .line 2363
    :cond_13
    :goto_13
    :try_start_13
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_33

    .line 2364
    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_36

    .line 2365
    return-void

    .line 2358
    :catch_16
    move-exception v0

    .line 2359
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_17
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_13

    .line 2363
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_33
    move-exception v1

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_33

    :try_start_35
    throw v1

    .line 2364
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private onUpdateRemoteControlClientMetadata(IILandroid/media/Rating;)V
    .registers 10
    .param p1, "genId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Landroid/media/Rating;

    .prologue
    .line 2375
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 2376
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4c

    .line 2377
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_34

    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_49

    if-ne v1, p1, :cond_34

    .line 2379
    packed-switch p2, :pswitch_data_50

    .line 2384
    :try_start_11
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unhandled metadata key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " update for RCC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_34} :catch_3d
    .catchall {:try_start_11 .. :try_end_34} :catchall_49

    .line 2393
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_49

    .line 2394
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_4c

    .line 2395
    return-void

    .line 2381
    :pswitch_37
    :try_start_37
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->updateMetadata(IILandroid/media/Rating;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catchall {:try_start_37 .. :try_end_3c} :catchall_49

    goto :goto_34

    .line 2388
    :catch_3d
    move-exception v0

    .line 2389
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3e
    const-string v1, "MediaFocusControl"

    const-string v4, "Current valid remote client is dead"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2390
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_34

    .line 2393
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_49
    move-exception v1

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v1

    .line 2394
    :catchall_4c
    move-exception v1

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4c

    throw v1

    .line 2379
    nop

    :pswitch_data_50
    .packed-switch 0x10000001
        :pswitch_37
    .end packed-switch
.end method

.method private plugRemoteControlDisplaysIntoClient_syncRcStack(Landroid/media/IRemoteControlClient;)V
    .registers 8
    .param p1, "rcc"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 2101
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2102
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 2105
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_start_12
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    invoke-interface {p1, v3, v4, v5}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 2107
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$3200(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2108
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2f} :catch_30

    goto :goto_6

    .line 2110
    :catch_30
    move-exception v2

    .line 2111
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to RCC in RCC registration"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 2114
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_39
    return-void
.end method

.method private postPromoteRcc(I)V
    .registers 9
    .param p1, "rccId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1816
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x6

    const/4 v5, 0x0

    move v3, p1

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1818
    return-void
.end method

.method private postReevaluateRemote()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 2702
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2703
    return-void
.end method

.method private postReevaluateRemoteControlDisplays()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 241
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xb

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 242
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(I)V
    .registers 4
    .param p1, "focusGain"    # I

    .prologue
    .line 490
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 491
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 492
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1, p1}, Landroid/media/FocusRequester;->handleExternalFocusGain(I)V

    goto :goto_6

    .line 494
    :cond_16
    return-void
.end method

.method private pushMediaButtonReceiver_syncAfRcs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .registers 14
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 1484
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_1b

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v5, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move v5, v6

    .line 1519
    :goto_1a
    return v5

    .line 1487
    :cond_1b
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2f

    move v5, v6

    .line 1489
    goto :goto_1a

    .line 1491
    :cond_2f
    const/4 v3, 0x0

    .line 1492
    .local v3, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    const/4 v4, 0x0

    .line 1494
    .local v4, "wasInsideStack":Z
    :try_start_31
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "index":I
    :goto_39
    if-ltz v2, :cond_53

    .line 1495
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    move-object v3, v0

    .line 1496
    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 1498
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_52
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_31 .. :try_end_52} :catch_71

    .line 1499
    const/4 v4, 0x1

    .line 1507
    .end local v2    # "index":I
    :cond_53
    :goto_53
    if-nez v4, :cond_5a

    .line 1508
    new-instance v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    invoke-direct {v3, p0, p1, p2, p3}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;-><init>(Landroid/media/MediaFocusControl;Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1510
    .restart local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_5a
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    if-eqz p2, :cond_6c

    .line 1514
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    invoke-virtual {v7, v6, v6, v6, p2}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1519
    :cond_6c
    const/4 v5, 0x1

    goto :goto_1a

    .line 1494
    .restart local v2    # "index":I
    :cond_6e
    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    .line 1503
    .end local v2    # "index":I
    :catch_71
    move-exception v1

    .line 1505
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "MediaFocusControl"

    const-string v7, "Wrong index accessing media button stack, lock error? "

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method

.method private rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z
    .registers 6
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 2139
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2140
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 2142
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2143
    const/4 v2, 0x1

    .line 2146
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V
    .registers 22
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 2165
    sget-object v15, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2166
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_34

    .line 2167
    if-eqz p1, :cond_12

    :try_start_c
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaFocusControl;->rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2168
    :cond_12
    monitor-exit v16
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_6b

    :try_start_13
    monitor-exit v15
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_34

    .line 2202
    :goto_14
    return-void

    .line 2170
    :cond_15
    :try_start_15
    new-instance v11, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/media/MediaFocusControl$DisplayInfoForServer;-><init>(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    .line 2171
    .local v11, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    const/4 v4, 0x1

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v11, v4}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$702(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 2172
    move-object/from16 v0, p4

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v11, v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$602(Landroid/media/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 2173
    invoke-virtual {v11}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->init()Z

    move-result v4

    if-nez v4, :cond_37

    .line 2175
    monitor-exit v16
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_6b

    :try_start_32
    monitor-exit v15

    goto :goto_14

    .line 2201
    .end local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :catchall_34
    move-exception v4

    monitor-exit v15
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_34

    throw v4

    .line 2178
    .restart local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_37
    :try_start_37
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2182
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 2183
    .local v14, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_46
    :goto_46
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 2184
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2185
    .local v13, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v4, v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_54
    .catchall {:try_start_37 .. :try_end_54} :catchall_6b

    if-eqz v4, :cond_46

    .line 2187
    :try_start_56
    iget-object v4, v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_61} :catch_62
    .catchall {:try_start_56 .. :try_end_61} :catchall_6b

    goto :goto_46

    .line 2188
    :catch_62
    move-exception v12

    .line 2189
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_63
    const-string v4, "MediaFocusControl"

    const-string v5, "Error connecting RCD to client: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 2200
    .end local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_6b
    move-exception v4

    monitor-exit v16
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v4
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_34

    .line 2197
    .restart local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .restart local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_6e
    :try_start_6e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v10, 0x0

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v10}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2200
    monitor-exit v16
    :try_end_80
    .catchall {:try_start_6e .. :try_end_80} :catchall_6b

    .line 2201
    :try_start_80
    monitor-exit v15
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_34

    goto :goto_14
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z

    .prologue
    .line 522
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/FocusRequester;

    invoke-virtual {v2, p1}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 525
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 526
    .local v0, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    .line 527
    if-eqz p2, :cond_2f

    .line 529
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 531
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 532
    const/16 v2, 0xf

    :try_start_2b
    invoke-direct {p0, v2}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 533
    monitor-exit v3

    .line 551
    .end local v0    # "fr":Landroid/media/FocusRequester;
    :cond_2f
    return-void

    .line 533
    .restart local v0    # "fr":Landroid/media/FocusRequester;
    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_30

    throw v2

    .line 540
    .end local v0    # "fr":Landroid/media/FocusRequester;
    :cond_33
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 541
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 542
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 543
    .restart local v0    # "fr":Landroid/media/FocusRequester;
    invoke-virtual {v0, p1}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 544
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 547
    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    goto :goto_39
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 560
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4b

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/FocusRequester;

    invoke-virtual {v3, p1}, Landroid/media/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v1, 0x1

    .line 564
    .local v1, "isTopOfStackForClientToRemove":Z
    :goto_17
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 565
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 566
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 567
    .local v0, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v0, p1}, Landroid/media/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 568
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1d

    .line 560
    .end local v0    # "fr":Landroid/media/FocusRequester;
    .end local v1    # "isTopOfStackForClientToRemove":Z
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_4b
    const/4 v1, 0x0

    goto :goto_17

    .line 573
    .restart local v1    # "isTopOfStackForClientToRemove":Z
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_4d
    if-eqz v1, :cond_5b

    .line 576
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 578
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 579
    const/16 v3, 0xf

    :try_start_57
    invoke-direct {p0, v3}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 580
    monitor-exit v4

    .line 582
    :cond_5b
    return-void

    .line 580
    :catchall_5c
    move-exception v3

    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5c

    throw v3
.end method

.method private removeMediaButtonReceiver_syncAfRcs(Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1530
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_8
    if-ltz v1, :cond_22

    .line 1531
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1532
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1533
    invoke-virtual {v2}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->destroy()V

    .line 1535
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_22
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_22} :catch_26

    .line 1543
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_22
    :goto_22
    return-void

    .line 1530
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1539
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_26
    move-exception v0

    .line 1541
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 10
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 345
    if-nez p2, :cond_e

    .line 346
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    :cond_5
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 352
    :goto_d
    return-void

    .line 347
    :cond_e
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_d
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .registers 5
    .param p1, "originalKeyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 903
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 904
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 906
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 907
    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 909
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .registers 10
    .param p1, "rccId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 2609
    if-nez p2, :cond_3

    .line 2639
    :cond_2
    :goto_2
    return-void

    .line 2613
    :cond_3
    const/4 v3, 0x0

    .line 2614
    .local v3, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2619
    :try_start_7
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_f
    if-ltz v1, :cond_1f

    .line 2620
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2622
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v4, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_30

    .line 2623
    iget-object v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_1f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_1f} :catch_33
    .catchall {:try_start_7 .. :try_end_1f} :catchall_3c

    .line 2631
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_1f
    :goto_1f
    :try_start_1f
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_3c

    .line 2632
    if-eqz v3, :cond_2

    .line 2634
    const/4 v4, -0x1

    :try_start_23
    invoke-interface {v3, p2, v4}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_2

    .line 2635
    :catch_27
    move-exception v0

    .line 2636
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MediaFocusControl"

    const-string v5, "Error dispatching relative volume update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2619
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 2627
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_33
    move-exception v0

    .line 2629
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_34
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing media button stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 2631
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_3c
    move-exception v4

    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3c

    throw v4
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .registers 7
    .param p1, "newClientGeneration"    # I

    .prologue
    .line 1595
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1596
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1597
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1598
    .local v1, "se":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    if-eqz v1, :cond_6

    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_6

    .line 1600
    :try_start_18
    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_6

    .line 1601
    :catch_1e
    move-exception v0

    .line 1602
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1603
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1604
    invoke-virtual {v1}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_6

    .line 1608
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "se":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_2d
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .registers 10
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1571
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 1572
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_37

    .line 1573
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1574
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1575
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_34

    .line 1577
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_start_1d
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25
    .catchall {:try_start_1d .. :try_end_24} :catchall_34

    goto :goto_11

    .line 1579
    :catch_25
    move-exception v2

    .line 1580
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_26
    const-string v3, "MediaFocusControl"

    const-string v5, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1581
    invoke-virtual {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1582
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 1586
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_34

    throw v3

    :cond_37
    :try_start_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    .line 1587
    return-void
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .registers 4
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1621
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1623
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 1624
    return-void
.end method

.method private startVoiceBasedInteractions(Z)V
    .registers 12
    .param p1, "needWakeLock"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 981
    const/4 v5, 0x0

    .line 986
    .local v5, "voiceIntent":Landroid/content/Intent;
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 987
    .local v4, "pm":Landroid/os/PowerManager;
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v8, :cond_56

    iget-object v8, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_56

    move v3, v6

    .line 988
    .local v3, "isLocked":Z
    :goto_1b
    if-nez v3, :cond_58

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_58

    .line 989
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 990
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "MediaFocusControl"

    const-string/jumbo v7, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :goto_32
    if-eqz p1, :cond_39

    .line 999
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1001
    :cond_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1003
    .local v1, "identity":J
    if-eqz v5, :cond_4b

    .line 1004
    const/high16 v6, 0x10800000

    :try_start_41
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1006
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_41 .. :try_end_4b} :catch_79
    .catchall {:try_start_41 .. :try_end_4b} :catchall_9d

    .line 1011
    :cond_4b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    if-eqz p1, :cond_55

    .line 1013
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1016
    :cond_55
    :goto_55
    return-void

    .end local v1    # "identity":J
    .end local v3    # "isLocked":Z
    :cond_56
    move v3, v7

    .line 987
    goto :goto_1b

    .line 992
    .restart local v3    # "isLocked":Z
    :cond_58
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "android.speech.extras.EXTRA_SECURE"

    if-eqz v3, :cond_77

    iget-object v9, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v9

    if-eqz v9, :cond_77

    :goto_6b
    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 995
    const-string v6, "MediaFocusControl"

    const-string/jumbo v7, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_77
    move v6, v7

    .line 993
    goto :goto_6b

    .line 1008
    .restart local v1    # "identity":J
    :catch_79
    move-exception v0

    .line 1009
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_7a
    const-string v6, "MediaFocusControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity for search: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_7a .. :try_end_92} :catchall_9d

    .line 1011
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    if-eqz p1, :cond_55

    .line 1013
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_55

    .line 1011
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_9d
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    if-eqz p1, :cond_a8

    .line 1013
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_a8
    throw v6
.end method

.method private updateRemoteControlDisplay_syncAfRcs(I)V
    .registers 8
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1727
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1728
    .local v1, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    move v0, p1

    .line 1731
    .local v0, "infoFlagsAboutToBeUsed":I
    iget-object v2, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-nez v2, :cond_11

    .line 1733
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    .line 1747
    :goto_10
    return-void

    .line 1736
    :cond_11
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1737
    :try_start_14
    iget-object v2, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1739
    const/16 v0, 0xf

    .line 1741
    :cond_20
    iget-object v2, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1742
    iget-object v2, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1743
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_37

    .line 1745
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10

    .line 1743
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .registers 8
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 700
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :try_start_19
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catch Ljava/util/ConcurrentModificationException; {:try_start_19 .. :try_end_1c} :catch_25

    .line 704
    const/4 v1, 0x1

    :try_start_1d
    invoke-direct {p0, p2, v1}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 705
    monitor-exit v2

    .line 714
    :goto_21
    return v4

    .line 705
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    :try_start_24
    throw v1
    :try_end_25
    .catch Ljava/util/ConcurrentModificationException; {:try_start_24 .. :try_end_25} :catch_25

    .line 706
    :catch_25
    move-exception v0

    .line 710
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_21
.end method

.method protected adjustRemoteVolume(III)V
    .registers 8
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 2585
    const/4 v0, -0x1

    .line 2586
    .local v0, "rccId":I
    const/4 v1, 0x0

    .line 2587
    .local v1, "volFixed":Z
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v3

    .line 2588
    :try_start_5
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    if-nez v2, :cond_b

    .line 2590
    monitor-exit v3

    .line 2605
    :goto_a
    return-void

    .line 2592
    :cond_b
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v2, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    .line 2593
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v2, v2, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_22

    const/4 v1, 0x1

    .line 2595
    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_24

    .line 2599
    if-nez v1, :cond_1c

    .line 2600
    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->sendVolumeUpdateToRemote(II)V

    .line 2604
    :cond_1c
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v2, p1, p3}, Landroid/media/VolumeController;->postRemoteVolumeChanged(II)V

    goto :goto_a

    .line 2593
    :cond_22
    const/4 v1, 0x0

    goto :goto_16

    .line 2595
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2
.end method

.method protected checkUpdateRemoteStateIfActive(I)Z
    .registers 11
    .param p1, "streamType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2533
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2536
    :try_start_5
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "index":I
    :goto_d
    if-ltz v1, :cond_55

    .line 2537
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2538
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v6, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    if-ne v6, v3, :cond_5f

    iget-object v6, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    iget v6, v6, Landroid/media/MediaFocusControl$RccPlaybackState;->mState:I

    invoke-static {v6}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v6

    if-eqz v6, :cond_5f

    iget v6, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackStream:I

    if-ne v6, p1, :cond_5f

    .line 2543
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v6
    :try_end_2c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_2c} :catch_4d
    .catchall {:try_start_5 .. :try_end_2c} :catchall_62

    .line 2544
    :try_start_2c
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v8, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    iput v8, v7, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    .line 2545
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v8, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolume:I

    iput v8, v7, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    .line 2546
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v8, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    iput v8, v7, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    .line 2547
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v8, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    iput v8, v7, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    .line 2548
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2549
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_4a

    .line 2550
    :try_start_48
    monitor-exit v5
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_62

    .line 2561
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :goto_49
    return v3

    .line 2549
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catchall_4a
    move-exception v3

    :try_start_4b
    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v3
    :try_end_4d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4c .. :try_end_4d} :catch_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_62

    .line 2553
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_4d
    move-exception v0

    .line 2555
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4e
    const-string v3, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2557
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_55
    monitor-exit v5
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_62

    .line 2558
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5

    .line 2559
    const/4 v3, 0x0

    :try_start_5a
    iput-boolean v3, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2560
    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_65

    move v3, v4

    .line 2561
    goto :goto_49

    .line 2536
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_5f
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2557
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catchall_62
    move-exception v3

    :try_start_63
    monitor-exit v5
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v3

    .line 2560
    :catchall_65
    move-exception v3

    :try_start_66
    monitor-exit v5
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v3
.end method

.method protected discardAudioFocusOwner()V
    .registers 5

    .prologue
    .line 460
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 461
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 463
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 464
    .local v0, "exFocusOwner":Landroid/media/FocusRequester;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/FocusRequester;->handleFocusLoss(I)V

    .line 465
    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    .line 467
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_26

    .line 468
    :try_start_1d
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    .line 469
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_23

    .line 471
    .end local v0    # "exFocusOwner":Landroid/media/FocusRequester;
    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_26

    .line 472
    return-void

    .line 469
    .restart local v0    # "exFocusOwner":Landroid/media/FocusRequester;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v1

    .line 471
    .end local v0    # "exFocusOwner":Landroid/media/FocusRequester;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_26

    throw v1
.end method

.method protected dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 734
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 735
    return-void
.end method

.method protected dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 743
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 744
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 128
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 129
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCCStack(Ljava/io/PrintWriter;)V

    .line 130
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCDList(Ljava/io/PrintWriter;)V

    .line 131
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .registers 3

    .prologue
    .line 621
    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 623
    const/4 v0, 0x0

    monitor-exit v1

    .line 625
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0}, Landroid/media/FocusRequester;->getGainRequest()I

    move-result v0

    monitor-exit v1

    goto :goto_d

    .line 627
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method protected getRemoteStreamMaxVolume()I
    .registers 4

    .prologue
    .line 2642
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v1

    .line 2643
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 2644
    const/4 v0, 0x0

    monitor-exit v1

    .line 2646
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    monitor-exit v1

    goto :goto_c

    .line 2647
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method protected getRemoteStreamVolume()I
    .registers 4

    .prologue
    .line 2651
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v1

    .line 2652
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 2653
    const/4 v0, 0x0

    monitor-exit v1

    .line 2655
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    monitor-exit v1

    goto :goto_c

    .line 2656
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1026
    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_9

    .line 1027
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1029
    :cond_9
    return-void
.end method

.method protected registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 1896
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1898
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :goto_11
    return-void

    .line 1901
    :cond_12
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1902
    :try_start_15
    iput-object p1, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1903
    monitor-exit v1

    goto :goto_11

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method protected registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1859
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1862
    :try_start_1b
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2f

    .line 1863
    :try_start_1e
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->pushMediaButtonReceiver_syncAfRcs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1865
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 1867
    :cond_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_2c

    .line 1868
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2f

    .line 1869
    return-void

    .line 1867
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0

    .line 1868
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2f

    throw v0
.end method

.method protected registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .registers 15
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p3, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 1930
    const/4 v3, -0x1

    .line 1931
    .local v3, "rccId":I
    sget-object v7, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1932
    :try_start_4
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_74

    .line 1935
    :try_start_7
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "index":I
    :goto_f
    if-ltz v2, :cond_37

    .line 1936
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1937
    .local v5, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 1939
    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/MediaFocusControl$RcClientDeathHandler;

    if-eqz v6, :cond_28

    .line 1941
    invoke-virtual {v5}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 1944
    :cond_28
    iput-object p2, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 1945
    iput-object p3, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    .line 1946
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iput v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    .line 1947
    if-nez p2, :cond_45

    .line 1949
    invoke-virtual {v5}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->resetPlaybackInfo()V
    :try_end_37
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_37} :catch_68
    .catchall {:try_start_7 .. :try_end_37} :catchall_71

    .line 1981
    .end local v2    # "index":I
    .end local v5    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_37
    :goto_37
    :try_start_37
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 1982
    const/16 v6, 0xf

    invoke-direct {p0, v6}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 1984
    :cond_42
    monitor-exit v8
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_71

    .line 1985
    :try_start_43
    monitor-exit v7
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_74

    .line 1986
    return v3

    .line 1952
    .restart local v2    # "index":I
    .restart local v5    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_45
    :try_start_45
    iget v3, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    .line 1956
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_54

    .line 1957
    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-direct {p0, v6}, Landroid/media/MediaFocusControl;->plugRemoteControlDisplaysIntoClient_syncRcStack(Landroid/media/IRemoteControlClient;)V

    .line 1960
    :cond_54
    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1961
    .local v0, "b":Landroid/os/IBinder;
    new-instance v4, Landroid/media/MediaFocusControl$RcClientDeathHandler;

    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v4, p0, v0, v6}, Landroid/media/MediaFocusControl$RcClientDeathHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_61
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_45 .. :try_end_61} :catch_68
    .catchall {:try_start_45 .. :try_end_61} :catchall_71

    .line 1964
    .local v4, "rcdh":Landroid/media/MediaFocusControl$RcClientDeathHandler;
    const/4 v6, 0x0

    :try_start_62
    invoke-interface {v0, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_65} :catch_77
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_62 .. :try_end_65} :catch_68
    .catchall {:try_start_62 .. :try_end_65} :catchall_71

    .line 1970
    :goto_65
    :try_start_65
    iput-object v4, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/MediaFocusControl$RcClientDeathHandler;
    :try_end_67
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_65 .. :try_end_67} :catch_68
    .catchall {:try_start_65 .. :try_end_67} :catchall_71

    goto :goto_37

    .line 1974
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "index":I
    .end local v4    # "rcdh":Landroid/media/MediaFocusControl$RcClientDeathHandler;
    .end local v5    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_68
    move-exception v1

    .line 1976
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_69
    const-string v6, "MediaFocusControl"

    const-string v9, "Wrong index accessing RC stack, lock error? "

    invoke-static {v6, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 1984
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_71
    move-exception v6

    monitor-exit v8
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_71

    :try_start_73
    throw v6

    .line 1985
    :catchall_74
    move-exception v6

    monitor-exit v7
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_74

    throw v6

    .line 1965
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "index":I
    .restart local v4    # "rcdh":Landroid/media/MediaFocusControl$RcClientDeathHandler;
    .restart local v5    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_77
    move-exception v1

    .line 1967
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_78
    const-string v6, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_94
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_78 .. :try_end_94} :catch_68
    .catchall {:try_start_78 .. :try_end_94} :catchall_71

    goto :goto_65

    .line 1935
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "rcdh":Landroid/media/MediaFocusControl$RcClientDeathHandler;
    :cond_95
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_f
.end method

.method protected registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .registers 8
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 229
    .local v0, "reg":I
    if-eqz v0, :cond_c

    .line 230
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 231
    const/4 v1, 0x1

    .line 236
    :goto_b
    return v1

    .line 233
    :cond_c
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to register IRemoteControlDisplay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v1, 0x0

    goto :goto_b
.end method

.method protected registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .registers 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 215
    invoke-direct {p0, p4}, Landroid/media/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 216
    .local v0, "reg":I
    if-eqz v0, :cond_b

    .line 217
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 218
    const/4 v1, 0x1

    .line 223
    :goto_a
    return v1

    .line 220
    :cond_b
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or be an enabled NotificationListenerService for registerRemoteController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .registers 10
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    const/4 v4, 0x0

    .line 2501
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2503
    return-void
.end method

.method protected remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .registers 13
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 2258
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2259
    :try_start_3
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2260
    .local v2, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    const/4 v0, 0x0

    .line 2261
    .local v0, "artworkSizeUpdate":Z
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    if-nez v0, :cond_3e

    .line 2262
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 2263
    .local v1, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2264
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-ne v6, p2, :cond_36

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-eq v6, p3, :cond_a

    .line 2265
    :cond_36
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1, p2}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$902(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I

    .line 2266
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1, p3}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1002(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I

    .line 2267
    const/4 v0, 0x1

    goto :goto_a

    .line 2271
    .end local v1    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_3e
    if-eqz v0, :cond_68

    .line 2274
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2275
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_46
    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    .line 2276
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2277
    .local v4, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_65

    if-eqz v6, :cond_46

    .line 2279
    :try_start_56
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6, p1, p2, p3}, Landroid/media/IRemoteControlClient;->setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_5c
    .catchall {:try_start_56 .. :try_end_5b} :catchall_65

    goto :goto_46

    .line 2280
    :catch_5c
    move-exception v3

    .line 2281
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_5d
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting bitmap size for RCD on RCC: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 2286
    .end local v0    # "artworkSizeUpdate":Z
    .end local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_65
    move-exception v6

    monitor-exit v7
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_65

    throw v6

    .restart local v0    # "artworkSizeUpdate":Z
    .restart local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_68
    :try_start_68
    monitor-exit v7
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_65

    .line 2287
    return-void
.end method

.method protected remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .registers 12
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 2303
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2304
    const/4 v3, 0x0

    .line 2307
    .local v3, "rcdRegistered":Z
    :try_start_4
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2308
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 2309
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 2310
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2311
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0, p2}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$3202(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 2312
    const/4 v3, 0x1

    .line 2316
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_2c
    if-nez v3, :cond_30

    .line 2317
    monitor-exit v7

    .line 2333
    :goto_2f
    return-void

    .line 2321
    :cond_30
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2322
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_36
    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 2323
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2324
    .local v4, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_55

    if-eqz v6, :cond_36

    .line 2326
    :try_start_46
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6, p1, p2}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catchall {:try_start_46 .. :try_end_4b} :catchall_55

    goto :goto_36

    .line 2327
    :catch_4c
    move-exception v2

    .line 2328
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4d
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting position sync flag for RCD on RCC: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 2332
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_55
    move-exception v6

    monitor-exit v7
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_55

    throw v6

    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_58
    :try_start_58
    monitor-exit v7
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_55

    goto :goto_2f
.end method

.method protected requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .registers 21
    .param p1, "mainStreamType"    # I
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 633
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_29

    .line 636
    const-string v1, "MediaFocusControl"

    const-string v2, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v1, 0x0

    .line 695
    :goto_28
    return v1

    .line 640
    :cond_29
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v0, p6

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3b

    .line 642
    const/4 v1, 0x0

    goto :goto_28

    .line 645
    :cond_3b
    sget-object v12, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v12

    .line 646
    :try_start_3e
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 647
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_28

    .line 693
    :catchall_47
    move-exception v1

    monitor-exit v12
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_47

    throw v1

    .line 653
    :cond_4a
    :try_start_4a
    new-instance v7, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    move-object/from16 v0, p3

    invoke-direct {v7, p0, v0}, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_47

    .line 655
    .local v7, "afdh":Landroid/media/MediaFocusControl$AudioFocusDeathHandler;
    const/4 v1, 0x0

    :try_start_52
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_57} :catch_88
    .catchall {:try_start_52 .. :try_end_57} :catchall_47

    .line 662
    :try_start_57
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_b8

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 665
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1}, Landroid/media/FocusRequester;->getGainRequest()I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_ad

    .line 668
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 669
    const/4 v1, 0x1

    monitor-exit v12

    goto :goto_28

    .line 656
    :catch_88
    move-exception v10

    .line 658
    .local v10, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v1, 0x0

    monitor-exit v12

    goto/16 :goto_28

    .line 673
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_ad
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/FocusRequester;

    .line 674
    .local v11, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v11}, Landroid/media/FocusRequester;->release()V

    .line 678
    .end local v11    # "fr":Landroid/media/FocusRequester;
    :cond_b8
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 681
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_cb

    .line 682
    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/media/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 686
    :cond_cb
    iget-object v13, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    new-instance v1, Landroid/media/FocusRequester;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/media/FocusRequester;-><init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;I)V

    invoke-virtual {v13, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_e7
    .catchall {:try_start_57 .. :try_end_e7} :catchall_47

    .line 691
    const/16 v1, 0xf

    :try_start_e9
    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 692
    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_f1

    .line 693
    :try_start_ed
    monitor-exit v12
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_47

    .line 695
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 692
    :catchall_f1
    move-exception v1

    :try_start_f2
    monitor-exit v2
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    :try_start_f3
    throw v1
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_47
.end method

.method protected restoreMediaButtonReceiver()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1455
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "media_button_receiver"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1457
    .local v3, "receiverName":Ljava/lang/String;
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    .line 1458
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1459
    .local v0, "eventReceiver":Landroid/content/ComponentName;
    if-nez v0, :cond_19

    .line 1472
    .end local v0    # "eventReceiver":Landroid/content/ComponentName;
    :cond_18
    :goto_18
    return-void

    .line 1465
    .restart local v0    # "eventReceiver":Landroid/content/ComponentName;
    :cond_19
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1467
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1468
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1470
    .local v2, "pi":Landroid/app/PendingIntent;
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v0, v4}, Landroid/media/MediaFocusControl;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_18
.end method

.method protected setPlaybackInfoForRcc(III)V
    .registers 11
    .param p1, "rccId"    # I
    .param p2, "what"    # I
    .param p3, "value"    # I

    .prologue
    .line 2398
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2400
    return-void
.end method

.method protected setPlaybackStateForRcc(IIJF)V
    .registers 13
    .param p1, "rccId"    # I
    .param p2, "state"    # I
    .param p3, "timeMs"    # J
    .param p5, "speed"    # F

    .prologue
    .line 2463
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    new-instance v5, Landroid/media/MediaFocusControl$RccPlaybackState;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/media/MediaFocusControl$RccPlaybackState;-><init>(IJF)V

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2466
    return-void
.end method

.method protected setRemoteControlClientPlaybackPosition(IJ)V
    .registers 11
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .prologue
    const/4 v2, 0x0

    .line 2337
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 2338
    :try_start_4
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_23

    .line 2339
    :try_start_7
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    if-eq v0, p1, :cond_e

    .line 2340
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_20

    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_23

    .line 2347
    :goto_d
    return-void

    .line 2342
    :cond_e
    :try_start_e
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_20

    .line 2343
    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_23

    .line 2345
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0x8

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move v3, p1

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_d

    .line 2342
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v0

    .line 2343
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_23

    throw v0
.end method

.method protected setRemoteStreamVolume(I)V
    .registers 10
    .param p1, "vol"    # I

    .prologue
    .line 2661
    const/4 v2, -0x1

    .line 2662
    .local v2, "rccId":I
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v6

    .line 2663
    :try_start_4
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v5, v5, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_d

    .line 2664
    monitor-exit v6

    .line 2694
    :cond_c
    :goto_c
    return-void

    .line 2666
    :cond_d
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v2, v5, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    .line 2667
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_3f

    .line 2668
    const/4 v4, 0x0

    .line 2669
    .local v4, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v6

    .line 2674
    :try_start_16
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "index":I
    :goto_1e
    if-ltz v1, :cond_2e

    .line 2675
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2677
    .local v3, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v5, v2, :cond_42

    .line 2678
    iget-object v4, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_2e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_16 .. :try_end_2e} :catch_45
    .catchall {:try_start_16 .. :try_end_2e} :catchall_4e

    .line 2686
    .end local v1    # "index":I
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_4e

    .line 2687
    if-eqz v4, :cond_c

    .line 2689
    const/4 v5, 0x0

    :try_start_32
    invoke-interface {v4, v5, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_c

    .line 2690
    :catch_36
    move-exception v0

    .line 2691
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MediaFocusControl"

    const-string v6, "Error dispatching absolute volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 2667
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :catchall_3f
    move-exception v5

    :try_start_40
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v5

    .line 2674
    .restart local v1    # "index":I
    .restart local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .restart local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 2682
    .end local v1    # "index":I
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_45
    move-exception v0

    .line 2684
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_46
    const-string v5, "MediaFocusControl"

    const-string v7, "Wrong index accessing media button stack, lock error? "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 2686
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_4e
    move-exception v5

    monitor-exit v6
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_4e

    throw v5
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 4
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 719
    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 720
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 721
    monitor-exit v1

    .line 722
    return-void

    .line 721
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected unregisterMediaButtonEventReceiverForCalls()V
    .registers 3

    .prologue
    .line 1910
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1912
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :goto_11
    return-void

    .line 1915
    :cond_12
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1916
    const/4 v0, 0x0

    :try_start_16
    iput-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1917
    monitor-exit v1

    goto :goto_11

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method protected unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1877
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1880
    :try_start_1b
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_32

    .line 1881
    :try_start_1e
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 1882
    .local v0, "topOfStackWillChange":Z
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->removeMediaButtonReceiver_syncAfRcs(Landroid/app/PendingIntent;)V

    .line 1883
    if-eqz v0, :cond_2c

    .line 1885
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 1887
    :cond_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2f

    .line 1888
    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_32

    .line 1889
    return-void

    .line 1887
    .end local v0    # "topOfStackWillChange":Z
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1

    .line 1888
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    throw v1
.end method

.method protected unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .registers 11
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 1996
    sget-object v5, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1997
    :try_start_3
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_58

    .line 1998
    const/4 v3, 0x0

    .line 2000
    .local v3, "topRccChange":Z
    :try_start_7
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_f
    if-ltz v1, :cond_3d

    .line 2001
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2002
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v4, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    iget-object v4, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2006
    invoke-virtual {v2}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 2008
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 2009
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    .line 2010
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I
    :try_end_37
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_37} :catch_4c
    .catchall {:try_start_7 .. :try_end_37} :catchall_55

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_47

    const/4 v3, 0x1

    .line 2019
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_3d
    :goto_3d
    if-eqz v3, :cond_44

    .line 2021
    const/16 v4, 0xf

    :try_start_41
    invoke-direct {p0, v4}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 2023
    :cond_44
    monitor-exit v6
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_55

    .line 2024
    :try_start_45
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_58

    .line 2025
    return-void

    .line 2010
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_47
    const/4 v3, 0x0

    goto :goto_3d

    .line 2000
    :cond_49
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 2015
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_4c
    move-exception v0

    .line 2017
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4d
    const-string v4, "MediaFocusControl"

    const-string v7, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 2023
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_55
    move-exception v4

    monitor-exit v6
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_55

    :try_start_57
    throw v4

    .line 2024
    .end local v3    # "topRccChange":Z
    :catchall_58
    move-exception v4

    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_58

    throw v4
.end method

.method protected unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 11
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 2212
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2213
    if-nez p1, :cond_7

    .line 2214
    :try_start_5
    monitor-exit v7

    .line 2246
    :goto_6
    return-void

    .line 2217
    :cond_7
    const/4 v2, 0x0

    .line 2218
    .local v2, "displayWasPluggedIn":Z
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2219
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    if-nez v2, :cond_39

    .line 2220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 2221
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2222
    const/4 v2, 0x1

    .line 2223
    invoke-virtual {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 2224
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    .line 2245
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "displayWasPluggedIn":Z
    :catchall_36
    move-exception v6

    monitor-exit v7
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_36

    throw v6

    .line 2228
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v2    # "displayWasPluggedIn":Z
    :cond_39
    if-eqz v2, :cond_60

    .line 2231
    :try_start_3b
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2232
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_41
    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 2233
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2234
    .local v4, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_36

    if-eqz v6, :cond_41

    .line 2236
    :try_start_51
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_56} :catch_57
    .catchall {:try_start_51 .. :try_end_56} :catchall_36

    goto :goto_41

    .line 2237
    :catch_57
    move-exception v3

    .line 2238
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_58
    const-string v6, "MediaFocusControl"

    const-string v8, "Error disconnecting remote control display to client: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 2245
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_60
    monitor-exit v7
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_36

    goto :goto_6
.end method

.method protected updateRemoteControlClientMetadata(IILandroid/media/Rating;)V
    .registers 11
    .param p1, "genId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Landroid/media/Rating;

    .prologue
    .line 2368
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2370
    return-void
.end method
