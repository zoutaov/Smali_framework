.class public abstract Landroid/bluetooth/IBluetoothGattCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattCallback"

.field static final TRANSACTION_onAdvertiseStateChange:I = 0x10

.field static final TRANSACTION_onCharacteristicRead:I = 0x9

.field static final TRANSACTION_onCharacteristicWrite:I = 0xa

.field static final TRANSACTION_onClientConnectionState:I = 0x2

.field static final TRANSACTION_onClientRegistered:I = 0x1

.field static final TRANSACTION_onDescriptorRead:I = 0xc

.field static final TRANSACTION_onDescriptorWrite:I = 0xd

.field static final TRANSACTION_onExecuteWrite:I = 0xb

.field static final TRANSACTION_onGetCharacteristic:I = 0x6

.field static final TRANSACTION_onGetDescriptor:I = 0x7

.field static final TRANSACTION_onGetIncludedService:I = 0x5

.field static final TRANSACTION_onGetService:I = 0x4

.field static final TRANSACTION_onNotify:I = 0xe

.field static final TRANSACTION_onReadRemoteRssi:I = 0xf

.field static final TRANSACTION_onScanResult:I = 0x3

.field static final TRANSACTION_onSearchComplete:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;
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
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattCallback;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 16
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
    sparse-switch p1, :sswitch_data_33a

    .line 431
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 46
    :sswitch_8
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    goto :goto_7

    .line 51
    :sswitch_f
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientRegistered(II)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    const/4 v0, 0x1

    goto :goto_7

    .line 62
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_24
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    const/4 v3, 0x1

    .line 70
    .local v3, "_arg2":Z
    :goto_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v0, 0x1

    goto :goto_7

    .line 68
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    :cond_44
    const/4 v3, 0x0

    goto :goto_38

    .line 77
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_46
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 84
    .local v3, "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onScanResult(Ljava/lang/String;I[B)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v0, 0x1

    goto :goto_7

    .line 90
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    :sswitch_5f
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_86

    .line 99
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 104
    .local v4, "_arg3":Landroid/os/ParcelUuid;
    :goto_7e
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v0, 0x1

    goto :goto_7

    .line 102
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    :cond_86
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_7e

    .line 110
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_88
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c7

    .line 119
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 125
    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    :goto_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 127
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 129
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c9

    .line 130
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .local v7, "_arg6":Landroid/os/ParcelUuid;
    :goto_bd
    move-object v0, p0

    .line 135
    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 122
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    :cond_c7
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_a7

    .line 133
    .restart local v5    # "_arg4":I
    .restart local v6    # "_arg5":I
    :cond_c9
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_bd

    .line 141
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_cb
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 149
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10a

    .line 150
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 156
    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    :goto_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 158
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10c

    .line 159
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 165
    .local v6, "_arg5":Landroid/os/ParcelUuid;
    :goto_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    move-object v0, p0

    .line 166
    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 153
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    .end local v7    # "_arg6":I
    :cond_10a
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_ea

    .line 162
    .restart local v5    # "_arg4":I
    :cond_10c
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/os/ParcelUuid;
    goto :goto_fc

    .line 172
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    :sswitch_10e
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 180
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15b

    .line 181
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 187
    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    :goto_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 189
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15d

    .line 190
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 196
    .restart local v6    # "_arg5":Landroid/os/ParcelUuid;
    :goto_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 198
    .restart local v7    # "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15f

    .line 199
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .local v8, "_arg7":Landroid/os/ParcelUuid;
    :goto_151
    move-object v0, p0

    .line 204
    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 184
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/os/ParcelUuid;
    :cond_15b
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_12d

    .line 193
    .restart local v5    # "_arg4":I
    :cond_15d
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/os/ParcelUuid;
    goto :goto_13f

    .line 202
    .restart local v7    # "_arg6":I
    :cond_15f
    const/4 v8, 0x0

    .restart local v8    # "_arg7":Landroid/os/ParcelUuid;
    goto :goto_151

    .line 210
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/os/ParcelUuid;
    :sswitch_161
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onSearchComplete(Ljava/lang/String;I)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 221
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_177
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 227
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 229
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 231
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ba

    .line 232
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 238
    .local v5, "_arg4":Landroid/os/ParcelUuid;
    :goto_19a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 240
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1bc

    .line 241
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 247
    .local v7, "_arg6":Landroid/os/ParcelUuid;
    :goto_1ac
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .local v8, "_arg7":[B
    move-object v0, p0

    .line 248
    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 235
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":[B
    :cond_1ba
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_19a

    .line 244
    .restart local v6    # "_arg5":I
    :cond_1bc
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_1ac

    .line 254
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_1be
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 258
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 262
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 264
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1fd

    .line 265
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 271
    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    :goto_1e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 273
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ff

    .line 274
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    :goto_1f3
    move-object v0, p0

    .line 279
    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 268
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    :cond_1fd
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_1e1

    .line 277
    .restart local v6    # "_arg5":I
    :cond_1ff
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_1f3

    .line 285
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_201
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onExecuteWrite(Ljava/lang/String;I)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 296
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_217
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 302
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 304
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 306
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26c

    .line 307
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 313
    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    :goto_23a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 315
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26e

    .line 316
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 322
    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    :goto_24c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 324
    .local v8, "_arg7":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_270

    .line 325
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    .line 331
    .local v9, "_arg8":Landroid/os/ParcelUuid;
    :goto_25e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .local v10, "_arg9":[B
    move-object v0, p0

    .line 332
    invoke-virtual/range {v0 .. v10}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 310
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/os/ParcelUuid;
    .end local v10    # "_arg9":[B
    :cond_26c
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_23a

    .line 319
    .restart local v6    # "_arg5":I
    :cond_26e
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_24c

    .line 328
    .restart local v8    # "_arg7":I
    :cond_270
    const/4 v9, 0x0

    .restart local v9    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_25e

    .line 338
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_272
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 342
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 346
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 348
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c3

    .line 349
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 355
    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    :goto_295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 357
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c5

    .line 358
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 364
    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    :goto_2a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 366
    .restart local v8    # "_arg7":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c7

    .line 367
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    .restart local v9    # "_arg8":Landroid/os/ParcelUuid;
    :goto_2b9
    move-object v0, p0

    .line 372
    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 352
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/os/ParcelUuid;
    :cond_2c3
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_295

    .line 361
    .restart local v6    # "_arg5":I
    :cond_2c5
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_2a7

    .line 370
    .restart local v8    # "_arg7":I
    :cond_2c7
    const/4 v9, 0x0

    .restart local v9    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_2b9

    .line 378
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_2c9
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 382
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 384
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 386
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_308

    .line 387
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 393
    .local v4, "_arg3":Landroid/os/ParcelUuid;
    :goto_2e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 395
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30a

    .line 396
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 402
    .local v6, "_arg5":Landroid/os/ParcelUuid;
    :goto_2fa
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .local v7, "_arg6":[B
    move-object v0, p0

    .line 403
    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 390
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    .end local v7    # "_arg6":[B
    :cond_308
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_2e8

    .line 399
    .restart local v5    # "_arg4":I
    :cond_30a
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/os/ParcelUuid;
    goto :goto_2fa

    .line 409
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    :sswitch_30c
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 413
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 415
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 416
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onReadRemoteRssi(Ljava/lang/String;II)V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 422
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_326
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 426
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 427
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onAdvertiseStateChange(II)V

    .line 428
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 42
    nop

    :sswitch_data_33a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_46
        0x4 -> :sswitch_5f
        0x5 -> :sswitch_88
        0x6 -> :sswitch_cb
        0x7 -> :sswitch_10e
        0x8 -> :sswitch_161
        0x9 -> :sswitch_177
        0xa -> :sswitch_1be
        0xb -> :sswitch_201
        0xc -> :sswitch_217
        0xd -> :sswitch_272
        0xe -> :sswitch_2c9
        0xf -> :sswitch_30c
        0x10 -> :sswitch_326
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
