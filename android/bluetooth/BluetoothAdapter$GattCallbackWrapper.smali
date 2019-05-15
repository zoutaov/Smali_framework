.class Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
.super Landroid/bluetooth/IBluetoothGattCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GattCallbackWrapper"
.end annotation


# static fields
.field private static final LE_CALLBACK_REG_TIMEOUT:I = 0x7d0

.field private static final LE_CALLBACK_REG_WAIT_COUNT:I = 0x5


# instance fields
.field private final mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

.field private mBluetoothAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mLeHandle:I

.field private final mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mScanFilter:[Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;[Ljava/util/UUID;)V
    .registers 5
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "leScanCb"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .param p3, "uuid"    # [Ljava/util/UUID;

    .prologue
    .line 1743
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    .line 1744
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    .line 1745
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 1746
    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    .line 1747
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 1748
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    .line 1749
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;)V
    .registers 6
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "leScanCb"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .param p3, "uuid"    # [Ljava/util/UUID;
    .param p4, "callback"    # Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    .prologue
    .line 1752
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    .line 1753
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    .line 1754
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 1755
    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    .line 1756
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 1757
    iput-object p4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    .line 1758
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)I
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    .prologue
    .line 1728
    iget v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    return v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    .prologue
    .line 1728
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    return-object v0
.end method

.method private waitForRegisteration(I)Z
    .registers 9
    .param p1, "maxWaitCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 1770
    const/4 v2, 0x0

    .line 1771
    .local v2, "started":Z
    monitor-enter p0

    .line 1772
    :try_start_3
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    monitor-exit p0

    .line 1785
    :goto_9
    return v3

    .line 1773
    :cond_a
    const/4 v0, 0x0

    .line 1775
    .local v0, "count":I
    :goto_b
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_33

    if-nez v4, :cond_36

    if-ge v0, p1, :cond_36

    .line 1777
    const-wide/16 v4, 0x7d0

    :try_start_13
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_19
    .catchall {:try_start_13 .. :try_end_16} :catchall_33

    .line 1781
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1778
    :catch_19
    move-exception v1

    .line 1779
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1a
    const-string v4, "BluetoothAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback reg wait interrupted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1784
    .end local v0    # "count":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_33
    move-exception v3

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_33

    throw v3

    .line 1783
    .restart local v0    # "count":I
    :cond_36
    :try_start_36
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-lez v4, :cond_3e

    const/4 v2, 0x1

    .line 1784
    :goto_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_33

    move v3, v2

    .line 1785
    goto :goto_9

    :cond_3e
    move v2, v3

    .line 1783
    goto :goto_3b
.end method


# virtual methods
.method public advertiseStarted()Z
    .registers 2

    .prologue
    .line 1766
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->waitForRegisteration(I)Z

    move-result v0

    return v0
.end method

.method public onAdvertiseStateChange(II)V
    .registers 9
    .param p1, "advertiseState"    # I
    .param p2, "status"    # I

    .prologue
    .line 1990
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "on advertise call back, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2c

    .line 1992
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    invoke-interface {v3, p2}, Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;->onAdvertiseStart(I)V

    .line 2016
    :goto_2b
    return-void

    .line 1994
    :cond_2c
    monitor-enter p0

    .line 1995
    if-nez p2, :cond_68

    .line 1996
    :try_start_2f
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_89

    .line 1997
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_8c

    .line 1999
    :try_start_39
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    .line 2001
    .local v2, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregistering client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 2004
    const/4 v3, -0x1

    iput v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 2005
    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothAdapter;->mAdvertisingGattCallback:Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->access$602(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_68} :catch_6f
    .catchall {:try_start_39 .. :try_end_68} :catchall_89

    .line 2013
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_68
    :goto_68
    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_89

    .line 2014
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    invoke-interface {v3, p2}, Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;->onAdvertiseStop(I)V

    goto :goto_2b

    .line 2006
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_6f
    move-exception v1

    .line 2007
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_70
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unregister client"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 2013
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_89
    move-exception v3

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_70 .. :try_end_8b} :catchall_89

    throw v3

    .line 2010
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_8c
    :try_start_8c
    const-string v3, "BluetoothAdapter"

    const-string v4, "cannot unregister client, BluetoothAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_89

    goto :goto_68
.end method

.method public onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "value"    # [B

    .prologue
    .line 1952
    return-void
.end method

.method public onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 1958
    return-void
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;

    .prologue
    .line 1893
    return-void
.end method

