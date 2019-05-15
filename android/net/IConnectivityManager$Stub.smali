.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_captivePortalCheckComplete:I = 0x30

.field static final TRANSACTION_captivePortalCheckCompleted:I = 0x31

.field static final TRANSACTION_checkMobileProvisioning:I = 0x34

.field static final TRANSACTION_establishVpn:I = 0x2b

.field static final TRANSACTION_findConnectionTypeForIface:I = 0x33

.field static final TRANSACTION_getActiveLinkProperties:I = 0xa

.field static final TRANSACTION_getActiveLinkQualityInfo:I = 0x38

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x4

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x5

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0xd

.field static final TRANSACTION_getAllLinkQualityInfo:I = 0x39

.field static final TRANSACTION_getAllNetworkInfo:I = 0x7

.field static final TRANSACTION_getAllNetworkState:I = 0xc

.field static final TRANSACTION_getGlobalProxy:I = 0x25

.field static final TRANSACTION_getLastTetherError:I = 0x1a

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2e

.field static final TRANSACTION_getLinkProperties:I = 0xb

.field static final TRANSACTION_getLinkQualityInfo:I = 0x37

.field static final TRANSACTION_getMobileDataEnabled:I = 0x15

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x35

.field static final TRANSACTION_getMobileRedirectedProvisioningUrl:I = 0x36

.field static final TRANSACTION_getNetworkInfo:I = 0x6

.field static final TRANSACTION_getNetworkPreference:I = 0x3

.field static final TRANSACTION_getProvisioningOrActiveNetworkInfo:I = 0x8

.field static final TRANSACTION_getProxy:I = 0x27

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x21

.field static final TRANSACTION_getTetherableIfaces:I = 0x1c

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1f

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x20

.field static final TRANSACTION_getTetheredIfaces:I = 0x1d

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x1e

.field static final TRANSACTION_getVpnConfig:I = 0x2c

.field static final TRANSACTION_isActiveNetworkMetered:I = 0xe

.field static final TRANSACTION_isNetworkSupported:I = 0x9

.field static final TRANSACTION_isTetheringSupported:I = 0x1b

.field static final TRANSACTION_markSocketAsUser:I = 0x1

.field static final TRANSACTION_prepareVpn:I = 0x2a

.field static final TRANSACTION_protectVpn:I = 0x29

.field static final TRANSACTION_reportInetCondition:I = 0x24

.field static final TRANSACTION_requestNetworkTransitionWakelock:I = 0x23

.field static final TRANSACTION_requestRouteToHost:I = 0x13

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x14

.field static final TRANSACTION_setAirplaneMode:I = 0x3b

.field static final TRANSACTION_setDataDependency:I = 0x28

.field static final TRANSACTION_setGlobalProxy:I = 0x26

.field static final TRANSACTION_setMobileDataEnabled:I = 0x16

.field static final TRANSACTION_setNetworkPreference:I = 0x2

.field static final TRANSACTION_setPolicyDataEnable:I = 0x17

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x3a

.field static final TRANSACTION_setRadio:I = 0x10

.field static final TRANSACTION_setRadios:I = 0xf

.field static final TRANSACTION_setUsbTethering:I = 0x22

.field static final TRANSACTION_startLegacyVpn:I = 0x2d

.field static final TRANSACTION_startUsingNetworkFeature:I = 0x11

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x12

.field static final TRANSACTION_supplyMessenger:I = 0x32

.field static final TRANSACTION_tether:I = 0x18

.field static final TRANSACTION_untether:I = 0x19

