.class public abstract Landroid/bluetooth/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field static final TRANSACTION_addCharacteristic:I = 0x22

.field static final TRANSACTION_addDescriptor:I = 0x23

.field static final TRANSACTION_addIncludedService:I = 0x21

.field static final TRANSACTION_beginReliableWrite:I = 0x19

.field static final TRANSACTION_beginServiceDeclaration:I = 0x20

.field static final TRANSACTION_clearServices:I = 0x26

.field static final TRANSACTION_clientConnect:I = 0x7

.field static final TRANSACTION_clientDisconnect:I = 0x8

.field static final TRANSACTION_discoverServices:I = 0x13

.field static final TRANSACTION_endReliableWrite:I = 0x1a

.field static final TRANSACTION_endServiceDeclaration:I = 0x24

.field static final TRANSACTION_getAdvManufacturerData:I = 0xe

.field static final TRANSACTION_getAdvServiceData:I = 0xc

.field static final TRANSACTION_getAdvServiceUuids:I = 0xf

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x1

.field static final TRANSACTION_isAdvertising:I = 0x11

.field static final TRANSACTION_readCharacteristic:I = 0x14

.field static final TRANSACTION_readDescriptor:I = 0x16

.field static final TRANSACTION_readRemoteRssi:I = 0x1b

.field static final TRANSACTION_refreshDevice:I = 0x12

.field static final TRANSACTION_registerClient:I = 0x5

.field static final TRANSACTION_registerForNotification:I = 0x18

.field static final TRANSACTION_registerServer:I = 0x1c

.field static final TRANSACTION_removeAdvManufacturerCodeAndData:I = 0x10

.field static final TRANSACTION_removeService:I = 0x25

.field static final TRANSACTION_sendNotification:I = 0x28

.field static final TRANSACTION_sendResponse:I = 0x27

.field static final TRANSACTION_serverConnect:I = 0x1e

.field static final TRANSACTION_serverDisconnect:I = 0x1f

.field static final TRANSACTION_setAdvManufacturerCodeAndData:I = 0xd

.field static final TRANSACTION_setAdvServiceData:I = 0xb

.field static final TRANSACTION_startAdvertising:I = 0x9

.field static final TRANSACTION_startScan:I = 0x2

.field static final TRANSACTION_startScanWithUuids:I = 0x3

.field static final TRANSACTION_stopAdvertising:I = 0xa

.field static final TRANSACTION_stopScan:I = 0x4

.field static final TRANSACTION_unregisterClient:I = 0x6

.field static final TRANSACTION_unregisterServer:I = 0x1d

.field static final TRANSACTION_writeCharacteristic:I = 0x15

