.class public final Landroid/bluetooth/BluetoothGattServer;
.super Ljava/lang/Object;
.source "BluetoothGattServer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field private static final CALLBACK_REG_TIMEOUT:I = 0x2710

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothGattServer"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

.field private mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field private final mContext:Landroid/content/Context;

.field private mServerIf:I

.field private mServerIfLock:Ljava/lang/Object;

.field private mService:Landroid/bluetooth/IBluetoothGatt;

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/IBluetoothGatt;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iGatt"    # Landroid/bluetooth/IBluetoothGatt;

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/bluetooth/BluetoothGattServer$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothGattServer$1;-><init>(Landroid/bluetooth/BluetoothGattServer;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

    .line 282
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mContext:Landroid/content/Context;

    .line 283
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    .line 284
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    .line 288
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGattServer;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGattServer;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothGattServer;I)I
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGattServer;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    return p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGattServer;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private unregisterCallback()V
    .registers 5

    .prologue
    .line 358
    const-string v1, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallback() - mServerIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_23

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_24

    .line 368
    :cond_23
    :goto_23
    return-void

    .line 362
    :cond_24
    const/4 v1, 0x0

    :try_start_25
    iput-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 363
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterServer(I)V

    .line 364
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_31} :catch_32

    goto :goto_23

    .line 365
    :catch_32
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothGattServer"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method


# virtual methods
.method public addService(Landroid/bluetooth/BluetoothGattService;)Z
    .registers 20
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 532
    const-string v1, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addService() - service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_28

    move-object/from16 v0, p0

    iget v1, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_2a

    :cond_28
    const/4 v1, 0x0

    .line 573
    :goto_29
    return v1

    .line 535
    :cond_2a
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    :try_start_33
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getHandles()I

    move-result v5

    new-instance v6, Landroid/os/ParcelUuid;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->isAdvertisePreferred()Z

    move-result v7

    invoke-interface/range {v1 .. v7}, Landroid/bluetooth/IBluetoothGatt;->beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V

    .line 542
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v16

    .line 543
    .local v16, "includedServices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_5f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothGattService;

    .line 544
    .local v15, "includedService":Landroid/bluetooth/BluetoothGattService;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->addIncludedService(IIILandroid/os/ParcelUuid;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_87} :catch_88

    goto :goto_5f

    .line 568
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "includedService":Landroid/bluetooth/BluetoothGattService;
    .end local v16    # "includedServices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :catch_88
    move-exception v12

    .line 569
    .local v12, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothGattServer"

    const-string v2, ""

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    const/4 v1, 0x0

    goto :goto_29

    .line 550
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "includedServices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_92
    :try_start_92
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v9

    .line 551
    .local v9, "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_9a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_107

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 552
    .local v8, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getKeySize()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    shl-int/lit8 v1, v1, 0xc

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getPermissions()I

    move-result v2

    add-int v17, v1, v2

    .line 554
    .local v17, "permission":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    move/from16 v0, v17

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/bluetooth/IBluetoothGatt;->addCharacteristic(ILandroid/os/ParcelUuid;II)V

    .line 558
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v11

    .line 559
    .local v11, "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_d6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 560
    .local v10, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getKeySize()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    shl-int/lit8 v1, v1, 0xc

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattDescriptor;->getPermissions()I

    move-result v2

    add-int v17, v1, v2

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v0, v17

    invoke-interface {v1, v2, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->addDescriptor(ILandroid/os/ParcelUuid;I)V

    goto :goto_d6

    .line 567
    .end local v8    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v10    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v11    # "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "permission":I
    :cond_107
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->endServiceDeclaration(I)V
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_112} :catch_88

    .line 573
    const/4 v1, 0x1

    goto/16 :goto_29
.end method

