.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$LeScanCallback;,
        Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;,
        Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;
    }
.end annotation


# static fields
.field public static final ACTION_BLUETOOTH_ADVERTISING_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.ADVERTISING_STARTED"

.field public static final ACTION_BLUETOOTH_ADVERTISING_STOPPED:Ljava/lang/String; = "android.bluetooth.adapter.action.ADVERTISING_STOPPED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field private static final ADDRESS_LENGTH:I = 0x11

.field public static final ADVERTISE_CALLBACK_SUCCESS:I = 0x0

.field public static final BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"

.field private static final DBG:Z = true

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONNECTION_STATE"

.field public static final EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final EXTRA_PREVIOUS_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

.field public static final EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final STATE_ADVERTISE_FORCE_STOPPING:I = 0x4

.field public static final STATE_ADVERTISE_STARTED:I = 0x1

.field public static final STATE_ADVERTISE_STARTING:I = 0x0

.field public static final STATE_ADVERTISE_STOPPED:I = 0x3

.field public static final STATE_ADVERTISE_STOPPING:I = 0x2

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static final VDBG:Z

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;


# instance fields
.field private mAdvertisingGattCallback:Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

.field private mBluetoothAdvScanData:Landroid/bluetooth/BluetoothAdvScanData;

.field private final mHandler:Landroid/os/Handler;

.field private final mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private final mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/bluetooth/IBluetooth;


# direct methods
.method constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .registers 5
    .param p1, "managerService"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothAdvScanData:Landroid/bluetooth/BluetoothAdvScanData;

    .line 406
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    .line 1433
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$2;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1605
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    .line 434
    if-nez p1, :cond_25

    .line 435
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bluetooth manager service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_25
    :try_start_25
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothManager;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2d} :catch_42

    .line 440
    :goto_2d
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    .line 441
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    .line 442
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mHandler:Landroid/os/Handler;

    .line 443
    return-void

    .line 439
    :catch_42
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    return-object v0
.end method

.method static synthetic access$302(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "x1"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 83
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdvScanData;)Landroid/bluetooth/BluetoothAdvScanData;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothAdvScanData;

    .prologue
    .line 83
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothAdvScanData:Landroid/bluetooth/BluetoothAdvScanData;

    return-object p1
.end method

.method static synthetic access$602(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    .prologue
    .line 83
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mAdvertisingGattCallback:Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    return-object p1
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .registers 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x11

    const/4 v2, 0x0

    .line 1578
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_c

    .line 1598
    :cond_b
    :goto_b
    return v2

    .line 1581
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v4, :cond_31

    .line 1582
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1583
    .local v0, "c":C
    rem-int/lit8 v3, v1, 0x3

    packed-switch v3, :pswitch_data_34

    .line 1581
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1586
    :pswitch_1b
    const/16 v3, 0x30

    if-lt v0, v3, :cond_23

    const/16 v3, 0x39

    if-le v0, v3, :cond_18

    :cond_23
    const/16 v3, 0x41

    if-lt v0, v3, :cond_b

    const/16 v3, 0x46

    if-gt v0, v3, :cond_b

    goto :goto_18

    .line 1592
    :pswitch_2c
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_b

    goto :goto_18

    .line 1598
    .end local v0    # "c":C
    :cond_31
    const/4 v2, 0x1

    goto :goto_b

    .line 1583
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_2c
    .end packed-switch
.end method

.method private createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1232
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x1

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-direct {v1, v2, p3, p4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;)V

    .line 1234
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    .line 1235
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1236
    .local v0, "errno":I
    if-eqz v0, :cond_2f

    .line 1240
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1242
    :cond_2f
    return-object v1
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 5

    .prologue
    .line 417
    const-class v3, Landroid/bluetooth/BluetoothAdapter;

    monitor-enter v3

    :try_start_3
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1a

    .line 418
    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 419
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1e

    .line 420
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 421
    .local v1, "managerService":Landroid/bluetooth/IBluetoothManager;
    new-instance v2, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v1}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 426
    .end local v1    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_1a
    :goto_1a
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_26

    monitor-exit v3

    return-object v2

    .line 423
    :cond_1e
    :try_start_1e
    const-string v2, "BluetoothAdapter"

    const-string v4, "Bluetooth binder is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_1a

    .line 417
    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1297
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1299
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1300
    .local v0, "errno":I
    if-gez v0, :cond_10

    .line 1305
    :cond_10
    return-object v1
