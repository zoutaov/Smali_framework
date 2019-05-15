.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_CAPTIVE_PORTAL_TEST_COMPLETED:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

.field public static final ACTION_DATA_ACTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.DATA_ACTIVITY_CHANGE"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final CONNECTIVITY_ACTION_IMMEDIATE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

.field public static final CONNECTIVITY_CHANGE_DELAY_DEFAULT:I = 0xbb8

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_ACTIVE:Ljava/lang/String; = "isActive"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "captivePortal"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field public static final MAX_NETWORK_TYPE:I = 0xe

.field public static final MAX_RADIO_TYPE:I = 0xe

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_CBS:I = 0xc

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_IA:I = 0xe

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIMAX:I = 0x6


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/IConnectivityManager;Ljava/lang/String;)V
    .registers 4
    .param p1, "service"    # Landroid/net/IConnectivityManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 905
    const-string v0, "missing package name"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mPackageName:Ljava/lang/String;

    .line 906
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 910
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 418
    packed-switch p0, :pswitch_data_36

    .line 450
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 420
    :pswitch_8
    const-string v0, "MOBILE"

    goto :goto_7

    .line 422
    :pswitch_b
    const-string v0, "WIFI"

    goto :goto_7

    .line 424
    :pswitch_e
    const-string v0, "MOBILE_MMS"

    goto :goto_7

    .line 426
    :pswitch_11
    const-string v0, "MOBILE_SUPL"

    goto :goto_7

    .line 428
    :pswitch_14
    const-string v0, "MOBILE_DUN"

    goto :goto_7

    .line 430
    :pswitch_17
    const-string v0, "MOBILE_HIPRI"

    goto :goto_7

    .line 432
    :pswitch_1a
    const-string v0, "WIMAX"

    goto :goto_7

    .line 434
    :pswitch_1d
    const-string v0, "BLUETOOTH"

    goto :goto_7

    .line 436
    :pswitch_20
    const-string v0, "DUMMY"

    goto :goto_7

    .line 438
    :pswitch_23
    const-string v0, "ETHERNET"

    goto :goto_7

    .line 440
    :pswitch_26
    const-string v0, "MOBILE_FOTA"

    goto :goto_7

    .line 442
    :pswitch_29
    const-string v0, "MOBILE_IMS"

    goto :goto_7

    .line 444
    :pswitch_2c
    const-string v0, "MOBILE_CBS"

    goto :goto_7

    .line 446
    :pswitch_2f
    const-string v0, "WIFI_P2P"

    goto :goto_7

    .line 448
    :pswitch_32
    const-string v0, "MOBILE_IA"

    goto :goto_7

    .line 418
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
    .end packed-switch
.end method

.method public static isNetworkTypeExempt(I)Z
    .registers 2
    .param p0, "networkType"    # I

    .prologue
    .line 499
    sparse-switch p0, :sswitch_data_8

    .line 506
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 504
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 499
    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x5 -> :sswitch_5
        0xe -> :sswitch_5
    .end sparse-switch
.end method

