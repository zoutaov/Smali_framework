.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addGpsStatusListener:I = 0x6

.field static final TRANSACTION_addTestProvider:I = 0x12

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x17

.field static final TRANSACTION_clearTestProviderLocation:I = 0x15

.field static final TRANSACTION_clearTestProviderStatus:I = 0x19

.field static final TRANSACTION_geocoderIsPresent:I = 0x8

.field static final TRANSACTION_getAllProviders:I = 0xc

.field static final TRANSACTION_getBestProvider:I = 0xe

.field static final TRANSACTION_getFromLocation:I = 0x9

.field static final TRANSACTION_getFromLocationName:I = 0xa

.field static final TRANSACTION_getLastLocation:I = 0x5

.field static final TRANSACTION_getProviderProperties:I = 0x10

.field static final TRANSACTION_getProviders:I = 0xd

.field static final TRANSACTION_isProviderEnabled:I = 0x11

.field static final TRANSACTION_locationCallbackFinished:I = 0x1c

.field static final TRANSACTION_providerMeetsCriteria:I = 0xf

.field static final TRANSACTION_removeGeofence:I = 0x4

.field static final TRANSACTION_removeGpsStatusListener:I = 0x7

.field static final TRANSACTION_removeTestProvider:I = 0x13

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_reportLocation:I = 0x1b

.field static final TRANSACTION_requestGeofence:I = 0x3

.field static final TRANSACTION_requestLocationUpdates:I = 0x1

.field static final TRANSACTION_sendExtraCommand:I = 0x1a

.field static final TRANSACTION_sendNiResponse:I = 0xb

.field static final TRANSACTION_setTestProviderEnabled:I = 0x16

.field static final TRANSACTION_setTestProviderLocation:I = 0x14

