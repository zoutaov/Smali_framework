.class Landroid/bluetooth/BluetoothAdapter$2;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2

    .prologue
    .line 1434
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .registers 7

    .prologue
    .line 1453
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # getter for: Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->access$200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v4

    monitor-enter v4

    .line 1454
    :try_start_7
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    const/4 v5, 0x0

    # setter for: Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothAdapter;->access$302(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1456
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    const/4 v5, 0x0

    # setter for: Landroid/bluetooth/BluetoothAdapter;->mBluetoothAdvScanData:Landroid/bluetooth/BluetoothAdvScanData;
    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothAdapter;->access$502(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdvScanData;)Landroid/bluetooth/BluetoothAdvScanData;

    .line 1457
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # getter for: Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->access$400(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_38

    .line 1459
    .local v0, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v0, :cond_3b

    .line 1460
    :try_start_2b
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_38

    goto :goto_1d

    .line 1464
    :catch_2f
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v3, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 1466
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v3

    .line 1462
    .restart local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3b
    :try_start_3b
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v5, "onBluetoothServiceDown: cb is null!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_2f
    .catchall {:try_start_3b .. :try_end_43} :catchall_38

    goto :goto_1d

    .line 1466
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_44
    :try_start_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_38

    .line 1467
    return-void
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .registers 8
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 1437
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # getter for: Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->access$200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v4

    monitor-enter v4

    .line 1438
    :try_start_7
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # setter for: Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->access$302(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1439
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # getter for: Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->access$400(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_31

    .line 1441
    .local v0, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v0, :cond_34

    .line 1442
    :try_start_24
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28
    .catchall {:try_start_24 .. :try_end_27} :catchall_31

    goto :goto_16

    .line 1446
    :catch_28
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v3, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 1448
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v3

    .line 1444
    .restart local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_34
    :try_start_34
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v5, "onBluetoothServiceUp: cb is null!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_28
    .catchall {:try_start_34 .. :try_end_3c} :catchall_31

    goto :goto_16

    .line 1448
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_3d
    :try_start_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_31

    .line 1449
    return-void
.end method
