.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;
    }
.end annotation


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GPS:I = 0x2

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NONE:I = -0x1

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final _NUM_OP:I = 0x2b

.field private static sOpDefaultMode:[I

.field private static sOpDisableReset:[Z

.field private static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field static sToken:Landroid/os/IBinder;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x2b

    const/4 v4, 0x0

    .line 211
    new-array v1, v5, [I

    fill-array-data v1, :array_3c6

    sput-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 261
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android:coarse_location"

    aput-object v2, v1, v6

    const-string v2, "android:fine_location"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    aput-object v4, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    aput-object v4, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    aput-object v4, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    aput-object v4, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string v3, "android:monitor_location"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "android:monitor_location_high_power"

    aput-object v3, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 311
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "COARSE_LOCATION"

    aput-object v2, v1, v6

    const-string v2, "FINE_LOCATION"

    aput-object v2, v1, v7

    const-string v2, "GPS"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    const-string v3, "VIBRATE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "READ_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "WRITE_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "READ_CALL_LOG"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "WRITE_CALL_LOG"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "READ_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "WRITE_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "WIFI_SCAN"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "POST_NOTIFICATION"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "NEIGHBORING_CELLS"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "CALL_PHONE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "WRITE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "RECEIVE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "RECEIVE_EMERGECY_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "RECEIVE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "RECEIVE_WAP_PUSH"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "SEND_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "READ_ICC_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "WRITE_ICC_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "WRITE_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "SYSTEM_ALERT_WINDOW"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "ACCESS_NOTIFICATIONS"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "RECORD_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "PLAY_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "READ_CLIPBOARD"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "WRITE_CLIPBOARD"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "TAKE_MEDIA_BUTTONS"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "TAKE_AUDIO_FOCUS"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "AUDIO_MASTER_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "AUDIO_VOICE_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "AUDIO_RING_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "AUDIO_MEDIA_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "AUDIO_ALARM_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "AUDIO_NOTIFICATION_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "AUDIO_BLUETOOTH_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "WAKE_LOCK"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "MONITOR_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "MONITOR_HIGH_POWER_LOCATION"

    aput-object v3, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 361
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v6

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x3

    const-string v3, "android.permission.VIBRATE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "android.permission.WRITE_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "android.permission.READ_CALL_LOG"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "android.permission.WRITE_CALL_LOG"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v3, "android.permission.CALL_PHONE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "android.permission.WRITE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "android.permission.RECEIVE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "android.permission.RECEIVE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "android.permission.SEND_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "android.permission.WRITE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "android.permission.WRITE_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v3, "android.permission.WAKE_LOCK"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    aput-object v4, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 410
    new-array v1, v5, [I

    fill-array-data v1, :array_420

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 463
    new-array v1, v5, [Z

    fill-array-data v1, :array_47a

    sput-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 509
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 512
    sget-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v1, v1

    if-eq v1, v5, :cond_2cf

    .line 513
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToSwitch length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_2cf
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_2fb

    .line 517
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToString length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 520
    :cond_2fb
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_327

    .line 521
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpNames length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_327
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_353

    .line 525
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpPerms length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 528
    :cond_353
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v1, v1

    if-eq v1, v5, :cond_37f

    .line 529
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_37f
    sget-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_3ab

    .line 533
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDisableReset length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    :cond_3ab
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3ac
    if-ge v0, v5, :cond_3c4

    .line 537
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3c1

    .line 538
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :cond_3c1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3ac

    .line 541
    :cond_3c4
    return-void

    .line 211
    nop

    :array_3c6
    .array-data 4
        0x0
        0x0
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x14
        0xe
        0xf
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x0
        0x0
    .end array-data

    .line 410
    :array_420
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 463
    :array_47a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 741
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 742
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 743
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .registers 3
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1058
    const-class v1, Landroid/app/AppOpsManager;

    monitor-enter v1

    .line 1059
    :try_start_3
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    if-eqz v0, :cond_b

    .line 1060
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    .line 1067
    :goto_a
    return-object v0

    .line 1063
    :cond_b
    :try_start_b
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v0}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_1d
    .catchall {:try_start_b .. :try_end_16} :catchall_1a

    .line 1067
    :goto_16
    :try_start_16
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    monitor-exit v1

    goto :goto_a

    .line 1068
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw v0

    .line 1064
    :catch_1d
    move-exception v0

    goto :goto_16
.end method

.method public static opAllowsReset(I)Z
    .registers 2
    .param p0, "op"    # I

    .prologue
    .line 581
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static opToDefaultMode(I)I
    .registers 2
    .param p0, "op"    # I

    .prologue
    .line 573
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static opToName(I)Ljava/lang/String;
    .registers 3
    .param p0, "op"    # I

    .prologue
    .line 556
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string v0, "NONE"

    .line 557
    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_10

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_5

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .registers 2
    .param p0, "op"    # I

    .prologue
    .line 565
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .registers 2
    .param p0, "op"    # I

    .prologue
    .line 548
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method

.method private strOpToOp(Ljava/lang/String;)I
    .registers 6
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 853
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 854
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_23

    .line 855
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 857
    :cond_23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public checkOp(IILjava/lang/String;)I
    .registers 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 971
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 972
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 973
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 976
    .end local v0    # "mode":I
    :catch_13
    move-exception v1

    .line 978
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 877
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 988
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 991
    :goto_6
    return v0

    .line 989
    :catch_7
    move-exception v0

    .line 991
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 885
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1002
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_34

    .line 1003
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2b} :catch_2b

    .line 1006
    :catch_2b
    move-exception v0

    .line 1007
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Unable to verify package ownership"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1009
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_34
    return-void
.end method

.method public finishOp(I)V
    .registers 4
    .param p1, "op"    # I

    .prologue
    .line 1134
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1135
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .registers 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1127
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1130
    :goto_b
    return-void

    .line 1128
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 949
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 950
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 769
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 772
    :goto_6
    return-object v0

    .line 770
    :catch_7
    move-exception v0

    .line 772
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 3
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 756
    :goto_6
    return-object v0

    .line 754
    :catch_7
    move-exception v0

    .line 756
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public noteOp(I)I
    .registers 4
    .param p1, "op"    # I

    .prologue
    .line 1053
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .registers 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1028
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    .line 1029
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 1030
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 1033
    .end local v0    # "mode":I
    :catch_13
    move-exception v1

    .line 1035
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 903
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1045
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 1048
    :goto_6
    return v0

    .line 1046
    :catch_7
    move-exception v0

    .line 1048
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 911
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resetAllModes()V
    .registers 2

    .prologue
    .line 786
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->resetAllModes()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 789
    :goto_5
    return-void

    .line 787
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 778
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 781
    :goto_5
    return-void

    .line 779
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public startOp(I)I
    .registers 4
    .param p1, "op"    # I

    .prologue
    .line 1115
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .registers 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1090
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v0

    .line 1091
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 1092
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_19

    .line 1095
    .end local v0    # "mode":I
    :catch_19
    move-exception v1

    .line 1097
    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 931
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .registers 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1107
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 1110
    :goto_c
    return v0

    .line 1108
    :catch_d
    move-exception v0

    .line 1110
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 939
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 7
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 810
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 811
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    .line 812
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_17

    .line 813
    new-instance v0, Landroid/app/AppOpsManager$1;

    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 823
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1e

    .line 826
    :cond_17
    :try_start_17
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_21
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1e

    .line 829
    :goto_1c
    :try_start_1c
    monitor-exit v2

    .line 830
    return-void

    .line 829
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v1

    .line 827
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_21
    move-exception v1

    goto :goto_1c
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 799
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 800
    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 5
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 837
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 838
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 839
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_12

    .line 841
    :try_start_d
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_17
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 845
    :cond_12
    :goto_12
    :try_start_12
    monitor-exit v2

    .line 846
    return-void

    .line 845
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_14

    throw v1

    .line 842
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_17
    move-exception v1

    goto :goto_12
.end method