.end method

.method private toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    .registers 4
    .param p1, "devices"    # [Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1555
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1556
    .local v0, "deviceSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cancelDiscovery()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 976
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 982
    :goto_9
    return v1

    .line 978
    :cond_a
    :try_start_a
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_1f

    .line 979
    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->cancelDiscovery()Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_9

    .line 980
    :cond_1a
    monitor-exit v3

    goto :goto_9

    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 981
    :catch_1f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)Z
    .registers 4
    .param p1, "on"    # Z
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .prologue
    const/4 v0, 0x0

    .line 1517
    if-nez p2, :cond_3

    .line 1527
    :cond_3
    return v0
.end method

.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 11
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 1395
    if-nez p2, :cond_3

    .line 1431
    :goto_2
    return-void

    .line 1397
    :cond_3
    packed-switch p1, :pswitch_data_40

    :pswitch_6
    goto :goto_2

    :pswitch_7
    move-object v3, p2

    .line 1399
    check-cast v3, Landroid/bluetooth/BluetoothHeadset;

    .line 1400
    .local v3, "headset":Landroid/bluetooth/BluetoothHeadset;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->close()V

    goto :goto_2

    .end local v3    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :pswitch_e
    move-object v0, p2

    .line 1403
    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    .line 1404
    .local v0, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->close()V

    goto :goto_2

    .end local v0    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :pswitch_15
    move-object v5, p2

    .line 1407
    check-cast v5, Landroid/bluetooth/BluetoothInputDevice;

    .line 1408
    .local v5, "iDev":Landroid/bluetooth/BluetoothInputDevice;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothInputDevice;->close()V

    goto :goto_2

    .end local v5    # "iDev":Landroid/bluetooth/BluetoothInputDevice;
    :pswitch_1c
    move-object v7, p2

    .line 1411
    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .line 1412
    .local v7, "pan":Landroid/bluetooth/BluetoothPan;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->close()V

    goto :goto_2

    .end local v7    # "pan":Landroid/bluetooth/BluetoothPan;
    :pswitch_23
    move-object v4, p2

    .line 1415
    check-cast v4, Landroid/bluetooth/BluetoothHealth;

    .line 1416
    .local v4, "health":Landroid/bluetooth/BluetoothHealth;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHealth;->close()V

    goto :goto_2

    .end local v4    # "health":Landroid/bluetooth/BluetoothHealth;
    :pswitch_2a
    move-object v1, p2

    .line 1419
    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    .line 1420
    .local v1, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_2

    .end local v1    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :pswitch_31
    move-object v2, p2

    .line 1423
    check-cast v2, Landroid/bluetooth/BluetoothGattServer;

    .line 1424
    .local v2, "gattServer":Landroid/bluetooth/BluetoothGattServer;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattServer;->close()V

    goto :goto_2

    .end local v2    # "gattServer":Landroid/bluetooth/BluetoothGattServer;
    :pswitch_38
    move-object v6, p2

    .line 1427
    check-cast v6, Landroid/bluetooth/BluetoothMap;

    .line 1428
    .local v6, "map":Landroid/bluetooth/BluetoothMap;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothMap;->close()V

    goto :goto_2

    .line 1397
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_7
        :pswitch_e
        :pswitch_23
        :pswitch_15
        :pswitch_1c
        :pswitch_6
        :pswitch_2a
        :pswitch_31
        :pswitch_38
    .end packed-switch
.end method