.method public cancelConnection(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 431
    const-string v1, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelConnection() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_24

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_25

    .line 439
    :cond_24
    :goto_24
    return-void

    .line 435
    :cond_25
    :try_start_25
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->serverDisconnect(ILjava/lang/String;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_30} :catch_31

    goto :goto_24

    .line 436
    :catch_31
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothGattServer"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public clearServices()V
    .registers 4

    .prologue
    .line 609
    const-string v1, "BluetoothGattServer"

    const-string v2, "clearServices()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_f

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_10

    .line 618
    :cond_f
    :goto_f
    return-void

    .line 613
    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->clearServices(I)V

    .line 614
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_f

    .line 615
    :catch_1d
    move-exception v0

    .line 616
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothGattServer"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public close()V
    .registers 3

    .prologue
    .line 297
    const-string v0, "BluetoothGattServer"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServer;->unregisterCallback()V

    .line 299
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "autoConnect"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 408
    const-string v3, "BluetoothGattServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() - device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", auto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v3, :cond_30

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v3, :cond_32

    :cond_30
    move v1, v2

    .line 419
    :goto_31
    return v1

    .line 412
    :cond_32
    :try_start_32
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v5, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_4b

    move v3, v2

    :goto_3d
    invoke-interface {v4, v5, v6, v3}, Landroid/bluetooth/IBluetoothGatt;->serverConnect(ILjava/lang/String;Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_40} :catch_41

    goto :goto_31

    .line 414
    :catch_41
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothGattServer"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 416
    goto :goto_31

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4b
    move v3, v1

    .line 412
    goto :goto_3d
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 667
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectionState instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 649
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 650
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 655
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;
    .registers 7
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "type"    # I

    .prologue
    .line 375
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 376
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v2

    if-ne v2, p3, :cond_6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 382
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :goto_28
    return-object v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public getServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    return-object v0
.end method

.method public notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .registers 16
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "confirm"    # Z

    .prologue
    .line 496
    const-string v0, "BluetoothGattServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCharacteristicChanged() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_25

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_27

    :cond_25
    const/4 v0, 0x0

    .line 513
    :goto_26
    return v0

    .line 499
    :cond_27
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v11

    .line 500
    .local v11, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v11, :cond_2f

    const/4 v0, 0x0

    goto :goto_26

    .line 503
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v9

    move v8, p3

    invoke-interface/range {v0 .. v9}, Landroid/bluetooth/IBluetoothGatt;->sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_5d} :catch_5f

    .line 513
    const/4 v0, 0x1

    goto :goto_26

    .line 508
    :catch_5f
    move-exception v10

    .line 509
    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothGattServer"

    const-string v1, ""

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    const/4 v0, 0x0

    goto :goto_26
.end method

.method registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;)Z
    .registers 9
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;

    .prologue
    const/4 v2, 0x0

    .line 315
    const-string v3, "BluetoothGattServer"

    const-string/jumbo v4, "registerCallback()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-nez v3, :cond_15

    .line 317
    const-string v3, "BluetoothGattServer"

    const-string v4, "GATT service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_14
    return v2

    .line 320
    :cond_15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 321
    .local v1, "uuid":Ljava/util/UUID;
    const-string v3, "BluetoothGattServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerCallback() - UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    monitor-enter v3

    .line 324
    :try_start_35
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    if-eqz v4, :cond_45

    .line 325
    const-string v4, "BluetoothGattServer"

    const-string v5, "App can register callback only once"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    monitor-exit v3

    goto :goto_14

    .line 351
    :catchall_42
    move-exception v2

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_42

    throw v2

    .line 329
    :cond_45
    :try_start_45
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_42

    .line 331
    :try_start_47
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v6, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v4, v5, v6}, Landroid/bluetooth/IBluetoothGatt;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_53} :catch_63
    .catchall {:try_start_47 .. :try_end_53} :catchall_42

    .line 339
    :try_start_53
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_5a} :catch_70
    .catchall {:try_start_53 .. :try_end_5a} :catchall_42

    .line 345
    :goto_5a
    :try_start_5a
    iget v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v4, :cond_8d

    .line 346
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 347
    monitor-exit v3

    goto :goto_14

    .line 332
    :catch_63
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "BluetoothGattServer"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    .line 335
    monitor-exit v3

    goto :goto_14

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_70
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "BluetoothGattServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    goto :goto_5a

    .line 349
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_8d
    const/4 v2, 0x1

    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_5a .. :try_end_8f} :catchall_42

    goto :goto_14
.end method

.method public removeService(Landroid/bluetooth/BluetoothGattService;)Z
    .registers 11
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    const/4 v2, 0x0

    .line 585
    const-string v3, "BluetoothGattServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeService() - service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v3, :cond_26

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v3, :cond_27

    .line 601
    :cond_26
    :goto_26
    return v2

    .line 588
    :cond_27
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 590
    .local v1, "intService":Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_26

    .line 593
    :try_start_39
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/bluetooth/IBluetoothGatt;->removeService(IIILandroid/os/ParcelUuid;)V

    .line 595
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_56} :catch_58

    .line 601
    const/4 v2, 0x1

    goto :goto_26

    .line 596
    :catch_58
    move-exception v0

    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothGattServer"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method public sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z
    .registers 15
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "status"    # I
    .param p4, "offset"    # I
    .param p5, "value"    # [B

    .prologue
    const/4 v8, 0x0

    .line 464
    const-string v0, "BluetoothGattServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResponse() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_26

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_28

    :cond_26
    move v0, v8

    .line 474
    :goto_27
    return v0

    .line 468
    :cond_28
    :try_start_28
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->sendResponse(ILjava/lang/String;III[B)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_37} :catch_39

    .line 474
    const/4 v0, 0x1

    goto :goto_27

    .line 470
    :catch_39
    move-exception v7

    .line 471
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothGattServer"

    const-string v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v8

    .line 472
    goto :goto_27
.end method
