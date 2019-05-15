.class public final Landroid/hardware/input/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManager$1;,
        Landroid/hardware/input/InputManager$InputDeviceVibrator;,
        Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;,
        Landroid/hardware/input/InputManager$InputDevicesChangedListener;,
        Landroid/hardware/input/InputManager$InputDeviceListener;
    }
.end annotation


# static fields
.field public static final ACTION_QUERY_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_POINTER_SPEED:I = 0x0

.field public static final INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I = 0x2

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field public static final MAX_POINTER_SPEED:I = 0x7

.field public static final META_DATA_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

.field public static final MIN_POINTER_SPEED:I = -0x7

.field private static final MSG_DEVICE_ADDED:I = 0x1

.field private static final MSG_DEVICE_CHANGED:I = 0x3

.field private static final MSG_DEVICE_REMOVED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "InputManager"

.field private static sInstance:Landroid/hardware/input/InputManager;


# instance fields
.field private final mIm:Landroid/hardware/input/IInputManager;

.field private final mInputDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

.field private final mInputDevicesLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/hardware/input/IInputManager;)V
    .registers 3
    .param p1, "im"    # Landroid/hardware/input/IInputManager;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    .line 174
    iput-object p1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    .line 175
    return-void
.end method

.method static synthetic access$100(Landroid/hardware/input/InputManager;[I)V
    .registers 2
    .param p0, "x0"    # Landroid/hardware/input/InputManager;
    .param p1, "x1"    # [I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->onInputDevicesChanged([I)V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/input/InputManager;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    return-object v0
.end method

.method private static containsDeviceId([II)Z
    .registers 4
    .param p0, "deviceIdAndGeneration"    # [I
    .param p1, "deviceId"    # I

    .prologue
    .line 726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 727
    aget v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 728
    const/4 v1, 0x1

    .line 731
    :goto_9
    return v1

    .line 726
    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 731
    :cond_d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .prologue
    .line 323
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 324
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_19

    .line 325
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    if-ne v2, p1, :cond_16

    .line 329
    .end local v0    # "i":I
    :goto_15
    return v0

    .line 324
    .restart local v0    # "i":I
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 329
    :cond_19
    const/4 v0, -0x1

    goto :goto_15
.end method

.method public static getInstance()Landroid/hardware/input/InputManager;
    .registers 4

    .prologue
    .line 185
    const-class v2, Landroid/hardware/input/InputManager;

    monitor-enter v2

    .line 186
    :try_start_3
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    if-nez v1, :cond_18

    .line 187
    const-string v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 188
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/hardware/input/InputManager;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    .line 190
    :cond_18
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    monitor-exit v2

    return-object v1

    .line 191
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private onInputDevicesChanged([I)V
    .registers 10
    .param p1, "deviceIdAndGeneration"    # [I

    .prologue
    .line 679
    iget-object v6, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 680
    :try_start_3
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "i":I
    :cond_9
    :goto_9
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_26

    .line 681
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 682
    .local v1, "deviceId":I
    invoke-static {p1, v1}, Landroid/hardware/input/InputManager;->containsDeviceId([II)Z

    move-result v5

    if-nez v5, :cond_9

    .line 686
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 687
    const/4 v5, 0x2

    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    goto :goto_9

    .line 714
    .end local v1    # "deviceId":I
    .end local v3    # "i":I
    :catchall_23
    move-exception v5

    monitor-exit v6
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v5

    .line 691
    .restart local v3    # "i":I
    :cond_26
    const/4 v3, 0x0

    :goto_27
    :try_start_27
    array-length v5, p1

    if-ge v3, v5, :cond_60

    .line 692
    aget v1, p1, v3

    .line 693
    .restart local v1    # "deviceId":I
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 694
    .local v4, "index":I
    if-ltz v4, :cond_55

    .line 695
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputDevice;

    .line 696
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_52

    .line 697
    add-int/lit8 v5, v3, 0x1

    aget v2, p1, v5

    .line 698
    .local v2, "generation":I
    invoke-virtual {v0}, Landroid/view/InputDevice;->getGeneration()I

    move-result v5

    if-eq v5, v2, :cond_52

    .line 702
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 703
    const/4 v5, 0x3

    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    .line 691
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v2    # "generation":I
    :cond_52
    :goto_52
    add-int/lit8 v3, v3, 0x2

    goto :goto_27

    .line 710
    :cond_55
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 711
    const/4 v5, 0x1

    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    goto :goto_52

    .line 714
    .end local v1    # "deviceId":I
    .end local v4    # "index":I
    :cond_60
    monitor-exit v6
    :try_end_61
    .catchall {:try_start_27 .. :try_end_61} :catchall_23

    .line 715
    return-void
.end method

.method private populateInputDevicesLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 648
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    if-nez v4, :cond_11

    .line 649
    new-instance v3, Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    invoke-direct {v3, p0, v6}, Landroid/hardware/input/InputManager$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$1;)V

    .line 651
    .local v3, "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :try_start_a
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4, v3}, Landroid/hardware/input/IInputManager;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_30

    .line 656
    iput-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    .line 659
    .end local v3    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :cond_11
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    if-nez v4, :cond_42

    .line 662
    :try_start_15
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4}, Landroid/hardware/input/IInputManager;->getInputDeviceIds()[I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_39

    move-result-object v2

    .line 667
    .local v2, "ids":[I
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    .line 668
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    array-length v4, v2

    if-ge v1, v4, :cond_42

    .line 669
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    aget v5, v2, v1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 652
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .restart local v3    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :catch_30
    move-exception v0

    .line 653
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not get register input device changed listener"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 663
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :catch_39
    move-exception v0

    .line 664
    .restart local v0    # "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not get input device ids."

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 672
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_42
    return-void
.end method

.method private sendMessageToInputDeviceListenersLocked(II)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "deviceId"    # I

    .prologue
    .line 718
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 719
    .local v2, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_1c

    .line 720
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    .line 721
    .local v1, "listener":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 723
    .end local v1    # "listener":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    :cond_1c
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 460
    if-nez p1, :cond_a

    .line 461
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    :cond_a
    if-nez p2, :cond_14

    .line 464
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_14
    :try_start_14
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->addKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 472
    :goto_19
    return-void

    .line 469
    :catch_1a
    move-exception v0

    .line 470
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not add keyboard layout for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public deviceHasKeys(I[I)[Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 599
    array-length v1, p2

    new-array v0, v1, [Z

    .line 601
    .local v0, "ret":[Z
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/16 v2, -0x100

    invoke-interface {v1, p1, v2, p2, v0}, Landroid/hardware/input/IInputManager;->hasKeys(II[I[Z)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    .line 605
    :goto_a
    return-object v0

    .line 602
    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public deviceHasKeys([I)[Z
    .registers 3
    .param p1, "keyCodes"    # [I

    .prologue
    .line 582
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    .line 384
    if-nez p1, :cond_a

    .line 385
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    .line 392
    :goto_10
    return-object v1

    .line 390
    :catch_11
    move-exception v0

    .line 391
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get current keyboard layout for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 8
    .param p1, "id"    # I

    .prologue
    .line 200
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 201
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 203
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 204
    .local v1, "index":I
    if-gez v1, :cond_11

    .line 205
    const/4 v2, 0x0

    monitor-exit v4

    .line 219
    :goto_10
    return-object v2

    .line 208
    :cond_11
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2a

    .line 209
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-nez v2, :cond_28

    .line 211
    :try_start_1b
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v3, p1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_2d
    .catchall {:try_start_1b .. :try_end_20} :catchall_2a

    move-result-object v2

    .line 215
    if-eqz v2, :cond_28

    .line 216
    :try_start_23
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 219
    :cond_28
    monitor-exit v4

    goto :goto_10

    .line 220
    .end local v1    # "index":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :catchall_2a
    move-exception v3

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2a

    throw v3

    .line 212
    .restart local v1    # "index":I
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    :catch_2d
    move-exception v0

    .line 213
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Could not get input device information."

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2a
.end method

.method public getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .registers 8
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 230
    if-nez p1, :cond_a

    .line 231
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "descriptor must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_a
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 235
    :try_start_d
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 237
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 238
    .local v3, "numDevices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    if-ge v0, v3, :cond_45

    .line 239
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    .line 240
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-nez v2, :cond_39

    .line 241
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_48

    move-result v1

    .line 243
    .local v1, "id":I
    :try_start_29
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4, v1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_4b
    .catchall {:try_start_29 .. :try_end_2e} :catchall_48

    move-result-object v2

    .line 247
    :goto_2f
    if-nez v2, :cond_34

    .line 238
    .end local v1    # "id":I
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 250
    .restart local v1    # "id":I
    :cond_34
    :try_start_34
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 252
    .end local v1    # "id":I
    :cond_39
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 253
    monitor-exit v5

    .line 256
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :goto_44
    return-object v2

    :cond_45
    const/4 v2, 0x0

    monitor-exit v5

    goto :goto_44

    .line 257
    .end local v0    # "i":I
    .end local v3    # "numDevices":I
    :catchall_48
    move-exception v4

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_48

    throw v4

    .line 244
    .restart local v0    # "i":I
    .restart local v1    # "id":I
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    .restart local v3    # "numDevices":I
    :catch_4b
    move-exception v4

    goto :goto_2f
.end method

.method public getInputDeviceIds()[I
    .registers 6

    .prologue
    .line 265
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 266
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 268
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 269
    .local v0, "count":I
    new-array v2, v0, [I

    .line 270
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1c

    .line 271
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 273
    :cond_1c
    monitor-exit v4

    return-object v2

    .line 274
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    :catchall_1e
    move-exception v3

    monitor-exit v4
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v3
.end method

.method public getInputDeviceVibrator(I)Landroid/os/Vibrator;
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 740
    new-instance v0, Landroid/hardware/input/InputManager$InputDeviceVibrator;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputManager$InputDeviceVibrator;-><init>(Landroid/hardware/input/InputManager;I)V

    return-object v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 5
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 363
    if-nez p1, :cond_a

    .line 364
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    .line 371
    :goto_10
    return-object v1

    .line 369
    :catch_11
    move-exception v0

    .line 370
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get keyboard layout information."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 4

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 349
    :goto_6
    return-object v1

    .line 347
    :catch_7
    move-exception v0

    .line 348
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get list of keyboard layout informations."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    goto :goto_6
.end method

.method public getKeyboardLayoutsForInputDevice(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    .line 434
    if-nez p1, :cond_a

    .line 435
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 439
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutsForInputDevice(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    .line 442
    :goto_10
    return-object v1

    .line 440
    :catch_11
    move-exception v0

    .line 441
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get keyboard layouts for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_10
.end method

.method public getPointerSpeed(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 518
    .local v0, "speed":I
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pointer_speed"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_b} :catch_d

    move-result v0

    .line 522
    :goto_c
    return v0

    .line 520
    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .prologue
    .line 631
    if-nez p1, :cond_a

    .line 632
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_a
    if-eqz p2, :cond_1a

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1a

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1a

    .line 637
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mode is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 641
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_21

    move-result v1

    .line 643
    :goto_20
    return v1

    .line 642
    :catch_21
    move-exception v0

    .line 643
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 288
    if-nez p1, :cond_a

    .line 289
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_a
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 293
    :try_start_d
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v0

    .line 294
    .local v0, "index":I
    if-gez v0, :cond_1d

    .line 295
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_1d
    monitor-exit v2

    .line 298
    return-void

    .line 297
    .end local v0    # "index":I
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public removeKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 488
    if-nez p1, :cond_a

    .line 489
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    :cond_a
    if-nez p2, :cond_14

    .line 492
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_14
    :try_start_14
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->removeKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 500
    :goto_19
    return-void

    .line 497
    :catch_1a
    move-exception v0

    .line 498
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not remove keyboard layout for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 410
    if-nez p1, :cond_a

    .line 411
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :cond_a
    if-nez p2, :cond_14

    .line 414
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_14
    :try_start_14
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->setCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 423
    :goto_19
    return-void

    .line 420
    :catch_1a
    move-exception v0

    .line 421
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not set current keyboard layout for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public setPointerSpeed(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "speed"    # I

    .prologue
    .line 538
    const/4 v0, -0x7

    if-lt p2, v0, :cond_6

    const/4 v0, 0x7

    if-le p2, v0, :cond_f

    .line 539
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pointer_speed"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    return-void
.end method

.method public tryPointerSpeed(I)V
    .registers 5
    .param p1, "speed"    # I

    .prologue
    .line 558
    const/4 v1, -0x7

    if-lt p1, v1, :cond_6

    const/4 v1, 0x7

    if-le p1, v1, :cond_f

    .line 559
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "speed out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->tryPointerSpeed(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 567
    :goto_14
    return-void

    .line 564
    :catch_15
    move-exception v0

    .line 565
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not set temporary pointer speed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .prologue
    .line 308
    if-nez p1, :cond_a

    .line 309
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_a
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 313
    :try_start_d
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    .line 314
    .local v1, "index":I
    if-ltz v1, :cond_24

    .line 315
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    .line 316
    .local v0, "d":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 317
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 319
    .end local v0    # "d":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    :cond_24
    monitor-exit v3

    .line 320
    return-void

    .line 319
    .end local v1    # "index":I
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw v2
.end method