.method public configHciSnoopLog(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 776
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_15

    .line 777
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z

    move-result v1

    monitor-exit v2

    .line 780
    :goto_e
    return v1

    .line 778
    :cond_f
    monitor-exit v2

    .line 780
    :goto_10
    const/4 v1, 0x0

    goto :goto_e

    .line 778
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    :try_start_14
    throw v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_15} :catch_15

    .line 779
    :catch_15
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public disable()Z
    .registers 4

    .prologue
    .line 713
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    move-result v1

    .line 715
    :goto_7
    return v1

    .line 714
    :catch_8
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public disable(Z)Z
    .registers 5
    .param p1, "persist"    # Z

    .prologue
    .line 731
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 733
    :goto_6
    return v1

    .line 732
    :catch_7
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enable()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 677
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_f

    .line 678
    const-string v2, "BluetoothAdapter"

    const-string v3, "enable(): BT is already enabled..!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :goto_e
    return v1

    .line 682
    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->enable()Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result v1

    goto :goto_e

    .line 683
    :catch_16
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public enableNoAutoConnect()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1476
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_f

    .line 1477
    const-string v2, "BluetoothAdapter"

    const-string v3, "enableNoAutoConnect(): BT is already enabled..!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :goto_e
    return v1

    .line 1481
    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->enableNoAutoConnect()Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result v1

    goto :goto_e

    .line 1482
    :catch_16
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1483
    const/4 v1, 0x0

    goto :goto_e
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1561
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_b
    .catchall {:try_start_0 .. :try_end_7} :catchall_17

    .line 1565
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1567
    :goto_a
    return-void

    .line 1562
    :catch_b
    move-exception v0

    .line 1563
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_c
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 1565
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_a

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_17
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 745
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getAddress()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 747
    :goto_6
    return-object v1

    .line 746
    :catch_7
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAdvScanData()Landroid/bluetooth/BluetoothAdvScanData;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 487
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    .line 488
    .local v1, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v1, :cond_11

    .line 490
    const-string v3, "BluetoothAdapter"

    const-string v4, "failed to start, iGatt null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :goto_10
    return-object v2

    .line 493
    .restart local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_11
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothAdvScanData:Landroid/bluetooth/BluetoothAdvScanData;

    if-nez v3, :cond_1d

    .line 494
    new-instance v3, Landroid/bluetooth/BluetoothAdvScanData;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroid/bluetooth/BluetoothAdvScanData;-><init>(Landroid/bluetooth/IBluetoothGatt;I)V

    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothAdvScanData:Landroid/bluetooth/BluetoothAdvScanData;

    .line 496
    :cond_1d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothAdvScanData:Landroid/bluetooth/BluetoothAdvScanData;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_10

    .line 497
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_20
    move-exception v0

    .line 498
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get advScanData, error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    .registers 2

    .prologue
    .line 1602
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .registers 5
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 1608
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v1

    .line 1609
    if-nez p1, :cond_10

    .line 1610
    :try_start_5
    const-string v0, "BluetoothAdapter"

    const-string v2, "getBluetoothService() called with no BluetoothManagerCallback"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_c
    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1e

    .line 1615
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0

    .line 1611
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1612
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1614
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1043
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_10

    .line 1044
    new-array v1, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v1

    .line 1052
    :goto_f
    return-object v1

    .line 1047
    :cond_10
    :try_start_10
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_26

    .line 1048
    :try_start_13
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v2

    goto :goto_f

    .line 1049
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_23

    :try_start_25
    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_26} :catch_26

    .line 1051
    :catch_26
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    const/4 v1, 0x0

    goto :goto_f

    .line 1049
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_23

    .line 1050
    const/4 v1, 0x0

    :try_start_32
    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_26

    move-result-object v1

    goto :goto_f
.end method