.method public static isNetworkTypeMobile(I)Z
    .registers 2
    .param p0, "networkType"    # I

    .prologue
    .line 462
    packed-switch p0, :pswitch_data_8

    .line 474
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 472
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 462
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .registers 2
    .param p0, "networkType"    # I

    .prologue
    .line 406
    if-ltz p0, :cond_8

    const/16 v0, 0xe

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isNetworkTypeWifi(I)Z
    .registers 2
    .param p0, "networkType"    # I

    .prologue
    .line 484
    sparse-switch p0, :sswitch_data_8

    .line 489
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 487
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 484
    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0xd -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 1347
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1350
    :goto_5
    return-void

    .line 1348
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .registers 4
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isCaptivePortal"    # Z

    .prologue
    .line 1366
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1369
    :goto_5
    return-void

    .line 1367
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public checkMobileProvisioning(I)I
    .registers 4
    .param p1, "suggestedTimeOutMs"    # I

    .prologue
    .line 1396
    const/4 v0, -0x1

    .line 1398
    .local v0, "timeOutMs":I
    :try_start_1
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->checkMobileProvisioning(I)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    .line 1401
    :goto_7
    return v0

    .line 1399
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 664
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 666
    :goto_6
    return-object v1

    .line 665
    :catch_7
    move-exception v0

    .line 666
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .registers 4

    .prologue
    .line 1447
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1450
    :goto_6
    return-object v1

    .line 1449
    :catch_7
    move-exception v0

    .line 1450
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 562
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 564
    :goto_6
    return-object v1

    .line 563
    :catch_7
    move-exception v0

    .line 564
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 583
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 585
    :goto_6
    return-object v1

    .line 584
    :catch_7
    move-exception v0

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .registers 3

    .prologue
    .line 863
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 865
    :goto_6
    return-object v1

    .line 864
    :catch_7
    move-exception v0

    .line 865
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;
    .registers 4

    .prologue
    .line 1460
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1463
    :goto_6
    return-object v1

    .line 1462
    :catch_7
    move-exception v0

    .line 1463
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 622
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 624
    :goto_6
    return-object v1

    .line 623
    :catch_7
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getBackgroundDataSetting()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 833
    const/4 v0, 0x1

    return v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .registers 3

    .prologue
    .line 1229
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1231
    :goto_6
    return-object v1

    .line 1230
    :catch_7
    move-exception v0

    .line 1231
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1151
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1153
    :goto_6
    return v1

    .line 1152
    :catch_7
    move-exception v0

    .line 1153
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 684
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 686
    :goto_6
    return-object v1

    .line 685
    :catch_7
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;
    .registers 5
    .param p1, "networkType"    # I

    .prologue
    .line 1434
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1}, Landroid/net/IConnectivityManager;->getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1437
    :goto_6
    return-object v1

    .line 1436
    :catch_7
    move-exception v0

    .line 1437
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMobileDataEnabled()Z
    .registers 3

    .prologue
    .line 880
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 882
    :goto_6
    return v1

    .line 881
    :catch_7
    move-exception v0

    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1410
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 1413
    :goto_6
    return-object v0

    .line 1411
    :catch_7
    move-exception v0

    .line 1413
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1422
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 1425
    :goto_6
    return-object v0

    .line 1423
    :catch_7
    move-exception v0

    .line 1425
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 604
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 606
    :goto_6
    return-object v1

    .line 605
    :catch_7
    move-exception v0

    .line 606
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkPreference()I
    .registers 3

    .prologue
    .line 541
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getNetworkPreference()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 543
    :goto_6
    return v1

    .line 542
    :catch_7
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 645
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 647
    :goto_6
    return-object v1

    .line 646
    :catch_7
    move-exception v0

    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .registers 3

    .prologue
    .line 1248
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getProxy()Landroid/net/ProxyProperties;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1250
    :goto_6
    return-object v1

    .line 1249
    :catch_7
    move-exception v0

    .line 1250
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1086
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1088
    :goto_6
    return-object v1

    .line 1087
    :catch_7
    move-exception v0

    .line 1088
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 925
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 927
    :goto_6
    return-object v1

    .line 926
    :catch_7
    move-exception v0

    .line 927
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1046
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1048
    :goto_6
    return-object v1

    .line 1047
    :catch_7
    move-exception v0

    .line 1048
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1066
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1068
    :goto_6
    return-object v1

    .line 1067
    :catch_7
    move-exception v0

    .line 1068
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 942
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 944
    :goto_6
    return-object v1

    .line 943
    :catch_7
    move-exception v0

    .line 944
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 965
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 967
    :goto_6
    return-object v1

    .line 966
    :catch_7
    move-exception v0

    .line 967
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_6
.end method