.field static final TRANSACTION_updateLockdownVpn:I = 0x2f


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
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
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/net/IConnectivityManager;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_5c6

    .line 736
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 46
    :sswitch_a
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    .line 54
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 60
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->markSocketAsUser(Landroid/os/ParcelFileDescriptor;I)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 57
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":I
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_23

    .line 67
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_30
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 76
    .end local v0    # "_arg0":I
    :sswitch_40
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v4

    .line 78
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 84
    .end local v4    # "_result":I
    :sswitch_50
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 86
    .local v4, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v4, :cond_65

    .line 88
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 92
    :cond_65
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 98
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_69
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 102
    .restart local v4    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v4, :cond_82

    .line 104
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 108
    :cond_82
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 114
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_86
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 118
    .restart local v4    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v4, :cond_a0

    .line 120
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 124
    :cond_a0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 130
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_a5
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 132
    .local v4, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 138
    .end local v4    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_b6
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 140
    .local v4, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v4, :cond_cc

    .line 142
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 146
    :cond_cc
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 152
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_d1
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v4

    .line 156
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v4, :cond_e4

    move v5, v6

    :cond_e4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 162
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_e9
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 164
    .local v4, "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v4, :cond_ff

    .line 166
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 170
    :cond_ff
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 176
    .end local v4    # "_result":Landroid/net/LinkProperties;
    :sswitch_104
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 180
    .restart local v4    # "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v4, :cond_11e

    .line 182
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 186
    :cond_11e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 192
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/LinkProperties;
    :sswitch_123
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v4

    .line 194
    .local v4, "_result":[Landroid/net/NetworkState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 200
    .end local v4    # "_result":[Landroid/net/NetworkState;
    :sswitch_134
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v4

    .line 202
    .local v4, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v4, :cond_14a

    .line 204
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 208
    :cond_14a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 214
    .end local v4    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_14f
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v4

    .line 216
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v4, :cond_15e

    move v5, v6

    :cond_15e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 222
    .end local v4    # "_result":Z
    :sswitch_163
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17e

    move v0, v6

    .line 225
    .local v0, "_arg0":Z
    :goto_16f
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v4

    .line 226
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v4, :cond_179

    move v5, v6

    :cond_179
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_17e
    move v0, v5

    .line 224
    goto :goto_16f

    .line 232
    :sswitch_180
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19f

    move v1, v6

    .line 237
    .local v1, "_arg1":Z
    :goto_190
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v4

    .line 238
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v4, :cond_19a

    move v5, v6

    :cond_19a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_19f
    move v1, v5

    .line 236
    goto :goto_190

    .line 244
    .end local v0    # "_arg0":I
    :sswitch_1a1
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 251
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v4

    .line 252
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 258
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :sswitch_1be
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 263
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v4

    .line 264
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 270
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_1d7
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(IILjava/lang/String;)Z

    move-result v4

    .line 278
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v4, :cond_1f2

    move v5, v6

    :cond_1f2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 284
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_1f7
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 290
    .local v1, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[BLjava/lang/String;)Z

    move-result v4

    .line 292
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v4, :cond_212

    move v5, v6

    :cond_212
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 298
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_217
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v4

    .line 300
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v4, :cond_226

    move v5, v6

    :cond_226
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 306
    .end local v4    # "_result":Z
    :sswitch_22b
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_23f

    move v0, v6

    .line 309
    .local v0, "_arg0":Z
    :goto_237
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Z)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_23f
    move v0, v5

    .line 308
    goto :goto_237

    .line 315
    :sswitch_241
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 319
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_259

    move v1, v6

    .line 320
    .local v1, "_arg1":Z
    :goto_251
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setPolicyDataEnable(IZ)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    :cond_259
    move v1, v5

    .line 319
    goto :goto_251

    .line 326
    .end local v0    # "_arg0":I
    :sswitch_25b
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v4

    .line 330
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 336
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_270
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v4

    .line 340
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 346
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_285
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v4

    .line 350
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 356
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_29a
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v4

    .line 358
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    if-eqz v4, :cond_2a9

    move v5, v6

    :cond_2a9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 364
    .end local v4    # "_result":Z
    :sswitch_2ae
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 372
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_2bf
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 374
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 380
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_2d0
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 382
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 388
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_2e1
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 390
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 396
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_2f2
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 398
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 404
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_303
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 406
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 412
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_314
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_32c

    move v0, v6

    .line 415
    .local v0, "_arg0":Z
    :goto_320
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v4

    .line 416
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":I
    :cond_32c
    move v0, v5

    .line 414
    goto :goto_320

    .line 422
    :sswitch_32e
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->requestNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 431
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_33f
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 435
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 436
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 442
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_354
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 444
    .local v4, "_result":Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    if-eqz v4, :cond_36a

    .line 446
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    invoke-virtual {v4, p3, v6}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 450
    :cond_36a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 456
    .end local v4    # "_result":Landroid/net/ProxyProperties;
    :sswitch_36f
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38a

    .line 459
    sget-object v5, Landroid/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyProperties;

    .line 464
    .local v0, "_arg0":Landroid/net/ProxyProperties;
    :goto_382
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 462
    .end local v0    # "_arg0":Landroid/net/ProxyProperties;
    :cond_38a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/ProxyProperties;
    goto :goto_382

    .line 470
    .end local v0    # "_arg0":Landroid/net/ProxyProperties;
    :sswitch_38c
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 472
    .restart local v4    # "_result":Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    if-eqz v4, :cond_3a2

    .line 474
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    invoke-virtual {v4, p3, v6}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 478
    :cond_3a2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 484
    .end local v4    # "_result":Landroid/net/ProxyProperties;
    :sswitch_3a7
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 488
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3bf

    move v1, v6

    .line 489
    .local v1, "_arg1":Z
    :goto_3b7
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setDataDependency(IZ)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    :cond_3bf
    move v1, v5

    .line 488
    goto :goto_3b7

    .line 495
    .end local v0    # "_arg0":I
    :sswitch_3c1
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3e3

    .line 498
    sget-object v7, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 503
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_3d4
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->protectVpn(Landroid/os/ParcelFileDescriptor;)Z

    move-result v4

    .line 504
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    if-eqz v4, :cond_3de

    move v5, v6

    :cond_3de
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 501
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_result":Z
    :cond_3e3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_3d4

    .line 510
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_3e5
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 516
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    if-eqz v4, :cond_3fc

    move v5, v6

    :cond_3fc
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 522
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_401
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_425

    .line 525
    sget-object v7, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 530
    .local v0, "_arg0":Lcom/android/internal/net/VpnConfig;
    :goto_414
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 531
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    if-eqz v4, :cond_427

    .line 533
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    invoke-virtual {v4, p3, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 528
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_425
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_414

    .line 537
    .restart local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_427
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 543
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_42c
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    .line 545
    .local v4, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v4, :cond_442

    .line 547
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    invoke-virtual {v4, p3, v6}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 551
    :cond_442
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 557
    .end local v4    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_447
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_462

    .line 560
    sget-object v5, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 565
    .local v0, "_arg0":Lcom/android/internal/net/VpnProfile;
    :goto_45a
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 563
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :cond_462
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_45a

    .line 571
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_464
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v4

    .line 573
    .local v4, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    if-eqz v4, :cond_47a

    .line 575
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    invoke-virtual {v4, p3, v6}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 579
    :cond_47a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 585
    .end local v4    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_47f
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v4

    .line 587
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    if-eqz v4, :cond_48e

    move v5, v6

    :cond_48e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 593
    .end local v4    # "_result":Z
    :sswitch_493
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4ae

    .line 596
    sget-object v5, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 601
    .local v0, "_arg0":Landroid/net/NetworkInfo;
    :goto_4a6
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 599
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    :cond_4ae
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkInfo;
    goto :goto_4a6

    .line 607
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    :sswitch_4b0
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4d2

    .line 610
    sget-object v7, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 616
    .restart local v0    # "_arg0":Landroid/net/NetworkInfo;
    :goto_4c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4d4

    move v1, v6

    .line 617
    .local v1, "_arg1":Z
    :goto_4ca
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 613
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    .end local v1    # "_arg1":Z
    :cond_4d2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkInfo;
    goto :goto_4c3

    :cond_4d4
    move v1, v5

    .line 616
    goto :goto_4ca

    .line 623
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    :sswitch_4d6
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 627
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4f5

    .line 628
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 633
    .local v1, "_arg1":Landroid/os/Messenger;
    :goto_4ed
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 631
    .end local v1    # "_arg1":Landroid/os/Messenger;
    :cond_4f5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Messenger;
    goto :goto_4ed

    .line 639
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Messenger;
    :sswitch_4f7
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->findConnectionTypeForIface(Ljava/lang/String;)I

    move-result v4

    .line 643
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 649
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_50c
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 652
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v4

    .line 653
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 659
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_521
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 667
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_532
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;

    move-result-object v4

    .line 669
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 675
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_543
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 678
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;

    move-result-object v4

    .line 679
    .local v4, "_result":Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    if-eqz v4, :cond_55d

    .line 681
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 685
    :cond_55d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 691
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/LinkQualityInfo;
    :sswitch_562
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v4

    .line 693
    .restart local v4    # "_result":Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    if-eqz v4, :cond_578

    .line 695
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 699
    :cond_578
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 705
    .end local v4    # "_result":Landroid/net/LinkQualityInfo;
    :sswitch_57d
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;

    move-result-object v4

    .line 707
    .local v4, "_result":[Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 713
    .end local v4    # "_result":[Landroid/net/LinkQualityInfo;
    :sswitch_58e
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5ae

    move v0, v6

    .line 717
    .local v0, "_arg0":Z
    :goto_59a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 719
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 721
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :cond_5ae
    move v0, v5

    .line 715
    goto :goto_59a

    .line 728
    :sswitch_5b0
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5c4

    move v0, v6

    .line 731
    .restart local v0    # "_arg0":Z
    :goto_5bc
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_5c4
    move v0, v5

    .line 730
    goto :goto_5bc

    .line 42
    :sswitch_data_5c6
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_30
        0x3 -> :sswitch_40
        0x4 -> :sswitch_50
        0x5 -> :sswitch_69
        0x6 -> :sswitch_86
        0x7 -> :sswitch_a5
        0x8 -> :sswitch_b6
        0x9 -> :sswitch_d1
        0xa -> :sswitch_e9
        0xb -> :sswitch_104
        0xc -> :sswitch_123
        0xd -> :sswitch_134
        0xe -> :sswitch_14f
        0xf -> :sswitch_163
        0x10 -> :sswitch_180
        0x11 -> :sswitch_1a1
        0x12 -> :sswitch_1be
        0x13 -> :sswitch_1d7
        0x14 -> :sswitch_1f7
        0x15 -> :sswitch_217
        0x16 -> :sswitch_22b
        0x17 -> :sswitch_241
        0x18 -> :sswitch_25b
        0x19 -> :sswitch_270
        0x1a -> :sswitch_285
        0x1b -> :sswitch_29a
        0x1c -> :sswitch_2ae
        0x1d -> :sswitch_2bf
        0x1e -> :sswitch_2d0
        0x1f -> :sswitch_2e1
        0x20 -> :sswitch_2f2
        0x21 -> :sswitch_303
        0x22 -> :sswitch_314
        0x23 -> :sswitch_32e
        0x24 -> :sswitch_33f
        0x25 -> :sswitch_354
        0x26 -> :sswitch_36f
        0x27 -> :sswitch_38c
        0x28 -> :sswitch_3a7
        0x29 -> :sswitch_3c1
        0x2a -> :sswitch_3e5
        0x2b -> :sswitch_401
        0x2c -> :sswitch_42c
        0x2d -> :sswitch_447
        0x2e -> :sswitch_464
        0x2f -> :sswitch_47f
        0x30 -> :sswitch_493
        0x31 -> :sswitch_4b0
        0x32 -> :sswitch_4d6
        0x33 -> :sswitch_4f7
        0x34 -> :sswitch_50c
        0x35 -> :sswitch_521
        0x36 -> :sswitch_532
        0x37 -> :sswitch_543
        0x38 -> :sswitch_562
        0x39 -> :sswitch_57d
        0x3a -> :sswitch_58e
        0x3b -> :sswitch_5b0
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