.method public getConnectionState()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1069
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 1075
    :goto_9
    return v1

    .line 1071
    :cond_a
    :try_start_a
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_1f

    .line 1072
    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getAdapterConnectionState()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_9

    .line 1073
    :cond_1a
    monitor-exit v3

    goto :goto_9

    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 1074
    :catch_1f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "getConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getDiscoverableTimeout()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 899
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 905
    :goto_9
    return v1

    .line 901
    :cond_a
    :try_start_a
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_1f

    .line 902
    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_9

    .line 903
    :cond_1a
    monitor-exit v3

    goto :goto_9

    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 904
    :catch_1f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 759
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getName()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 761
    :goto_6
    return-object v1

    .line 760
    :catch_7
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getProfileConnectionState(I)I
    .registers 6
    .param p1, "profile"    # I

    .prologue
    const/4 v1, 0x0

    .line 1094
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 1102
    :goto_9
    return v1

    .line 1096
    :cond_a
    :try_start_a
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_1f

    .line 1097
    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(I)I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_9

    .line 1098
    :cond_1a
    monitor-exit v3

    goto :goto_9

    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 1099
    :catch_1f
    move-exception v0

    .line 1100
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "getProfileConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1358
    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    move v6, v7

    .line 1379
    :goto_7
    return v6

    .line 1360
    :cond_8
    if-ne p3, v6, :cond_10

    .line 1361
    new-instance v1, Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1362
    .local v1, "headset":Landroid/bluetooth/BluetoothHeadset;
    goto :goto_7

    .line 1363
    .end local v1    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :cond_10
    const/4 v8, 0x2

    if-ne p3, v8, :cond_19

    .line 1364
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1365
    .local v0, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    goto :goto_7

    .line 1366
    .end local v0    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :cond_19
    const/4 v8, 0x4

    if-ne p3, v8, :cond_22

    .line 1367
    new-instance v3, Landroid/bluetooth/BluetoothInputDevice;

    invoke-direct {v3, p1, p2}, Landroid/bluetooth/BluetoothInputDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1368
    .local v3, "iDev":Landroid/bluetooth/BluetoothInputDevice;
    goto :goto_7

    .line 1369
    .end local v3    # "iDev":Landroid/bluetooth/BluetoothInputDevice;
    :cond_22
    const/4 v8, 0x5

    if-ne p3, v8, :cond_2b

    .line 1370
    new-instance v5, Landroid/bluetooth/BluetoothPan;

    invoke-direct {v5, p1, p2}, Landroid/bluetooth/BluetoothPan;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1371
    .local v5, "pan":Landroid/bluetooth/BluetoothPan;
    goto :goto_7

    .line 1372
    .end local v5    # "pan":Landroid/bluetooth/BluetoothPan;
    :cond_2b
    const/4 v8, 0x3

    if-ne p3, v8, :cond_34

    .line 1373
    new-instance v2, Landroid/bluetooth/BluetoothHealth;

    invoke-direct {v2, p1, p2}, Landroid/bluetooth/BluetoothHealth;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1374
    .local v2, "health":Landroid/bluetooth/BluetoothHealth;
    goto :goto_7

    .line 1375
    .end local v2    # "health":Landroid/bluetooth/BluetoothHealth;
    :cond_34
    const/16 v8, 0x9

    if-ne p3, v8, :cond_3e

    .line 1376
    new-instance v4, Landroid/bluetooth/BluetoothMap;

    invoke-direct {v4, p1, p2}, Landroid/bluetooth/BluetoothMap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1377
    .local v4, "map":Landroid/bluetooth/BluetoothMap;
    goto :goto_7

    .end local v4    # "map":Landroid/bluetooth/BluetoothMap;
    :cond_3e
    move v6, v7

    .line 1379
    goto :goto_7
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 458
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;
    .registers 12
    .param p1, "address"    # [B

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 473
    if-eqz p1, :cond_b

    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_13

    .line 474
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bluetooth address must have 6 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_13
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p1, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    aget-byte v4, p1, v6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    aget-byte v4, p1, v7

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v7

    aget-byte v4, p1, v8

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v8

    aget-byte v4, p1, v9

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x5

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getScanMode()I
    .registers 5

    .prologue
    const/16 v1, 0x14

    .line 843
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_b

    .line 849
    :goto_a
    return v1

    .line 845
    :cond_b
    :try_start_b
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_20

    .line 846
    :try_start_e
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getScanMode()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_a

    .line 847
    :cond_1b
    monitor-exit v3

    goto :goto_a

    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v2
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_20} :catch_20

    .line 848
    :catch_20
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public getState()I
    .registers 6

    .prologue
    .line 634
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_38

    .line 635
    :try_start_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_f

    .line 637
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    .line 639
    .local v1, "state":I
    monitor-exit v3

    .line 646
    .end local v1    # "state":I
    :goto_e
    return v1

    .line 643
    :cond_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_35

    .line 645
    :goto_10
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": getState() :  mService = null. Returning STATE_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/16 v1, 0xa

    goto :goto_e

    .line 643
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v2
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_38} :catch_38

    .line 644
    :catch_38
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 792
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 798
    :goto_9
    return-object v1

    .line 794
    :cond_a
    :try_start_a
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_1f

    .line 795
    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    monitor-exit v3

    move-object v1, v2

    goto :goto_9

    .line 796
    :cond_1a
    monitor-exit v3

    goto :goto_9

    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 797
    :catch_1f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isAdvertising()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1021
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_a

    .line 1028
    :goto_9
    return v2

    .line 1023
    :cond_a
    :try_start_a
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    .line 1024
    .local v1, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothGatt;->isAdvertising()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    move-result v2

    goto :goto_9

    .line 1025
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_15
    move-exception v0

    .line 1026
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isDiscovering()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1005
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 1011
    :goto_9
    return v1

    .line 1007
    :cond_a
    :try_start_a
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_1f

    .line 1008
    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->isDiscovering()Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_9

    .line 1009
    :cond_1a
    monitor-exit v3

    goto :goto_9

    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 1010
    :catch_1f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 614
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_15

    .line 615
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isEnabled()Z

    move-result v1

    monitor-exit v2

    .line 618
    :goto_e
    return v1

    .line 616
    :cond_f
    monitor-exit v2

    .line 618
    :goto_10
    const/4 v1, 0x0

    goto :goto_e

    .line 616
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    :try_start_14
    throw v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_15} :catch_15

    .line 617
    :catch_15
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public listenUsingEncryptedRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 7
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1276
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1278
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1279
    .local v0, "errno":I
    if-gez v0, :cond_28

    .line 1283
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1285
    :cond_28
    return-object v1
