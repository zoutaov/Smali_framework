.class public final Landroid/bluetooth/BluetoothAdvScanData;
.super Ljava/lang/Object;
.source "BluetoothAdvScanData.java"


# static fields
.field public static final AD:I = 0x0

.field public static final EIR:I = 0x2

.field public static final SCAN_RESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothAdvScanData"


# instance fields
.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mDataType:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothGatt;I)V
    .registers 3
    .param p1, "mBluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p2, "dataType"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 58
    iput p2, p0, Landroid/bluetooth/BluetoothAdvScanData;->mDataType:I

    .line 59
    return-void
.end method


# virtual methods
.method public getDataType()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Landroid/bluetooth/BluetoothAdvScanData;->mDataType:I

    return v0
.end method

.method public getManufacturerData()[B
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-nez v2, :cond_6

    .line 122
    :goto_5
    return-object v1

    .line 119
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothGatt;->getAdvManufacturerData()[B
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 120
    :catch_d
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdvScanData"

    const-string v3, "Unable to get manufacturer data."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getServiceData()[B
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-nez v2, :cond_6

    .line 135
    :goto_5
    return-object v1

    .line 132
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothGatt;->getAdvServiceData()[B
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 133
    :catch_d
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdvScanData"

    const-string v3, "Unable to get service data."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getServiceUuids()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothGatt;->getAdvServiceUuids()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 109
    :goto_a
    return-object v1

    .line 107
    :catch_b
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdvScanData"

    const-string v2, "Unable to get service uuids."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public removeManufacturerCodeAndData(I)V
    .registers 6
    .param p1, "manufacturerCode"    # I

    .prologue
    .line 144
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_9

    .line 146
    :try_start_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothGatt;->removeAdvManufacturerCodeAndData(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 151
    :cond_9
    :goto_9
    return-void

    .line 147
    :catch_a
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdvScanData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove manufacturer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setManufacturerData(I[B)Z
    .registers 7
    .param p1, "manufacturerCode"    # I
    .param p2, "manufacturerData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 76
    iget v2, p0, Landroid/bluetooth/BluetoothAdvScanData;->mDataType:I

    if-eqz v2, :cond_6

    .line 81
    :goto_5
    return v1

    .line 78
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGatt;->setAdvManufacturerCodeAndData(I[B)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 79
    :catch_d
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdvScanData"

    const-string v3, "Unable to set manufacturer id and data."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setServiceData([B)Z
    .registers 6
    .param p1, "serviceData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 91
    iget v2, p0, Landroid/bluetooth/BluetoothAdvScanData;->mDataType:I

    if-eqz v2, :cond_6

    .line 97
    :cond_5
    :goto_5
    return v1

    .line 92
    :cond_6
    if-eqz p1, :cond_5

    .line 94
    :try_start_8
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdvScanData;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothGatt;->setAdvServiceData([B)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    goto :goto_5

    .line 95
    :catch_f
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdvScanData"

    const-string v3, "Unable to set service data."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