.method public onClientRegistered(II)V
    .registers 12
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    const/4 v8, -0x1

    .line 1836
    const-string v5, "BluetoothAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onClientRegistered() - status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " clientIf="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    monitor-enter p0

    .line 1839
    :try_start_25
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-ne v5, v8, :cond_31

    .line 1840
    const-string v5, "BluetoothAdapter"

    const-string/jumbo v6, "onClientRegistered LE scan canceled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_31
    if-nez p1, :cond_dc

    .line 1844
    iput p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_89

    .line 1845
    const/4 v3, 0x0

    .line 1847
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :try_start_36
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    .line 1848
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_aa

    .line 1849
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 1850
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    if-eqz v5, :cond_61

    .line 1851
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v3, v5}, Landroid/bluetooth/IBluetoothGatt;->startAdvertising(I)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_51} :catch_6c
    .catchall {:try_start_36 .. :try_end_51} :catchall_89

    .line 1871
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_51
    :try_start_51
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_89

    if-ne v5, v8, :cond_5c

    .line 1873
    if-eqz v3, :cond_5c

    .line 1875
    :try_start_57
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v3, v5}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_b6
    .catchall {:try_start_57 .. :try_end_5c} :catchall_89

    .line 1886
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1887
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_89

    .line 1888
    return-void

    .line 1853
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_61
    :try_start_61
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    if-nez v5, :cond_8c

    .line 1854
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/bluetooth/IBluetoothGatt;->startScan(IZ)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6b} :catch_6c
    .catchall {:try_start_61 .. :try_end_6b} :catchall_89

    goto :goto_51

    .line 1867
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_6c
    move-exception v1

    .line 1868
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6d
    const-string v5, "BluetoothAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to start le scan: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const/4 v5, -0x1

    iput v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    goto :goto_51

    .line 1887
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catchall_89
    move-exception v5

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_6d .. :try_end_8b} :catchall_89

    throw v5

    .line 1856
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_8c
    :try_start_8c
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    array-length v5, v5

    new-array v4, v5, [Landroid/os/ParcelUuid;

    .line 1857
    .local v4, "uuids":[Landroid/os/ParcelUuid;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_92
    array-length v5, v4

    if-eq v2, v5, :cond_a3

    .line 1858
    new-instance v5, Landroid/os/ParcelUuid;

    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v5, v4, v2

    .line 1857
    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    .line 1860
    :cond_a3
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6, v4}, Landroid/bluetooth/IBluetoothGatt;->startScanWithUuids(IZ[Landroid/os/ParcelUuid;)V

    goto :goto_51

    .line 1864
    .end local v2    # "i":I
    .end local v4    # "uuids":[Landroid/os/ParcelUuid;
    :cond_aa
    const-string v5, "BluetoothAdapter"

    const-string/jumbo v6, "onClientRegistered, BluetoothAdapter null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    const/4 v5, -0x1

    iput v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_b5} :catch_6c
    .catchall {:try_start_8c .. :try_end_b5} :catchall_89

    goto :goto_51

    .line 1876
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_b6
    move-exception v1

    .line 1877
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_b7
    const-string v5, "BluetoothAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to unregister callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 1884
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_dc
    const/4 v5, -0x1

    iput v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_df
    .catchall {:try_start_b7 .. :try_end_df} :catchall_89

    goto/16 :goto_5c
.end method

.method public onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;
    .param p10, "value"    # [B

    .prologue
    .line 1972
    return-void
.end method

.method public onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 1979
    return-void
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 1983
    return-void
.end method

.method public onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "charProps"    # I

    .prologue
    .line 1935
    return-void
.end method

.method public onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "descInstId"    # I
    .param p8, "descUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 1942
    return-void
.end method

.method public onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "inclSrvcType"    # I
    .param p6, "inclSrvcInstId"    # I
    .param p7, "inclSrvcUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 1928
    return-void
.end method

.method public onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 1921
    return-void
.end method

.method public onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "value"    # [B

    .prologue
    .line 1965
    return-void
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 1987
    return-void
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "advData"    # [B

    .prologue
    .line 1903
    monitor-enter p0

    .line 1904
    :try_start_1
    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v2, :cond_7

    monitor-exit p0

    .line 1916
    :goto_6
    return-void

    .line 1905
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_35

    .line 1907
    :try_start_8
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    .line 1908
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_38

    .line 1909
    const-string v2, "BluetoothAdapter"

    const-string/jumbo v3, "onScanResult, BluetoothAdapter null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    goto :goto_6

    .line 1913
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_1b
    move-exception v1

    .line 1914
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1905
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2

    .line 1912
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_38
    :try_start_38
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_41} :catch_1b

    goto :goto_6
.end method

.method public onSearchComplete(Ljava/lang/String;I)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 1946
    return-void
.end method

.method public scanStarted()Z
    .registers 2

    .prologue
    .line 1761
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->waitForRegisteration(I)Z

    move-result v0

    return v0
.end method

.method public stopAdvertising()V
    .registers 7

    .prologue
    .line 1789
    monitor-enter p0

    .line 1790
    :try_start_1
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v3, :cond_21

    .line 1791
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error state, mLeHandle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    monitor-exit p0

    .line 1807
    :goto_20
    return-void

    .line 1794
    :cond_21
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_3b

    .line 1795
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_58

    .line 1797
    :try_start_2b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    .line 1798
    .local v2, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothGatt;->stopAdvertising()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_36} :catch_3e
    .catchall {:try_start_2b .. :try_end_36} :catchall_3b

    .line 1805
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :goto_36
    :try_start_36
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1806
    monitor-exit p0

    goto :goto_20

    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catchall_3b
    move-exception v3

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_3b

    throw v3

    .line 1799
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_3e
    move-exception v1

    .line 1800
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3f
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to stop advertising"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 1803
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_58
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "stopAdvertising, BluetoothAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_3f .. :try_end_60} :catchall_3b

    goto :goto_36
.end method

.method public stopLeScan()V
    .registers 7

    .prologue
    .line 1810
    monitor-enter p0

    .line 1811
    :try_start_1
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v3, :cond_21

    .line 1812
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error state, mLeHandle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    monitor-exit p0

    .line 1830
    :goto_20
    return-void

    .line 1815
    :cond_21
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_46

    .line 1816
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_63

    .line 1818
    :try_start_2b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    .line 1819
    .local v2, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->stopScan(IZ)V

    .line 1820
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3e} :catch_49
    .catchall {:try_start_2b .. :try_end_3e} :catchall_46

    .line 1827
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :goto_3e
    const/4 v3, -0x1

    :try_start_3f
    iput v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 1828
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1829
    monitor-exit p0

    goto :goto_20

    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catchall_46
    move-exception v3

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_46

    throw v3

    .line 1821
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_49
    move-exception v1

    .line 1822
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4a
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to stop scan and unregister"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 1825
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_63
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "stopLeScan, BluetoothAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_4a .. :try_end_6b} :catchall_46

    goto :goto_3e
.end method