.method public isActiveNetworkMetered()Z
    .registers 3

    .prologue
    .line 1311
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1313
    :goto_6
    return v1

    .line 1312
    :catch_7
    move-exception v0

    .line 1313
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isNetworkSupported(I)Z
    .registers 3
    .param p1, "networkType"    # I

    .prologue
    .line 1290
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 1292
    :goto_6
    return v0

    .line 1291
    :catch_7
    move-exception v0

    .line 1292
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTetheringSupported()Z
    .registers 3

    .prologue
    .line 1026
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1028
    :goto_6
    return v1

    .line 1027
    :catch_7
    move-exception v0

    .line 1028
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reportInetCondition(II)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .prologue
    .line 1192
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1195
    :goto_5
    return-void

    .line 1193
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)Z
    .registers 4
    .param p1, "forWhom"    # Ljava/lang/String;

    .prologue
    .line 1172
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->requestNetworkTransitionWakelock(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1173
    const/4 v1, 0x1

    .line 1175
    :goto_6
    return v1

    .line 1174
    :catch_7
    move-exception v0

    .line 1175
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public requestRouteToHost(II)Z
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # I

    .prologue
    .line 785
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 787
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-nez v0, :cond_8

    .line 788
    const/4 v1, 0x0

    .line 791
    :goto_7
    return v1

    :cond_8
    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v1

    goto :goto_7
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .registers 7
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 805
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 807
    .local v0, "address":[B
    :try_start_4
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v3, p0, Landroid/net/ConnectivityManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, p1, v0, v3}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[BLjava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 809
    :goto_c
    return v2

    .line 808
    :catch_d
    move-exception v1

    .line 809
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public setAirplaneMode(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 1494
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setAirplaneMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1497
    :goto_5
    return-void

    .line 1495
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setBackgroundDataSetting(Z)V
    .registers 2
    .param p1, "allowBackgroundData"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 849
    return-void
.end method

.method public setDataDependency(IZ)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "met"    # Z

    .prologue
    .line 1268
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setDataDependency(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1271
    :goto_5
    return-void

    .line 1269
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .registers 3
    .param p1, "p"    # Landroid/net/ProxyProperties;

    .prologue
    .line 1212
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1215
    :goto_5
    return-void

    .line 1213
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setMobileDataEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 895
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 898
    :goto_5
    return-void

    .line 896
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setNetworkPreference(I)V
    .registers 3
    .param p1, "preference"    # I

    .prologue
    .line 523
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setNetworkPreference(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 526
    :goto_5
    return-void

    .line 524
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 1478
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1481
    :goto_5
    return-void

    .line 1479
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setRadio(IZ)Z
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "turnOn"    # Z

    .prologue
    .line 724
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setRadio(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 726
    :goto_6
    return v1

    .line 725
    :catch_7
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRadios(Z)Z
    .registers 4
    .param p1, "turnOn"    # Z

    .prologue
    .line 704
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setRadios(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 706
    :goto_6
    return v1

    .line 705
    :catch_7
    move-exception v0

    .line 706
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setUsbTethering(Z)I
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 1108
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUsbTethering(Z)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1110
    :goto_6
    return v1

    .line 1109
    :catch_7
    move-exception v0

    .line 1110
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 745
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, p2, v2}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    .line 748
    :goto_b
    return v1

    .line 747
    :catch_c
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_b
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 767
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 769
    :goto_6
    return v1

    .line 768
    :catch_7
    move-exception v0

    .line 769
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public supplyMessenger(ILandroid/os/Messenger;)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 1380
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1383
    :goto_5
    return-void

    .line 1381
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public tether(Ljava/lang/String;)I
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 989
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 991
    :goto_6
    return v1

    .line 990
    :catch_7
    move-exception v0

    .line 991
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public untether(Ljava/lang/String;)I
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1007
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1009
    :goto_6
    return v1

    .line 1008
    :catch_7
    move-exception v0

    .line 1009
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_6
.end method

.method public updateLockdownVpn()Z
    .registers 3

    .prologue
    .line 1328
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1330
    :goto_6
    return v1

    .line 1329
    :catch_7
    move-exception v0

    .line 1330
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method