.end method

.method public listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1225
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 7
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1254
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1256
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1257
    .local v0, "errno":I
    if-eqz v0, :cond_28

    .line 1261
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1263
    :cond_28
    return-object v1
.end method

.method public listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1187
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .registers 7
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1120
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v1, v2, v2, v2, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1122
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1123
    .local v0, "errno":I
    if-eqz v0, :cond_27

    .line 1127
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1129
    :cond_27
    return-object v1
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1156
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public readOutOfBandData()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1317
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_9

    .line 1338
    :cond_9
    return-object v2
.end method

.method removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 1619
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v1

    .line 1620
    :try_start_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1621
    monitor-exit v1

    .line 1622
    return-void

    .line 1621
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setDiscoverableTimeout(I)V
    .registers 5
    .param p1, "timeout"    # I

    .prologue
    .line 910
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_9

    .line 916
    :goto_8
    return-void

    .line 912
    :cond_9
    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_1a

    .line 913
    :try_start_c
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(I)Z

    .line 914
    :cond_15
    monitor-exit v2

    goto :goto_8

    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    :try_start_19
    throw v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1a} :catch_1a

    .line 915
    :catch_1a
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public setName(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 817
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 823
    :goto_9
    return v1

    .line 819
    :cond_a
    :try_start_a
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_1f

    .line 820
    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_9

    .line 821
    :cond_1a
    monitor-exit v3

    goto :goto_9

    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 822
    :catch_1f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setScanMode(I)Z
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 892
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    .line 894
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getDiscoverableTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    goto :goto_9
.end method

.method public setScanMode(II)Z
    .registers 7
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 881
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 887
    :goto_9
    return v1

    .line 883
    :cond_a
    :try_start_a
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_1f

    .line 884
    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetooth;->setScanMode(II)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_9

    .line 885
    :cond_1a
    monitor-exit v3

    goto :goto_9

    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 886
    :catch_1f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public startAdvertising(Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;)Z
    .registers 10
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 530
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_b

    .line 568
    :cond_a
    :goto_a
    return v4

    .line 532
    :cond_b
    :try_start_b
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v6}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    .line 533
    .local v1, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-eqz v1, :cond_a

    .line 538
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isAdvertising()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 540
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mAdvertisingGattCallback:Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    if-eqz v6, :cond_26

    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mAdvertisingGattCallback:Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    # getter for: Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    invoke-static {v6}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->access$000(Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_37

    .line 541
    :cond_26
    const-string v5, "BluetoothAdapter"

    const-string v6, "failed to restart advertising, invalid callback"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2d} :catch_2e

    goto :goto_a

    .line 566
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_2e
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "BluetoothAdapter"

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 544
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_37
    :try_start_37
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mAdvertisingGattCallback:Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    # getter for: Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    invoke-static {v6}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->access$000(Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/bluetooth/IBluetoothGatt;->startAdvertising(I)V

    .line 546
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/bluetooth/BluetoothAdapter$1;

    invoke-direct {v7, p0, p1}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v4, v5

    .line 553
    goto :goto_a

    .line 555
    :cond_4c
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 556
    .local v2, "uuid":Ljava/util/UUID;
    new-instance v3, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, p0, v6, v7, p1}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;)V

    .line 558
    .local v3, "wrapper":Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    new-instance v6, Landroid/os/ParcelUuid;

    invoke-direct {v6, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v6, v3}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 559
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->advertiseStarted()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 562
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_68} :catch_2e

    .line 563
    :try_start_68
    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAdvertisingGattCallback:Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    .line 564
    monitor-exit v6

    move v4, v5

    .line 565
    goto :goto_a

    .line 564
    :catchall_6d
    move-exception v5

    monitor-exit v6
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v5
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_70} :catch_2e
.end method