.field static final TRANSACTION_writeDescriptor:I = 0x17


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.bluetooth.IBluetoothGatt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/bluetooth/IBluetoothGatt;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_66a

    .line 694
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 46
    :sswitch_8
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x1

    goto :goto_7

    .line 51
    :sswitch_11
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 54
    .local v3, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v16

    .line 55
    .local v16, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 57
    const/4 v2, 0x1

    goto :goto_7

    .line 61
    .end local v3    # "_arg0":[I
    .end local v16    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2e
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 65
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v4, 0x1

    .line 66
    .local v4, "_arg1":Z
    :goto_40
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScan(IZ)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v2, 0x1

    goto :goto_7

    .line 65
    .end local v4    # "_arg1":Z
    :cond_4a
    const/4 v4, 0x0

    goto :goto_40

    .line 72
    .end local v3    # "_arg0":I
    :sswitch_4c
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_72

    const/4 v4, 0x1

    .line 78
    .restart local v4    # "_arg1":Z
    :goto_5e
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/ParcelUuid;

    .line 79
    .local v5, "_arg2":[Landroid/os/ParcelUuid;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScanWithUuids(IZ[Landroid/os/ParcelUuid;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v2, 0x1

    goto :goto_7

    .line 76
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":[Landroid/os/ParcelUuid;
    :cond_72
    const/4 v4, 0x0

    goto :goto_5e

    .line 85
    .end local v3    # "_arg0":I
    :sswitch_74
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_91

    const/4 v4, 0x1

    .line 90
    .restart local v4    # "_arg1":Z
    :goto_86
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScan(IZ)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 89
    .end local v4    # "_arg1":Z
    :cond_91
    const/4 v4, 0x0

    goto :goto_86

    .line 96
    .end local v3    # "_arg0":I
    :sswitch_93
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_bd

    .line 99
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 105
    .local v3, "_arg0":Landroid/os/ParcelUuid;
    :goto_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v4

    .line 106
    .local v4, "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 102
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    :cond_bd
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_aa

    .line 112
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_bf
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 115
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterClient(I)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 121
    .end local v3    # "_arg0":I
    :sswitch_d5
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f6

    const/4 v5, 0x1

    .line 128
    .local v5, "_arg2":Z
    :goto_eb
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientConnect(ILjava/lang/String;Z)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 127
    .end local v5    # "_arg2":Z
    :cond_f6
    const/4 v5, 0x0

    goto :goto_eb

    .line 134
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_f8
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 138
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 139
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientDisconnect(ILjava/lang/String;)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 145
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_112
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 148
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->startAdvertising(I)V

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 154
    .end local v3    # "_arg0":I
    :sswitch_128
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopAdvertising()V

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 161
    :sswitch_138
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 164
    .local v3, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->setAdvServiceData([B)Z

    move-result v15

    .line 165
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v15, :cond_157

    const/4 v2, 0x1

    :goto_14f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 166
    :cond_157
    const/4 v2, 0x0

    goto :goto_14f

    .line 171
    .end local v3    # "_arg0":[B
    .end local v15    # "_result":Z
    :sswitch_159
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->getAdvServiceData()[B

    move-result-object v15

    .line 173
    .local v15, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 175
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 179
    .end local v15    # "_result":[B
    :sswitch_16f
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 183
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 184
    .local v4, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->setAdvManufacturerCodeAndData(I[B)Z

    move-result v15

    .line 185
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v15, :cond_192

    const/4 v2, 0x1

    :goto_18a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 186
    :cond_192
    const/4 v2, 0x0

    goto :goto_18a

    .line 191
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[B
    .end local v15    # "_result":Z
    :sswitch_194
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->getAdvManufacturerData()[B

    move-result-object v15

    .line 193
    .local v15, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 195
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 199
    .end local v15    # "_result":[B
    :sswitch_1aa
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->getAdvServiceUuids()Ljava/util/List;

    move-result-object v17

    .line 201
    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 203
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 207
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :sswitch_1c2
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 210
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeAdvManufacturerCodeAndData(I)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 216
    .end local v3    # "_arg0":I
    :sswitch_1d8
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->isAdvertising()Z

    move-result v15

    .line 218
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v15, :cond_1f1

    const/4 v2, 0x1

    :goto_1e9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 219
    :cond_1f1
    const/4 v2, 0x0

    goto :goto_1e9

    .line 224
    .end local v15    # "_result":Z
    :sswitch_1f3
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 228
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->refreshDevice(ILjava/lang/String;)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 235
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_20d
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 240
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServices(ILjava/lang/String;)V

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 246
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_227
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 252
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 254
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 256
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_271

    .line 257
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 263
    .local v7, "_arg4":Landroid/os/ParcelUuid;
    :goto_24e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 265
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_273

    .line 266
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    .line 272
    .local v9, "_arg6":Landroid/os/ParcelUuid;
    :goto_262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg7":I
    move-object/from16 v2, p0

    .line 273
    invoke-virtual/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGatt$Stub;->readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 260
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/ParcelUuid;
    .end local v10    # "_arg7":I
    :cond_271
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_24e

    .line 269
    .restart local v8    # "_arg5":I
    :cond_273
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_262

    .line 279
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_275
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 283
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 285
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 287
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 289
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c7

    .line 290
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 296
    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_29c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 298
    .restart local v8    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c9

    .line 299
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    .line 305
    .restart local v9    # "_arg6":Landroid/os/ParcelUuid;
    :goto_2b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 307
    .restart local v10    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 309
    .local v11, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .local v12, "_arg9":[B
    move-object/from16 v2, p0

    .line 310
    invoke-virtual/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 293
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/ParcelUuid;
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":I
    .end local v12    # "_arg9":[B
    :cond_2c7
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_29c

    .line 302
    .restart local v8    # "_arg5":I
    :cond_2c9
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_2b0

    .line 316
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_2cb
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 320
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 322
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 324
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 326
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_329

    .line 327
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 333
    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_2f2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 335
    .restart local v8    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32b

    .line 336
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    .line 342
    .restart local v9    # "_arg6":Landroid/os/ParcelUuid;
    :goto_306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 344
    .restart local v10    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32d

    .line 345
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    .line 351
    .local v11, "_arg8":Landroid/os/ParcelUuid;
    :goto_31a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg9":I
    move-object/from16 v2, p0

    .line 352
    invoke-virtual/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGatt$Stub;->readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 330
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/ParcelUuid;
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":Landroid/os/ParcelUuid;
    .end local v12    # "_arg9":I
    :cond_329
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_2f2

    .line 339
    .restart local v8    # "_arg5":I
    :cond_32b
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_306

    .line 348
    .restart local v10    # "_arg7":I
    :cond_32d
    const/4 v11, 0x0

    .restart local v11    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_31a

    .line 358
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/ParcelUuid;
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_32f
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 362
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 364
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 366
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 368
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_395

    .line 369
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 375
    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 377
    .restart local v8    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_397

    .line 378
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    .line 384
    .restart local v9    # "_arg6":Landroid/os/ParcelUuid;
    :goto_36a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 386
    .restart local v10    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_399

    .line 387
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    .line 393
    .restart local v11    # "_arg8":Landroid/os/ParcelUuid;
    :goto_37e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 395
    .restart local v12    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 397
    .local v13, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .local v14, "_arg11":[B
    move-object/from16 v2, p0

    .line 398
    invoke-virtual/range {v2 .. v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 372
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/ParcelUuid;
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":Landroid/os/ParcelUuid;
    .end local v12    # "_arg9":I
    .end local v13    # "_arg10":I
    .end local v14    # "_arg11":[B
    :cond_395
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_356

    .line 381
    .restart local v8    # "_arg5":I
    :cond_397
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_36a

    .line 390
    .restart local v10    # "_arg7":I
    :cond_399
    const/4 v11, 0x0

    .restart local v11    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_37e

    .line 404
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/ParcelUuid;
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_39b
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 408
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 410
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 412
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 414
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e8

    .line 415
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 421
    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_3c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 423
    .restart local v8    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3ea

    .line 424
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    .line 430
    .restart local v9    # "_arg6":Landroid/os/ParcelUuid;
    :goto_3d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3ec

    const/4 v10, 0x1

    .local v10, "_arg7":Z
    :goto_3dd
    move-object/from16 v2, p0

    .line 431
    invoke-virtual/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 418
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/ParcelUuid;
    .end local v10    # "_arg7":Z
    :cond_3e8
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_3c2

    .line 427
    .restart local v8    # "_arg5":I
    :cond_3ea
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_3d6

    .line 430
    :cond_3ec
    const/4 v10, 0x0

    goto :goto_3dd

    .line 437
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_3ee
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 441
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 442
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginReliableWrite(ILjava/lang/String;)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 448
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_408
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 452
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 454
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_429

    const/4 v5, 0x1

    .line 455
    .local v5, "_arg2":Z
    :goto_41e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->endReliableWrite(ILjava/lang/String;Z)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 454
    .end local v5    # "_arg2":Z
    :cond_429
    const/4 v5, 0x0

    goto :goto_41e

    .line 461
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_42b
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 465
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 466
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->readRemoteRssi(ILjava/lang/String;)V

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 472
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_445
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_46f

    .line 475
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 481
    .local v3, "_arg0":Landroid/os/ParcelUuid;
    :goto_45c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v4

    .line 482
    .local v4, "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 478
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    :cond_46f
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_45c

    .line 488
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_471
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 491
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterServer(I)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 497
    .end local v3    # "_arg0":I
    :sswitch_487
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 501
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4a8

    const/4 v5, 0x1

    .line 504
    .restart local v5    # "_arg2":Z
    :goto_49d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverConnect(ILjava/lang/String;Z)V

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 503
    .end local v5    # "_arg2":Z
    :cond_4a8
    const/4 v5, 0x0

    goto :goto_49d

    .line 510
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_4aa
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 514
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 515
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverDisconnect(ILjava/lang/String;)V

    .line 516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 521
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_4c4
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 525
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 527
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 529
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 531
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4fd

    .line 532
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 538
    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_4eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4ff

    const/4 v8, 0x1

    .local v8, "_arg5":Z
    :goto_4f2
    move-object/from16 v2, p0

    .line 539
    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 535
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":Z
    :cond_4fd
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_4eb

    .line 538
    :cond_4ff
    const/4 v8, 0x0

    goto :goto_4f2

    .line 545
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    :sswitch_501
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 549
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 551
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 553
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_52f

    .line 554
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 559
    .local v6, "_arg3":Landroid/os/ParcelUuid;
    :goto_524
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->addIncludedService(IIILandroid/os/ParcelUuid;)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 557
    .end local v6    # "_arg3":Landroid/os/ParcelUuid;
    :cond_52f
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_524

    .line 565
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_531
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 569
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_55f

    .line 570
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 576
    .local v4, "_arg1":Landroid/os/ParcelUuid;
    :goto_54c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 578
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 579
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->addCharacteristic(ILandroid/os/ParcelUuid;II)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 573
    .end local v4    # "_arg1":Landroid/os/ParcelUuid;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    :cond_55f
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_54c

    .line 585
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_561
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 589
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_58b

    .line 590
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 596
    .restart local v4    # "_arg1":Landroid/os/ParcelUuid;
    :goto_57c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 597
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->addDescriptor(ILandroid/os/ParcelUuid;I)V

    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 593
    .end local v4    # "_arg1":Landroid/os/ParcelUuid;
    .end local v5    # "_arg2":I
    :cond_58b
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_57c

    .line 603
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_58d
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 606
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->endServiceDeclaration(I)V

    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 612
    .end local v3    # "_arg0":I
    :sswitch_5a3
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 616
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 618
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 620
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5d1

    .line 621
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 626
    .local v6, "_arg3":Landroid/os/ParcelUuid;
    :goto_5c6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeService(IIILandroid/os/ParcelUuid;)V

    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 624
    .end local v6    # "_arg3":Landroid/os/ParcelUuid;
    :cond_5d1
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_5c6

    .line 632
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_5d3
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 635
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->clearServices(I)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 641
    .end local v3    # "_arg0":I
    :sswitch_5e9
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 645
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 647
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 649
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 651
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 653
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .local v8, "_arg5":[B
    move-object/from16 v2, p0

    .line 654
    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendResponse(ILjava/lang/String;III[B)V

    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 660
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":[B
    :sswitch_613
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 664
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 666
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 668
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 670
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_664

    .line 671
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 677
    .local v7, "_arg4":Landroid/os/ParcelUuid;
    :goto_63a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 679
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_666

    .line 680
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    .line 686
    .restart local v9    # "_arg6":Landroid/os/ParcelUuid;
    :goto_64e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_668

    const/4 v10, 0x1

    .line 688
    .restart local v10    # "_arg7":Z
    :goto_655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .local v11, "_arg8":[B
    move-object/from16 v2, p0

    .line 689
    invoke-virtual/range {v2 .. v11}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 674
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/ParcelUuid;
    .end local v10    # "_arg7":Z
    .end local v11    # "_arg8":[B
    :cond_664
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_63a

    .line 683
    .restart local v8    # "_arg5":I
    :cond_666
    const/4 v9, 0x0

    .restart local v9    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_64e

    .line 686
    :cond_668
    const/4 v10, 0x0

    goto :goto_655

    .line 42
    :sswitch_data_66a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_74
        0x5 -> :sswitch_93
        0x6 -> :sswitch_bf
        0x7 -> :sswitch_d5
        0x8 -> :sswitch_f8
        0x9 -> :sswitch_112
        0xa -> :sswitch_128
        0xb -> :sswitch_138
        0xc -> :sswitch_159
        0xd -> :sswitch_16f
        0xe -> :sswitch_194
        0xf -> :sswitch_1aa
        0x10 -> :sswitch_1c2
        0x11 -> :sswitch_1d8
        0x12 -> :sswitch_1f3
        0x13 -> :sswitch_20d
        0x14 -> :sswitch_227
        0x15 -> :sswitch_275
        0x16 -> :sswitch_2cb
        0x17 -> :sswitch_32f
        0x18 -> :sswitch_39b
        0x19 -> :sswitch_3ee
        0x1a -> :sswitch_408
        0x1b -> :sswitch_42b
        0x1c -> :sswitch_445
        0x1d -> :sswitch_471
        0x1e -> :sswitch_487
        0x1f -> :sswitch_4aa
        0x20 -> :sswitch_4c4
        0x21 -> :sswitch_501
        0x22 -> :sswitch_531
        0x23 -> :sswitch_561
        0x24 -> :sswitch_58d
        0x25 -> :sswitch_5a3
        0x26 -> :sswitch_5d3
        0x27 -> :sswitch_5e9
        0x28 -> :sswitch_613
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