.field static final TRANSACTION_setTestProviderStatus:I = 0x18


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "android.location.ILocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/location/ILocationManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/location/ILocationManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 36
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
    .line 43
    sparse-switch p1, :sswitch_data_4f6

    .line 500
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 47
    :sswitch_8
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_7

    .line 52
    :sswitch_11
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4e

    .line 55
    sget-object v2, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationRequest;

    .line 61
    .local v3, "_arg0":Landroid/location/LocationRequest;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v5

    .line 63
    .local v5, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_50

    .line 64
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 70
    .local v7, "_arg2":Landroid/app/PendingIntent;
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v2, 0x1

    goto :goto_7

    .line 58
    .end local v3    # "_arg0":Landroid/location/LocationRequest;
    .end local v5    # "_arg1":Landroid/location/ILocationListener;
    .end local v7    # "_arg2":Landroid/app/PendingIntent;
    .end local v8    # "_arg3":Ljava/lang/String;
    :cond_4e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_28

    .line 67
    .restart local v5    # "_arg1":Landroid/location/ILocationListener;
    :cond_50
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_40

    .line 77
    .end local v3    # "_arg0":Landroid/location/LocationRequest;
    .end local v5    # "_arg1":Landroid/location/ILocationListener;
    .end local v7    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_52
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v3

    .line 81
    .local v3, "_arg0":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7f

    .line 82
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 88
    .local v5, "_arg1":Landroid/app/PendingIntent;
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v2, 0x1

    goto :goto_7

    .line 85
    .end local v5    # "_arg1":Landroid/app/PendingIntent;
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_7f
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_71

    .line 95
    .end local v3    # "_arg0":Landroid/location/ILocationListener;
    .end local v5    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_81
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c7

    .line 98
    sget-object v2, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationRequest;

    .line 104
    .local v3, "_arg0":Landroid/location/LocationRequest;
    :goto_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c9

    .line 105
    sget-object v2, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Geofence;

    .line 111
    .local v5, "_arg1":Landroid/location/Geofence;
    :goto_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_cb

    .line 112
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 118
    .local v7, "_arg2":Landroid/app/PendingIntent;
    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 119
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 101
    .end local v3    # "_arg0":Landroid/location/LocationRequest;
    .end local v5    # "_arg1":Landroid/location/Geofence;
    .end local v7    # "_arg2":Landroid/app/PendingIntent;
    .end local v8    # "_arg3":Ljava/lang/String;
    :cond_c7
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_98

    .line 108
    :cond_c9
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/location/Geofence;
    goto :goto_a8

    .line 115
    :cond_cb
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_b8

    .line 125
    .end local v3    # "_arg0":Landroid/location/LocationRequest;
    .end local v5    # "_arg1":Landroid/location/Geofence;
    .end local v7    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_cd
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_103

    .line 128
    sget-object v2, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Geofence;

    .line 134
    .local v3, "_arg0":Landroid/location/Geofence;
    :goto_e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_105

    .line 135
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 141
    .local v5, "_arg1":Landroid/app/PendingIntent;
    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 131
    .end local v3    # "_arg0":Landroid/location/Geofence;
    .end local v5    # "_arg1":Landroid/app/PendingIntent;
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_103
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/location/Geofence;
    goto :goto_e4

    .line 138
    :cond_105
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_f4

    .line 148
    .end local v3    # "_arg0":Landroid/location/Geofence;
    .end local v5    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_107
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13e

    .line 151
    sget-object v2, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationRequest;

    .line 157
    .local v3, "_arg0":Landroid/location/LocationRequest;
    :goto_11e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v29

    .line 159
    .local v29, "_result":Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v29, :cond_140

    .line 161
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v2, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    :goto_13b
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 154
    .end local v3    # "_arg0":Landroid/location/LocationRequest;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v29    # "_result":Landroid/location/Location;
    :cond_13e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_11e

    .line 165
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v29    # "_result":Landroid/location/Location;
    :cond_140
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13b

    .line 171
    .end local v3    # "_arg0":Landroid/location/LocationRequest;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v29    # "_result":Landroid/location/Location;
    :sswitch_147
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v3

    .line 175
    .local v3, "_arg0":Landroid/location/IGpsStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 176
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z

    move-result v29

    .line 177
    .local v29, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v29, :cond_16e

    const/4 v2, 0x1

    :goto_166
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 178
    :cond_16e
    const/4 v2, 0x0

    goto :goto_166

    .line 183
    .end local v3    # "_arg0":Landroid/location/IGpsStatusListener;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v29    # "_result":Z
    :sswitch_170
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v3

    .line 186
    .restart local v3    # "_arg0":Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 192
    .end local v3    # "_arg0":Landroid/location/IGpsStatusListener;
    :sswitch_18a
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v29

    .line 194
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v29, :cond_1a3

    const/4 v2, 0x1

    :goto_19b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 195
    :cond_1a3
    const/4 v2, 0x0

    goto :goto_19b

    .line 200
    .end local v29    # "_result":Z
    :sswitch_1a5
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 204
    .local v3, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 206
    .local v5, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 208
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e5

    .line 209
    sget-object v2, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/GeocoderParams;

    .line 215
    .local v8, "_arg3":Landroid/location/GeocoderParams;
    :goto_1c8
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v2, p0

    .line 216
    invoke-virtual/range {v2 .. v9}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v29

    .line 217
    .local v29, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 220
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 212
    .end local v8    # "_arg3":Landroid/location/GeocoderParams;
    .end local v9    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v29    # "_result":Ljava/lang/String;
    :cond_1e5
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/location/GeocoderParams;
    goto :goto_1c8

    .line 224
    .end local v3    # "_arg0":D
    .end local v5    # "_arg1":D
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/location/GeocoderParams;
    :sswitch_1e7
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 230
    .restart local v5    # "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v14

    .line 232
    .local v14, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 234
    .local v16, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 236
    .local v18, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 238
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_237

    .line 239
    sget-object v2, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/location/GeocoderParams;

    .line 245
    .local v21, "_arg6":Landroid/location/GeocoderParams;
    :goto_216
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .local v22, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v10, p0

    move-object v11, v3

    move-wide v12, v5

    .line 246
    invoke-virtual/range {v10 .. v22}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v29

    .line 247
    .restart local v29    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 250
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 242
    .end local v21    # "_arg6":Landroid/location/GeocoderParams;
    .end local v22    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v29    # "_result":Ljava/lang/String;
    :cond_237
    const/16 v21, 0x0

    .restart local v21    # "_arg6":Landroid/location/GeocoderParams;
    goto :goto_216

    .line 254
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":D
    .end local v14    # "_arg2":D
    .end local v16    # "_arg3":D
    .end local v18    # "_arg4":D
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/location/GeocoderParams;
    :sswitch_23a
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 259
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    move-result v29

    .line 260
    .local v29, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v29, :cond_25d

    const/4 v2, 0x1

    :goto_255
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 261
    :cond_25d
    const/4 v2, 0x0

    goto :goto_255

    .line 266
    .end local v3    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v29    # "_result":Z
    :sswitch_25f
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v30

    .line 268
    .local v30, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 270
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 274
    .end local v30    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_277
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a8

    .line 277
    sget-object v2, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Criteria;

    .line 283
    .local v3, "_arg0":Landroid/location/Criteria;
    :goto_28e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2aa

    const/4 v5, 0x1

    .line 284
    .local v5, "_arg1":Z
    :goto_295
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v30

    .line 285
    .restart local v30    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 287
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 280
    .end local v3    # "_arg0":Landroid/location/Criteria;
    .end local v5    # "_arg1":Z
    .end local v30    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2a8
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/location/Criteria;
    goto :goto_28e

    .line 283
    :cond_2aa
    const/4 v5, 0x0

    goto :goto_295

    .line 291
    .end local v3    # "_arg0":Landroid/location/Criteria;
    :sswitch_2ac
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2dd

    .line 294
    sget-object v2, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Criteria;

    .line 300
    .restart local v3    # "_arg0":Landroid/location/Criteria;
    :goto_2c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2df

    const/4 v5, 0x1

    .line 301
    .restart local v5    # "_arg1":Z
    :goto_2ca
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v29

    .line 302
    .local v29, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 297
    .end local v3    # "_arg0":Landroid/location/Criteria;
    .end local v5    # "_arg1":Z
    .end local v29    # "_result":Ljava/lang/String;
    :cond_2dd
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/location/Criteria;
    goto :goto_2c3

    .line 300
    :cond_2df
    const/4 v5, 0x0

    goto :goto_2ca

    .line 308
    .end local v3    # "_arg0":Landroid/location/Criteria;
    :sswitch_2e1
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_310

    .line 313
    sget-object v2, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Criteria;

    .line 318
    .local v5, "_arg1":Landroid/location/Criteria;
    :goto_2fc
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z

    move-result v29

    .line 319
    .local v29, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v29, :cond_312

    const/4 v2, 0x1

    :goto_308
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 316
    .end local v5    # "_arg1":Landroid/location/Criteria;
    .end local v29    # "_result":Z
    :cond_310
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/location/Criteria;
    goto :goto_2fc

    .line 320
    .restart local v29    # "_result":Z
    :cond_312
    const/4 v2, 0x0

    goto :goto_308

    .line 325
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/location/Criteria;
    .end local v29    # "_result":Z
    :sswitch_314
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 328
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v29

    .line 329
    .local v29, "_result":Lcom/android/internal/location/ProviderProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    if-eqz v29, :cond_33b

    .line 331
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    const/4 v2, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 337
    :goto_338
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 335
    :cond_33b
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_338

    .line 341
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v29    # "_result":Lcom/android/internal/location/ProviderProperties;
    :sswitch_342
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 344
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v29

    .line 345
    .local v29, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v29, :cond_361

    const/4 v2, 0x1

    :goto_359
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 346
    :cond_361
    const/4 v2, 0x0

    goto :goto_359

    .line 351
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v29    # "_result":Z
    :sswitch_363
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 355
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_389

    .line 356
    sget-object v2, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/location/ProviderProperties;

    .line 361
    .local v5, "_arg1":Lcom/android/internal/location/ProviderProperties;
    :goto_37e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 359
    .end local v5    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    :cond_389
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    goto :goto_37e

    .line 367
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    :sswitch_38b
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 370
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 376
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3a1
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 380
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c7

    .line 381
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 386
    .local v5, "_arg1":Landroid/location/Location;
    :goto_3bc
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 384
    .end local v5    # "_arg1":Landroid/location/Location;
    :cond_3c7
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/location/Location;
    goto :goto_3bc

    .line 392
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/location/Location;
    :sswitch_3c9
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 395
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 401
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3df
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 405
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3fc

    const/4 v5, 0x1

    .line 406
    .local v5, "_arg1":Z
    :goto_3f1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 405
    .end local v5    # "_arg1":Z
    :cond_3fc
    const/4 v5, 0x0

    goto :goto_3f1

    .line 412
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3fe
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 415
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 421
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_414
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 425
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 427
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_44a

    .line 428
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 434
    .local v7, "_arg2":Landroid/os/Bundle;
    :goto_433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .local v16, "_arg3":J
    move-object/from16 v23, p0

    move-object/from16 v24, v3

    move/from16 v25, v5

    move-object/from16 v26, v7

    move-wide/from16 v27, v16

    .line 435
    invoke-virtual/range {v23 .. v28}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 431
    .end local v7    # "_arg2":Landroid/os/Bundle;
    .end local v16    # "_arg3":J
    :cond_44a
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/os/Bundle;
    goto :goto_433

    .line 441
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg2":Landroid/os/Bundle;
    :sswitch_44c
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 444
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 450
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_462
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 454
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4a3

    .line 457
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 462
    .restart local v7    # "_arg2":Landroid/os/Bundle;
    :goto_481
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v29

    .line 463
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v29, :cond_4a5

    const/4 v2, 0x1

    :goto_48d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    if-eqz v7, :cond_4a7

    .line 466
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 472
    :goto_4a0
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 460
    .end local v7    # "_arg2":Landroid/os/Bundle;
    .end local v29    # "_result":Z
    :cond_4a3
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/os/Bundle;
    goto :goto_481

    .line 464
    .restart local v29    # "_result":Z
    :cond_4a5
    const/4 v2, 0x0

    goto :goto_48d

    .line 470
    :cond_4a7
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4a0

    .line 476
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Landroid/os/Bundle;
    .end local v29    # "_result":Z
    :sswitch_4ae
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4d7

    .line 479
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 485
    .local v3, "_arg0":Landroid/location/Location;
    :goto_4c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4d9

    const/4 v5, 0x1

    .line 486
    .local v5, "_arg1":Z
    :goto_4cc
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 482
    .end local v3    # "_arg0":Landroid/location/Location;
    .end local v5    # "_arg1":Z
    :cond_4d7
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/location/Location;
    goto :goto_4c5

    .line 485
    :cond_4d9
    const/4 v5, 0x0

    goto :goto_4cc

    .line 492
    .end local v3    # "_arg0":Landroid/location/Location;
    :sswitch_4db
    const-string v2, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v3

    .line 495
    .local v3, "_arg0":Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 43
    nop

    :sswitch_data_4f6
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_52
        0x3 -> :sswitch_81
        0x4 -> :sswitch_cd
        0x5 -> :sswitch_107
        0x6 -> :sswitch_147
        0x7 -> :sswitch_170
        0x8 -> :sswitch_18a
        0x9 -> :sswitch_1a5
        0xa -> :sswitch_1e7
        0xb -> :sswitch_23a
        0xc -> :sswitch_25f
        0xd -> :sswitch_277
        0xe -> :sswitch_2ac
        0xf -> :sswitch_2e1
        0x10 -> :sswitch_314
        0x11 -> :sswitch_342
        0x12 -> :sswitch_363
        0x13 -> :sswitch_38b
        0x14 -> :sswitch_3a1
        0x15 -> :sswitch_3c9
        0x16 -> :sswitch_3df
        0x17 -> :sswitch_3fe
        0x18 -> :sswitch_414
        0x19 -> :sswitch_44c
        0x1a -> :sswitch_462
        0x1b -> :sswitch_4ae
        0x1c -> :sswitch_4db
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