.method public startDiscovery()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 949
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    .line 955
    :goto_9
    return v1

    .line 951
    :cond_a
    :try_start_a
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_1f

    .line 952
    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->startDiscovery()Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_9

    .line 953
    :cond_1a
    monitor-exit v3

    goto :goto_9

    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 954
    :catch_1f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 1656
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    return v0
.end method

.method public startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .registers 11
    .param p1, "serviceUuids"    # [Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    const/4 v4, 0x0

    .line 1673
    const-string v5, "BluetoothAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startLeScan(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    if-nez p2, :cond_25

    .line 1676
    const-string v5, "BluetoothAdapter"

    const-string/jumbo v6, "startLeScan: null callback"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :goto_24
    return v4

    .line 1680
    :cond_25
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v5

    .line 1681
    :try_start_28
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1682
    const-string v6, "BluetoothAdapter"

    const-string v7, "LE Scan has already started"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    monitor-exit v5

    goto :goto_24

    .line 1703
    :catchall_39
    move-exception v4

    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_39

    throw v4

    .line 1687
    :cond_3c
    :try_start_3c
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v6}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_65
    .catchall {:try_start_3c .. :try_end_41} :catchall_39

    move-result-object v1

    .line 1688
    .local v1, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v1, :cond_46

    .line 1690
    :try_start_44
    monitor-exit v5
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_39

    goto :goto_24

    .line 1693
    :cond_46
    :try_start_46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 1694
    .local v2, "uuid":Ljava/util/UUID;
    new-instance v3, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    invoke-direct {v3, p0, p2, p1}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;[Ljava/util/UUID;)V

    .line 1695
    .local v3, "wrapper":Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    new-instance v6, Landroid/os/ParcelUuid;

    invoke-direct {v6, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v6, v3}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 1696
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->scanStarted()Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 1697
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v6, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_62} :catch_65
    .catchall {:try_start_46 .. :try_end_62} :catchall_39

    .line 1698
    const/4 v4, 0x1

    :try_start_63
    monitor-exit v5

    goto :goto_24

    .line 1700
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v3    # "wrapper":Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    :catch_65
    move-exception v0

    .line 1701
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "BluetoothAdapter"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1703
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6d
    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_39

    goto :goto_24
.end method

.method public stopAdvertising(Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;)Z
    .registers 7
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    .prologue
    const/4 v2, 0x0

    .line 581
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    .line 582
    .local v1, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v1, :cond_a

    .line 599
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_9
    :goto_9
    return v2

    .line 586
    .restart local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_a
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAdvertisingGattCallback:Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    if-eqz v3, :cond_9

    .line 591
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAdvertisingGattCallback:Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    # getter for: Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->access$100(Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    move-result-object v3

    if-eq p1, v3, :cond_27

    .line 592
    const-string v3, "BluetoothAdapter"

    const-string v4, "must use the same callback for star/stop advertising"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1d} :catch_1e

    goto :goto_9

    .line 597
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_1e
    move-exception v0

    .line 598
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 595
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_27
    :try_start_27
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAdvertisingGattCallback:Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->stopAdvertising()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_1e

    .line 596
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 1716
    const-string v1, "BluetoothAdapter"

    const-string/jumbo v2, "stopLeScan()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v2

    .line 1719
    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    .line 1720
    .local v0, "wrapper":Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    if-nez v0, :cond_17

    monitor-exit v2

    .line 1723
    :goto_16
    return-void

    .line 1721
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    .line 1722
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->stopLeScan()V

    goto :goto_16

    .line 1721
    .end local v0    # "wrapper":Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method
