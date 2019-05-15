.class Landroid/net/wifi/WifiConfigStore;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfigStore$1;,
        Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;,
        Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DNS_KEY:Ljava/lang/String; = "dns"

.field private static final EOS:Ljava/lang/String; = "eos"

.field private static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field private static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final IPCONFIG_FILE_VERSION:I = 0x2

.field private static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field private static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field private static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field private static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field private static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field private static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final VDBG:Z

.field private static final ipConfigFile:Ljava/lang/String;


# instance fields
.field private mConfiguredNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mFileObserver:Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLastPriority:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mNetworkIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "wn"    # Landroid/net/wifi/WifiNative;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    .line 162
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    .line 165
    iput-object p1, p0, Landroid/net/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 173
    iput-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    .line 174
    iput-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mFileObserver:Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;

    .line 176
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 114
    sget-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiConfiguration;)I
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 114
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method private addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .registers 29
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1080
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    .line 1081
    .local v18, "netId":I
    const/16 v19, 0x0

    .line 1083
    .local v19, "newNetwork":Z
    const/16 v24, -0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_2a

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {p1 .. p1}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 1085
    .local v21, "savedNetId":Ljava/lang/Integer;
    if-eqz v21, :cond_ac

    .line 1086
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1097
    .end local v21    # "savedNetId":Ljava/lang/Integer;
    :cond_2a
    const/16 v22, 0x1

    .line 1101
    .local v22, "updateFailed":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_cf

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    const-string/jumbo v25, "ssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_cf

    .line 1106
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed to set SSID: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1289
    :goto_71
    if-eqz v22, :cond_598

    .line 1290
    if-eqz v19, :cond_a0

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->removeNetwork(I)Z

    .line 1292
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to set a network variable, removed network: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1294
    :cond_a0
    new-instance v20, Landroid/net/wifi/NetworkUpdateResult;

    const/16 v24, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    .line 1320
    .end local v22    # "updateFailed":Z
    :goto_ab
    return-object v20

    .line 1088
    .restart local v21    # "savedNetId":Ljava/lang/Integer;
    :cond_ac
    const/16 v19, 0x1

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiNative;->addNetwork()I

    move-result v18

    .line 1090
    if-gez v18, :cond_2a

    .line 1091
    const-string v24, "Failed to add a network!"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1092
    new-instance v20, Landroid/net/wifi/NetworkUpdateResult;

    const/16 v24, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    goto :goto_ab

    .line 1110
    .end local v21    # "savedNetId":Ljava/lang/Integer;
    .restart local v22    # "updateFailed":Z
    :cond_cf
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_115

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    const-string v25, "bssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_115

    .line 1115
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed to set BSSID: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1119
    :cond_115
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v24, v0

    sget-object v25, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1121
    .local v6, "allowedKeyManagementString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/BitSet;->cardinality()I

    move-result v24

    if-eqz v24, :cond_165

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    const-string v25, "key_mgmt"

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v6}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_165

    .line 1126
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed to set key_mgmt: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1131
    :cond_165
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v24, v0

    sget-object v25, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1133
    .local v8, "allowedProtocolsString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/BitSet;->cardinality()I

    move-result v24

    if-eqz v24, :cond_1b6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    const-string/jumbo v25, "proto"

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v8}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1b6

    .line 1138
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed to set proto: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1143
    :cond_1b6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v24, v0

    sget-object v25, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1145
    .local v4, "allowedAuthAlgorithmsString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/BitSet;->cardinality()I

    move-result v24

    if-eqz v24, :cond_206

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    const-string v25, "auth_alg"

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v4}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_206

    .line 1150
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed to set auth_alg: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1155
    :cond_206
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v24, v0

    sget-object v25, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1158
    .local v7, "allowedPairwiseCiphersString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/BitSet;->cardinality()I

    move-result v24

    if-eqz v24, :cond_257

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    const-string/jumbo v25, "pairwise"

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v7}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_257

    .line 1163
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed to set pairwise: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1168
    :cond_257
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v24, v0

    sget-object v25, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1170
    .local v5, "allowedGroupCiphersString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/BitSet;->cardinality()I

    move-result v24

    if-eqz v24, :cond_2a7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    const-string v25, "group"

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v5}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_2a7

    .line 1175
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed to set group: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1182
    :cond_2a7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2e5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "*"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2e5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    const-string/jumbo v25, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_2e5

    .line 1187
    const-string v24, "failed to set psk"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1191
    :cond_2e5
    const/4 v13, 0x0

    .line 1192
    .local v13, "hasSetKey":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_36c

    .line 1193
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2ef
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v14, v0, :cond_36c

    .line 1196
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    if-eqz v24, :cond_369

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v14

    const-string v25, "*"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_369

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    sget-object v25, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v25, v25, v14

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v26, v26, v14

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_368

    .line 1201
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed to set wep_key"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v14

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1204
    :cond_368
    const/4 v13, 0x1

    .line 1193
    :cond_369
    add-int/lit8 v14, v14, 0x1

    goto :goto_2ef

    .line 1209
    .end local v14    # "i":I
    :cond_36c
    if-eqz v13, :cond_3b1

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    const-string/jumbo v25, "wep_tx_keyidx"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_3b1

    .line 1214
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed to set wep_tx_keyidx: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1219
    :cond_3b1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    const-string/jumbo v25, "priority"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_3fe

    .line 1223
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": failed to set priority: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1228
    :cond_3fe
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v24, v0

    if-eqz v24, :cond_45a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v25, v0

    const-string/jumbo v26, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v24, v0

    if-eqz v24, :cond_457

    const/16 v24, 0x1

    :goto_419
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_45a

    .line 1232
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": failed to set hiddenSSID: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1228
    :cond_457
    const/16 v24, 0x0

    goto :goto_419

    .line 1237
    :cond_45a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v24, v0

    if-eqz v24, :cond_594

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_594

    .line 1240
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1242
    .local v11, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->needsKeyStore()Z

    move-result v24

    if-eqz v24, :cond_51d

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v24

    sget-object v25, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_4b2

    .line 1250
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": key store is locked"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1259
    :cond_4b2
    :try_start_4b2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 1260
    .local v9, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v17

    .line 1262
    .local v17, "keyId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->installKeys(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_51d

    .line 1263
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": failed to install keys"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_4f8
    .catch Ljava/lang/IllegalStateException; {:try_start_4b2 .. :try_end_4f8} :catch_4fa

    goto/16 :goto_71

    .line 1266
    .end local v9    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "keyId":Ljava/lang/String;
    :catch_4fa
    move-exception v10

    .line 1267
    .local v10, "e":Ljava/lang/IllegalStateException;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " invalid config for key installation"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1272
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :cond_51d
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v12

    .line 1273
    .local v12, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_529
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_594

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1274
    .local v16, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1275
    .local v23, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_529

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->removeKeys(Landroid/security/KeyStore;)V

    .line 1280
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": failed to set "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 1286
    .end local v11    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v12    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :cond_594
    const/16 v22, 0x0

    goto/16 :goto_71

    .line 1304
    .end local v4    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    .end local v5    # "allowedGroupCiphersString":Ljava/lang/String;
    .end local v6    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v7    # "allowedPairwiseCiphersString":Ljava/lang/String;
    .end local v8    # "allowedProtocolsString":Ljava/lang/String;
    .end local v13    # "hasSetKey":Z
    :cond_598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 1305
    .restart local v9    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_5bf

    .line 1306
    new-instance v9, Landroid/net/wifi/WifiConfiguration;

    .end local v9    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1307
    .restart local v9    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v24, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v24

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1308
    sget-object v24, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v24

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1309
    move/from16 v0, v18

    iput v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1312
    :cond_5bf
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v9}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v20

    .line 1318
    .local v20, "result":Landroid/net/wifi/NetworkUpdateResult;
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    .line 1319
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;->setNetworkId(I)V

    goto/16 :goto_ab
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .registers 7
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1663
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1674
    .local v0, "key":Ljava/lang/String;
    :goto_22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1

    .line 1665
    .end local v0    # "key":Ljava/lang/String;
    :cond_27
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1667
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_22

    .line 1668
    .end local v0    # "key":Ljava/lang/String;
    :cond_50
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-eqz v1, :cond_6c

    .line 1669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_22

    .line 1671
    .end local v0    # "key":Ljava/lang/String;
    :cond_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_22
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyIpSettingsFromConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/LinkProperties;
    .registers 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1426
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    .line 1427
    .local v3, "linkProperties":Landroid/net/LinkProperties;
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1428
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1429
    .local v2, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_18

    .line 1431
    .end local v2    # "linkAddr":Landroid/net/LinkAddress;
    :cond_28
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 1432
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_32

    .line 1434
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_42
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1435
    .local v0, "dns":Ljava/net/InetAddress;
    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_4c

    .line 1437
    .end local v0    # "dns":Ljava/net/InetAddress;
    :cond_5c
    return-object v3
.end method

.method private localLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1706
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_9

    .line 1707
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1709
    :cond_9
    return-void
.end method

.method private localLog(Ljava/lang/String;I)V
    .registers 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 1712
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-nez v1, :cond_5

    .line 1726
    :goto_4
    return-void

    .line 1717
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 1718
    :try_start_8
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1719
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_38

    .line 1721
    if-eqz v0, :cond_3b

    .line 1722
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1719
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1

    .line 1724
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3b
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1702
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1698
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    return-void
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 1643
    array-length v1, p2

    .line 1645
    .local v1, "size":I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1647
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_18

    .line 1648
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1656
    .end local v0    # "i":I
    :goto_14
    return v0

    .line 1647
    .restart local v0    # "i":I
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1654
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to look-up a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1656
    const/4 v0, -0x1

    goto :goto_14
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "set"    # Ljava/util/BitSet;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 1623
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1624
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 1628
    .local v1, "nextSetBit":I
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    .line 1630
    :goto_c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 1631
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 1635
    :cond_29
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_38

    .line 1636
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1639
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private markAllNetworksDisabled()V
    .registers 2

    .prologue
    .line 743
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 744
    return-void
.end method

.method private markAllNetworksDisabledExcept(I)V
    .registers 6
    .param p1, "netId"    # I

    .prologue
    const/4 v3, 0x1

    .line 732
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 733
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_b

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p1, :cond_b

    .line 734
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v3, :cond_b

    .line 735
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 736
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_b

    .line 740
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_27
    return-void
.end method

.method private readIpAndProxyConfigurations()V
    .registers 25

    .prologue
    .line 934
    const/4 v8, 0x0

    .line 936
    .local v8, "in":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v21, Ljava/io/BufferedInputStream;

    new-instance v22, Ljava/io/FileInputStream;

    sget-object v23, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct/range {v22 .. v23}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v21 .. v22}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_14} :catch_2a8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_2a5
    .catchall {:try_start_1 .. :try_end_14} :catchall_2a2

    .line 939
    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v9, "in":Ljava/io/DataInputStream;
    :try_start_14
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    .line 940
    .local v20, "version":I
    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6d

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6d

    .line 941
    const-string v21, "Bad version on IP configuration file, ignore read"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/EOFException; {:try_start_14 .. :try_end_31} :catch_e3
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_31} :catch_119
    .catchall {:try_start_14 .. :try_end_31} :catchall_190

    .line 1063
    if-eqz v9, :cond_36

    .line 1065
    :try_start_33
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_29c

    :cond_36
    :goto_36
    move-object v8, v9

    .line 1069
    .end local v9    # "in":Ljava/io/DataInputStream;
    .end local v20    # "version":I
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :cond_37
    :goto_37
    return-void

    .line 998
    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v5, "exclusionList":Ljava/lang/String;
    .local v7, "id":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .local v10, "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v11, "key":Ljava/lang/String;
    .local v13, "linkProperties":Landroid/net/LinkProperties;
    .local v14, "pacFileUrl":Ljava/lang/String;
    .local v15, "proxyHost":Ljava/lang/String;
    .local v17, "proxyPort":I
    .local v19, "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v20    # "version":I
    :cond_38
    :try_start_38
    const-string v21, "eos"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_3f} :catch_c5
    .catch Ljava/io/EOFException; {:try_start_38 .. :try_end_3f} :catch_e3
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3f} :catch_119
    .catchall {:try_start_38 .. :try_end_3f} :catchall_190

    move-result v21

    if-eqz v21, :cond_1f0

    .line 1008
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v7, v0, :cond_291

    .line 1009
    :try_start_48
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1012
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_215

    .line 1013
    const-string v21, "configuration found for missing network, ignored"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 946
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "linkProperties":Landroid/net/LinkProperties;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_6d
    :goto_6d
    const/4 v7, -0x1

    .line 948
    .restart local v7    # "id":I
    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 949
    .restart local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    sget-object v19, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 950
    .restart local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    new-instance v13, Landroid/net/LinkProperties;

    invoke-direct {v13}, Landroid/net/LinkProperties;-><init>()V

    .line 951
    .restart local v13    # "linkProperties":Landroid/net/LinkProperties;
    const/4 v15, 0x0

    .line 952
    .restart local v15    # "proxyHost":Ljava/lang/String;
    const/4 v14, 0x0

    .line 953
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    const/16 v17, -0x1

    .line 954
    .restart local v17    # "proxyPort":I
    const/4 v5, 0x0

    .line 958
    .restart local v5    # "exclusionList":Ljava/lang/String;
    :goto_7c
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_7f
    .catch Ljava/io/EOFException; {:try_start_48 .. :try_end_7f} :catch_e3
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_7f} :catch_119
    .catchall {:try_start_48 .. :try_end_7f} :catchall_190

    move-result-object v11

    .line 960
    .restart local v11    # "key":Ljava/lang/String;
    :try_start_80
    const-string v21, "id"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8f

    .line 961
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    goto :goto_7c

    .line 962
    :cond_8f
    const-string v21, "ipAssignment"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a2

    .line 963
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-result-object v10

    goto :goto_7c

    .line 964
    :cond_a2
    const-string v21, "linkAddress"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_ef

    .line 965
    new-instance v12, Landroid/net/LinkAddress;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 967
    .local v12, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v13, v12}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_80 .. :try_end_c4} :catch_c5
    .catch Ljava/io/EOFException; {:try_start_80 .. :try_end_c4} :catch_e3
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_c4} :catch_119
    .catchall {:try_start_80 .. :try_end_c4} :catchall_190

    goto :goto_7c

    .line 1003
    .end local v12    # "linkAddr":Landroid/net/LinkAddress;
    :catch_c5
    move-exception v4

    .line 1004
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_c6
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ignore invalid address while reading"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_e2
    .catch Ljava/io/EOFException; {:try_start_c6 .. :try_end_e2} :catch_e3
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_e2} :catch_119
    .catchall {:try_start_c6 .. :try_end_e2} :catchall_190

    goto :goto_7c

    .line 1059
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "linkProperties":Landroid/net/LinkProperties;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v20    # "version":I
    :catch_e3
    move-exception v21

    move-object v8, v9

    .line 1063
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :goto_e5
    if-eqz v8, :cond_37

    .line 1065
    :try_start_e7
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ea} :catch_ec

    goto/16 :goto_37

    .line 1066
    :catch_ec
    move-exception v21

    goto/16 :goto_37

    .line 968
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "exclusionList":Ljava/lang/String;
    .restart local v7    # "id":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v13    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    .restart local v15    # "proxyHost":Ljava/lang/String;
    .restart local v17    # "proxyPort":I
    .restart local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v20    # "version":I
    :cond_ef
    :try_start_ef
    const-string v21, "gateway"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_177

    .line 969
    const/4 v3, 0x0

    .line 970
    .local v3, "dest":Landroid/net/LinkAddress;
    const/4 v6, 0x0

    .line 971
    .local v6, "gateway":Ljava/net/InetAddress;
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_141

    .line 973
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 984
    :cond_10b
    :goto_10b
    new-instance v21, Landroid/net/RouteInfo;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_117
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ef .. :try_end_117} :catch_c5
    .catch Ljava/io/EOFException; {:try_start_ef .. :try_end_117} :catch_e3
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_117} :catch_119
    .catchall {:try_start_ef .. :try_end_117} :catchall_190

    goto/16 :goto_7c

    .line 1060
    .end local v3    # "dest":Landroid/net/LinkAddress;
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v6    # "gateway":Ljava/net/InetAddress;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "linkProperties":Landroid/net/LinkProperties;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v20    # "version":I
    :catch_119
    move-exception v4

    move-object v8, v9

    .line 1061
    .end local v9    # "in":Ljava/io/DataInputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :goto_11b
    :try_start_11b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error parsing configuration"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_137
    .catchall {:try_start_11b .. :try_end_137} :catchall_2a2

    .line 1063
    if-eqz v8, :cond_37

    .line 1065
    :try_start_139
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13c} :catch_13e

    goto/16 :goto_37

    .line 1066
    :catch_13e
    move-exception v21

    goto/16 :goto_37

    .line 975
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "dest":Landroid/net/LinkAddress;
    .restart local v5    # "exclusionList":Ljava/lang/String;
    .restart local v6    # "gateway":Ljava/net/InetAddress;
    .restart local v7    # "id":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v13    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    .restart local v15    # "proxyHost":Ljava/lang/String;
    .restart local v17    # "proxyPort":I
    .restart local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v20    # "version":I
    :cond_141
    :try_start_141
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_162

    .line 976
    new-instance v3, Landroid/net/LinkAddress;

    .end local v3    # "dest":Landroid/net/LinkAddress;
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 980
    .restart local v3    # "dest":Landroid/net/LinkAddress;
    :cond_162
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10b

    .line 981
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_10b

    .line 985
    .end local v3    # "dest":Landroid/net/LinkAddress;
    .end local v6    # "gateway":Ljava/net/InetAddress;
    :cond_177
    const-string v21, "dns"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_198

    .line 986
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_18e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_141 .. :try_end_18e} :catch_c5
    .catch Ljava/io/EOFException; {:try_start_141 .. :try_end_18e} :catch_e3
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_18e} :catch_119
    .catchall {:try_start_141 .. :try_end_18e} :catchall_190

    goto/16 :goto_7c

    .line 1063
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "linkProperties":Landroid/net/LinkProperties;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v20    # "version":I
    :catchall_190
    move-exception v21

    move-object v8, v9

    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :goto_192
    if-eqz v8, :cond_197

    .line 1065
    :try_start_194
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_197} :catch_29f

    .line 1066
    :cond_197
    :goto_197
    throw v21

    .line 988
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "exclusionList":Ljava/lang/String;
    .restart local v7    # "id":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v13    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    .restart local v15    # "proxyHost":Ljava/lang/String;
    .restart local v17    # "proxyPort":I
    .restart local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v20    # "version":I
    :cond_198
    :try_start_198
    const-string/jumbo v21, "proxySettings"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1ad

    .line 989
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-result-object v19

    goto/16 :goto_7c

    .line 990
    :cond_1ad
    const-string/jumbo v21, "proxyHost"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1be

    .line 991
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_7c

    .line 992
    :cond_1be
    const-string/jumbo v21, "proxyPort"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1cf

    .line 993
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    goto/16 :goto_7c

    .line 994
    :cond_1cf
    const-string/jumbo v21, "proxyPac"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e0

    .line 995
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7c

    .line 996
    :cond_1e0
    const-string v21, "exclusionList"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_38

    .line 997
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7c

    .line 1001
    :cond_1f0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ignore unknown key "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "while reading"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_213
    .catch Ljava/lang/IllegalArgumentException; {:try_start_198 .. :try_end_213} :catch_c5
    .catch Ljava/io/EOFException; {:try_start_198 .. :try_end_213} :catch_e3
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_213} :catch_119
    .catchall {:try_start_198 .. :try_end_213} :catchall_190

    goto/16 :goto_7c

    .line 1015
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_215
    :try_start_215
    iput-object v13, v2, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1016
    sget-object v21, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_2ac

    .line 1026
    const-string v21, "Ignore invalid ip assignment while reading"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1030
    :goto_22b
    sget-object v21, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_2b6

    .line 1051
    const-string v21, "Ignore invalid proxy settings while reading"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 1019
    :pswitch_241
    iput-object v10, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_22b

    .line 1022
    :pswitch_244
    const-string v21, "BUG: Found UNASSIGNED IP on file, use DHCP"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1023
    sget-object v21, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v21

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_22b

    .line 1032
    :pswitch_254
    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1033
    new-instance v18, Landroid/net/ProxyProperties;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v15, v1, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1035
    .local v18, "proxyProperties":Landroid/net/ProxyProperties;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_6d

    .line 1038
    .end local v18    # "proxyProperties":Landroid/net/ProxyProperties;
    :pswitch_268
    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1039
    new-instance v16, Landroid/net/ProxyProperties;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v16, "proxyPacProperties":Landroid/net/ProxyProperties;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_6d

    .line 1044
    .end local v16    # "proxyPacProperties":Landroid/net/ProxyProperties;
    :pswitch_27a
    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto/16 :goto_6d

    .line 1047
    :pswitch_280
    const-string v21, "BUG: Found UNASSIGNED proxy on file, use NONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1048
    sget-object v21, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v21

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto/16 :goto_6d

    .line 1056
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_291
    const-string v21, "Missing id while parsing configuration"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V
    :try_end_29a
    .catch Ljava/io/EOFException; {:try_start_215 .. :try_end_29a} :catch_e3
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_29a} :catch_119
    .catchall {:try_start_215 .. :try_end_29a} :catchall_190

    goto/16 :goto_6d

    .line 1066
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "linkProperties":Landroid/net/LinkProperties;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :catch_29c
    move-exception v21

    goto/16 :goto_36

    .end local v9    # "in":Ljava/io/DataInputStream;
    .end local v20    # "version":I
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :catch_29f
    move-exception v22

    goto/16 :goto_197

    .line 1063
    :catchall_2a2
    move-exception v21

    goto/16 :goto_192

    .line 1060
    :catch_2a5
    move-exception v4

    goto/16 :goto_11b

    .line 1059
    :catch_2a8
    move-exception v21

    goto/16 :goto_e5

    .line 1016
    nop

    :pswitch_data_2ac
    .packed-switch 0x1
        :pswitch_241
        :pswitch_241
        :pswitch_244
    .end packed-switch

    .line 1030
    :pswitch_data_2b6
    .packed-switch 0x1
        :pswitch_254
        :pswitch_268
        :pswitch_27a
        :pswitch_280
    .end packed-switch
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .registers 16
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1448
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1449
    .local v7, "netId":I
    if-gez v7, :cond_5

    .line 1607
    :goto_4
    return-void

    .line 1459
    :cond_5
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "ssid"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1460
    .local v10, "value":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b9

    .line 1461
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x22

    if-eq v11, v12, :cond_b6

    .line 1462
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1472
    :goto_40
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v12, "bssid"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1473
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_bd

    .line 1474
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1479
    :goto_50
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "priority"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1480
    const/4 v11, -0x1

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1481
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_68

    .line 1483
    :try_start_62
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_68} :catch_21b

    .line 1488
    :cond_68
    :goto_68
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "scan_ssid"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1489
    const/4 v11, 0x0

    iput-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1490
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_83

    .line 1492
    :try_start_7a
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_c1

    const/4 v11, 0x1

    :goto_81
    iput-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_7a .. :try_end_83} :catch_218

    .line 1497
    :cond_83
    :goto_83
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "wep_tx_keyidx"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1498
    const/4 v11, -0x1

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1499
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9b

    .line 1501
    :try_start_95
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_9b} :catch_215

    .line 1506
    :cond_9b
    :goto_9b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9c
    const/4 v11, 0x4

    if-ge v2, v11, :cond_c9

    .line 1507
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    sget-object v12, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1509
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c3

    .line 1510
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v10, v11, v2

    .line 1506
    :goto_b3
    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    .line 1466
    .end local v2    # "i":I
    :cond_b6
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_40

    .line 1469
    :cond_b9
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_40

    .line 1476
    :cond_bd
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_50

    .line 1492
    :cond_c1
    const/4 v11, 0x0

    goto :goto_81

    .line 1512
    .restart local v2    # "i":I
    :cond_c3
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v11, v2

    goto :goto_b3

    .line 1516
    :cond_c9
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "psk"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1517
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_108

    .line 1518
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1523
    :goto_da
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v13, "proto"

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1525
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10c

    .line 1526
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1527
    .local v9, "vals":[Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_f4
    if-ge v3, v6, :cond_10c

    aget-object v8, v0, v3

    .line 1528
    .local v8, "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1530
    .local v4, "index":I
    if-ltz v4, :cond_105

    .line 1531
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 1527
    :cond_105
    add-int/lit8 v3, v3, 0x1

    goto :goto_f4

    .line 1520
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_108
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_da

    .line 1536
    :cond_10c
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "key_mgmt"

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1538
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_139

    .line 1539
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1540
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_125
    if-ge v3, v6, :cond_139

    aget-object v8, v0, v3

    .line 1541
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1543
    .restart local v4    # "index":I
    if-ltz v4, :cond_136

    .line 1544
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 1540
    :cond_136
    add-int/lit8 v3, v3, 0x1

    goto :goto_125

    .line 1549
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_139
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "auth_alg"

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1551
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_166

    .line 1552
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1553
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_152
    if-ge v3, v6, :cond_166

    aget-object v8, v0, v3

    .line 1554
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1556
    .restart local v4    # "index":I
    if-ltz v4, :cond_163

    .line 1557
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 1553
    :cond_163
    add-int/lit8 v3, v3, 0x1

    goto :goto_152

    .line 1562
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_166
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v13, "pairwise"

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1564
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_194

    .line 1565
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1566
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_180
    if-ge v3, v6, :cond_194

    aget-object v8, v0, v3

    .line 1567
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1569
    .restart local v4    # "index":I
    if-ltz v4, :cond_191

    .line 1570
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 1566
    :cond_191
    add-int/lit8 v3, v3, 0x1

    goto :goto_180

    .line 1575
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_194
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "group"

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1577
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c1

    .line 1578
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1579
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1ad
    if-ge v3, v6, :cond_1c1

    aget-object v8, v0, v3

    .line 1580
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1582
    .restart local v4    # "index":I
    if-ltz v4, :cond_1be

    .line 1583
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 1579
    :cond_1be
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ad

    .line 1588
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_1c1
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v11, :cond_1cc

    .line 1589
    new-instance v11, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v11}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1591
    :cond_1cc
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v1

    .line 1592
    .local v1, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/net/wifi/WifiEnterpriseConfig;->getSupplicantKeys()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1d8
    if-ge v3, v6, :cond_1f8

    aget-object v5, v0, v3

    .line 1593
    .local v5, "key":Ljava/lang/String;
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v11, v7, v5}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1594
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1f2

    .line 1595
    invoke-direct {p0, v10}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    :goto_1ef
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d8

    .line 1597
    :cond_1f2
    const-string v11, "NULL"

    invoke-virtual {v1, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ef

    .line 1601
    .end local v5    # "key":Ljava/lang/String;
    :cond_1f8
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v12, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v11, v12, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->migrateOldEapTlsNative(Landroid/net/wifi/WifiNative;I)Z

    move-result v11

    if-eqz v11, :cond_205

    .line 1602
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    .line 1605
    :cond_205
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v12, p0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->migrateCerts(Landroid/security/KeyStore;)V

    .line 1606
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v12, p0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->initializeSoftwareKeystoreFlag(Landroid/security/KeyStore;)V

    goto/16 :goto_4

    .line 1502
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :catch_215
    move-exception v11

    goto/16 :goto_9b

    .line 1493
    :catch_218
    move-exception v11

    goto/16 :goto_83

    .line 1484
    :catch_21b
    move-exception v11

    goto/16 :goto_68
.end method

.method private removeConfigAndSendBroadcastIfNeeded(I)V
    .registers 5
    .param p1, "netId"    # I

    .prologue
    .line 389
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 390
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_36

    .line 392
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_19

    .line 393
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->removeKeys(Landroid/security/KeyStore;)V

    .line 395
    :cond_19
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 399
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 401
    :cond_36
    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1611
    .local v0, "length":I
    if-le v0, v2, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1e

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1e

    .line 1613
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1615
    .end local p1    # "string":Ljava/lang/String;
    :cond_1e
    return-object p1
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .registers 4

    .prologue
    .line 644
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 646
    const-string v1, "multipleChanges"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 647
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 648
    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 6
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    .line 632
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 634
    const-string v1, "multipleChanges"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 635
    const-string/jumbo v1, "wifiConfiguration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 636
    const-string v1, "changeReason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 638
    return-void
.end method

.method private writeIpAndProxyConfigurations()V
    .registers 5

    .prologue
    .line 769
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 771
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 774
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_24
    invoke-static {v2}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->write(Ljava/util/List;)V

    .line 775
    return-void
.end method

.method private writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .registers 22
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1327
    const/4 v8, 0x0

    .line 1328
    .local v8, "ipChanged":Z
    const/4 v15, 0x0

    .line 1329
    .local v15, "proxyChanged":Z
    const/4 v10, 0x0

    .line 1331
    .local v10, "linkProperties":Landroid/net/LinkProperties;
    sget-object v17, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_206

    .line 1366
    const-string v17, "Ignore invalid ip assignment during write"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1370
    :cond_1d
    :goto_1d
    :pswitch_1d
    sget-object v17, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_210

    .line 1391
    const-string v17, "Ignore invalid proxy configuration during write"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1395
    :cond_37
    :goto_37
    :pswitch_37
    if-nez v8, :cond_15c

    .line 1396
    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/WifiConfigStore;->copyIpSettingsFromConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/LinkProperties;

    move-result-object v10

    .line 1405
    :goto_3d
    if-nez v15, :cond_1a0

    .line 1406
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1416
    :cond_4e
    :goto_4e
    if-nez v8, :cond_52

    if-eqz v15, :cond_64

    .line 1417
    :cond_52
    move-object/from16 v0, p1

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1418
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 1419
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1422
    :cond_64
    new-instance v17, Landroid/net/wifi/NetworkUpdateResult;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v15}, Landroid/net/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object v17

    .line 1333
    :pswitch_6c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v5

    .line 1335
    .local v5, "currentLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v13

    .line 1337
    .local v13, "newLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    .line 1338
    .local v3, "currentDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    .line 1339
    .local v11, "newDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    .line 1340
    .local v6, "currentRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v14

    .line 1342
    .local v14, "newRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_bc

    invoke-interface {v5, v13}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_103

    :cond_bc
    const/4 v9, 0x1

    .line 1345
    .local v9, "linkAddressesDiffer":Z
    :goto_bd
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d1

    invoke-interface {v3, v11}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_105

    :cond_d1
    const/4 v7, 0x1

    .line 1347
    .local v7, "dnsesDiffer":Z
    :goto_d2
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e6

    invoke-interface {v6, v14}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_107

    :cond_e6
    const/16 v16, 0x1

    .line 1350
    .local v16, "routesDiffer":Z
    :goto_e8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_100

    if-nez v9, :cond_100

    if-nez v7, :cond_100

    if-eqz v16, :cond_1d

    .line 1354
    :cond_100
    const/4 v8, 0x1

    goto/16 :goto_1d

    .line 1342
    .end local v7    # "dnsesDiffer":Z
    .end local v9    # "linkAddressesDiffer":Z
    .end local v16    # "routesDiffer":Z
    :cond_103
    const/4 v9, 0x0

    goto :goto_bd

    .line 1345
    .restart local v9    # "linkAddressesDiffer":Z
    :cond_105
    const/4 v7, 0x0

    goto :goto_d2

    .line 1347
    .restart local v7    # "dnsesDiffer":Z
    :cond_107
    const/16 v16, 0x0

    goto :goto_e8

    .line 1358
    .end local v3    # "currentDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v5    # "currentLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v6    # "currentRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    .end local v7    # "dnsesDiffer":Z
    .end local v9    # "linkAddressesDiffer":Z
    .end local v11    # "newDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v13    # "newLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v14    # "newRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    :pswitch_10a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1d

    .line 1359
    const/4 v8, 0x1

    goto/16 :goto_1d

    .line 1373
    :pswitch_11f
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v12

    .line 1374
    .local v12, "newHttpProxy":Landroid/net/ProxyProperties;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 1376
    .local v4, "currentHttpProxy":Landroid/net/ProxyProperties;
    if-eqz v12, :cond_140

    .line 1377
    invoke-virtual {v12, v4}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13e

    const/4 v15, 0x1

    :goto_13c
    goto/16 :goto_37

    :cond_13e
    const/4 v15, 0x0

    goto :goto_13c

    .line 1379
    :cond_140
    if-eqz v4, :cond_145

    const/4 v15, 0x1

    .line 1381
    :goto_143
    goto/16 :goto_37

    .line 1379
    :cond_145
    const/4 v15, 0x0

    goto :goto_143

    .line 1383
    .end local v4    # "currentHttpProxy":Landroid/net/ProxyProperties;
    .end local v12    # "newHttpProxy":Landroid/net/ProxyProperties;
    :pswitch_147
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_37

    .line 1384
    const/4 v15, 0x1

    goto/16 :goto_37

    .line 1398
    :cond_15c
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1399
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->copyIpSettingsFromConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/LinkProperties;

    move-result-object v10

    .line 1400
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IP config changed SSID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " linkProperties: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 1408
    :cond_1a0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1409
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1410
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "proxy changed SSID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v17

    if-eqz v17, :cond_4e

    .line 1412
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " proxyProperties: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 1331
    :pswitch_data_206
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_10a
        :pswitch_1d
    .end packed-switch

    .line 1370
    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_11f
        :pswitch_11f
        :pswitch_147
        :pswitch_37
    .end packed-switch
.end method


# virtual methods
.method addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 361
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v0

    .line 362
    .local v0, "result":Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    .line 363
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v0, Landroid/net/wifi/NetworkUpdateResult;->isNewNetwork:Z

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    :goto_20
    invoke-direct {p0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 367
    :cond_23
    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    return v1

    .line 363
    :cond_28
    const/4 v2, 0x2

    goto :goto_20
.end method

.method clearLinkProperties(I)V
    .registers 6
    .param p1, "netId"    # I

    .prologue
    .line 588
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 589
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_22

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_22

    .line 591
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 592
    .local v1, "proxy":Landroid/net/ProxyProperties;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->clear()V

    .line 593
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 595
    .end local v1    # "proxy":Landroid/net/ProxyProperties;
    :cond_22
    return-void
.end method

.method disableAllNetworks()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 446
    const/4 v2, 0x0

    .line 447
    .local v2, "networkDisabled":Z
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 448
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_c

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v5, :cond_c

    .line 449
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->disableNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 450
    const/4 v2, 0x1

    .line 451
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_c

    .line 453
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable network failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_c

    .line 458
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_45
    if-eqz v2, :cond_4a

    .line 459
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 461
    :cond_4a
    return-void
.end method

.method disableNetwork(I)Z
    .registers 3
    .param p1, "netId"    # I

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    return v0
.end method

.method disableNetwork(II)Z
    .registers 9
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .prologue
    const/4 v5, 0x1

    .line 479
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiNative;->disableNetwork(I)Z

    move-result v2

    .line 480
    .local v2, "ret":Z
    const/4 v1, 0x0

    .line 481
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 483
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1f

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v5, :cond_1f

    .line 484
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 485
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 486
    move-object v1, v0

    .line 488
    :cond_1f
    if-eqz v1, :cond_25

    .line 489
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 492
    :cond_25
    return v2
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1678
    const-string v2, "WifiConfigStore"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    const-string v2, "Configured networks"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1682
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2a

    .line 1684
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_3a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1686
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v2, :cond_50

    .line 1687
    const-string v2, "WifiConfigStore - Log Begin ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1689
    const-string v2, "WifiConfigStore - Log End ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    :cond_50
    return-void
.end method

.method enableAllNetworks()V
    .registers 7

    .prologue
    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, "networkEnabledStateChanged":Z
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 223
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_b

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 224
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 225
    const/4 v2, 0x1

    .line 226
    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_b

    .line 228
    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable network failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_b

    .line 233
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_47
    if-eqz v2, :cond_51

    .line 234
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 235
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 237
    :cond_51
    return-void
.end method

.method enableNetwork(IZ)Z
    .registers 9
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 413
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v2

    .line 414
    .local v2, "ret":Z
    if-eqz p2, :cond_a

    .line 416
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 429
    :cond_9
    :goto_9
    return v2

    .line 419
    :cond_a
    const/4 v1, 0x0

    .line 420
    .local v1, "enabledNetwork":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 421
    :try_start_e
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    move-object v1, v0

    .line 422
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_24

    .line 424
    if-eqz v1, :cond_9

    .line 425
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_9

    .line 422
    :catchall_24
    move-exception v3

    :try_start_25
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v3
.end method

.method enableNetworkWithoutBroadcast(IZ)Z
    .registers 7
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 433
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v1

    .line 435
    .local v1, "ret":Z
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 436
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_17

    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 438
    :cond_17
    if-eqz p2, :cond_1c

    .line 439
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 441
    :cond_1c
    return v1
.end method

.method forgetNetwork(I)Z
    .registers 4
    .param p1, "netId"    # I

    .prologue
    .line 340
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->removeNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 341
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 342
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)V

    .line 343
    const/4 v0, 0x1

    .line 346
    :goto_11
    return v0

    .line 345
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getConfigFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1694
    sget-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method getConfiguredNetworks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 211
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 213
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_24
    return-object v2
.end method

.method getLinkProperties(I)Landroid/net/LinkProperties;
    .registers 5
    .param p1, "netId"    # I

    .prologue
    .line 564
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 565
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_16

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 566
    :goto_15
    return-object v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method getProxyProperties(I)Landroid/net/ProxyProperties;
    .registers 5
    .param p1, "netId"    # I

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    .line 605
    .local v0, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v0, :cond_10

    .line 606
    new-instance v1, Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    .line 608
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method isUsingStaticIp(I)Z
    .registers 5
    .param p1, "netId"    # I

    .prologue
    .line 617
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 618
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_16

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v2, :cond_16

    .line 619
    const/4 v1, 0x1

    .line 621
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method loadAndEnableAllNetworks()V
    .registers 2

    .prologue
    .line 199
    const-string v0, "Loading config and enabling all networks"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 201
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 202
    return-void
.end method

.method loadConfiguredNetworks()V
    .registers 13

    .prologue
    .line 651
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v5

    .line 652
    .local v5, "listStr":Ljava/lang/String;
    const/4 v9, 0x0

    iput v9, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    .line 654
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 655
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 657
    if-nez v5, :cond_16

    .line 728
    :cond_15
    :goto_15
    return-void

    .line 660
    :cond_16
    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 662
    .local v4, "lines":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1d
    array-length v9, v4

    if-ge v2, v9, :cond_c9

    .line 663
    aget-object v9, v4, v2

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 665
    .local v8, "result":[Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 667
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v9, 0x0

    :try_start_2e
    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_36} :catch_71

    .line 672
    array-length v9, v8

    const/4 v10, 0x3

    if-le v9, v10, :cond_a6

    .line 673
    const/4 v9, 0x3

    aget-object v9, v8, v9

    const-string v10, "[CURRENT]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_92

    .line 674
    const/4 v9, 0x0

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 682
    :goto_49
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 683
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v10, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    if-le v9, v10, :cond_56

    .line 684
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v9, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    .line 686
    :cond_56
    sget-object v9, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v9, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 687
    sget-object v9, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v9, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 689
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_aa

    .line 662
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 668
    :catch_71
    move-exception v1

    .line 669
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read network-id \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_6e

    .line 675
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_92
    const/4 v9, 0x3

    aget-object v9, v8, v9

    const-string v10, "[DISABLED]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a2

    .line 676
    const/4 v9, 0x1

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_49

    .line 678
    :cond_a2
    const/4 v9, 0x2

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_49

    .line 680
    :cond_a6
    const/4 v9, 0x2

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_49

    .line 693
    :cond_aa
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    .line 699
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "result":[Ljava/lang/String;
    :cond_c9
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    .line 700
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 704
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-nez v9, :cond_15

    .line 706
    const/4 v6, 0x0

    .line 708
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_d8
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e4
    .catch Ljava/io/FileNotFoundException; {:try_start_d8 .. :try_end_e4} :catch_f9
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e4} :catch_104
    .catchall {:try_start_d8 .. :try_end_e4} :catchall_10f

    .line 710
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_e4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    :goto_e8
    if-eqz v3, :cond_ef

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_e4 .. :try_end_ed} :catch_11e
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_ed} :catch_11b
    .catchall {:try_start_e4 .. :try_end_ed} :catchall_118

    move-result-object v3

    goto :goto_e8

    .line 720
    :cond_ef
    if-eqz v7, :cond_15

    .line 721
    :try_start_f1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f6

    goto/16 :goto_15

    .line 723
    :catch_f6
    move-exception v9

    goto/16 :goto_15

    .line 714
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_f9
    move-exception v9

    .line 720
    :goto_fa
    if-eqz v6, :cond_15

    .line 721
    :try_start_fc
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_101

    goto/16 :goto_15

    .line 723
    :catch_101
    move-exception v9

    goto/16 :goto_15

    .line 716
    :catch_104
    move-exception v9

    .line 720
    :goto_105
    if-eqz v6, :cond_15

    .line 721
    :try_start_107
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_10c

    goto/16 :goto_15

    .line 723
    :catch_10c
    move-exception v9

    goto/16 :goto_15

    .line 719
    :catchall_10f
    move-exception v9

    .line 720
    :goto_110
    if-eqz v6, :cond_115

    .line 721
    :try_start_112
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_116

    .line 725
    :cond_115
    :goto_115
    throw v9

    .line 723
    :catch_116
    move-exception v10

    goto :goto_115

    .line 719
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_118
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_110

    .line 716
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_11b
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_105

    .line 714
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_11e
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_fa
.end method

.method needsUnlockedKeyStore()Z
    .registers 5

    .prologue
    .line 752
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 754
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 757
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->needsSoftwareBackedKeyStore()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 758
    const/4 v2, 0x1

    .line 763
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_31
    return v2

    :cond_32
    const/4 v2, 0x0

    goto :goto_31
.end method

.method removeNetwork(I)Z
    .registers 4
    .param p1, "netId"    # I

    .prologue
    .line 381
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNative;->removeNetwork(I)Z

    move-result v0

    .line 382
    .local v0, "ret":Z
    if-eqz v0, :cond_b

    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)V

    .line 385
    :cond_b
    return v0
.end method

.method saveConfig()Z
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    move-result v0

    return v0
.end method

.method saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .registers 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 292
    if-eqz p1, :cond_d

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v6, :cond_13

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 294
    :cond_d
    new-instance v2, Landroid/net/wifi/NetworkUpdateResult;

    invoke-direct {v2, v6}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    .line 308
    :goto_12
    return-object v2

    .line 297
    :cond_13
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v6, :cond_46

    const/4 v1, 0x1

    .line 298
    .local v1, "newNetwork":Z
    :goto_18
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v2

    .line 299
    .local v2, "result":Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    .line 301
    .local v0, "netId":I
    if-eqz v1, :cond_37

    if-eq v0, v6, :cond_37

    .line 302
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v0, v4}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    .line 303
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 305
    :cond_37
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 306
    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v3

    if-eqz v3, :cond_48

    :goto_42
    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_12

    .end local v0    # "netId":I
    .end local v1    # "newNetwork":Z
    .end local v2    # "result":Landroid/net/wifi/NetworkUpdateResult;
    :cond_46
    move v1, v4

    .line 297
    goto :goto_18

    .restart local v0    # "netId":I
    .restart local v1    # "newNetwork":Z
    .restart local v2    # "result":Landroid/net/wifi/NetworkUpdateResult;
    :cond_48
    move v4, v5

    .line 306
    goto :goto_42
.end method

.method selectNetwork(I)Z
    .registers 9
    .param p1, "netId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 254
    if-ne p1, v6, :cond_6

    .line 280
    :goto_5
    return v2

    .line 257
    :cond_6
    iget v4, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    if-eq v4, v6, :cond_11

    iget v4, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    const v5, 0xf4240

    if-le v4, v5, :cond_33

    .line 258
    :cond_11
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 259
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v4, v6, :cond_1b

    .line 260
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 261
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto :goto_1b

    .line 264
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_31
    iput v2, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    .line 268
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_33
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 269
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 270
    iget v2, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 272
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    .line 273
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 276
    invoke-virtual {p0, p1, v3}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move v2, v3

    .line 280
    goto :goto_5
.end method

.method setLinkProperties(ILandroid/net/LinkProperties;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 573
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 574
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1d

    .line 576
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_1b

    .line 577
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 579
    :cond_1b
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 581
    :cond_1d
    return-void
.end method

.method startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 547
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 548
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 550
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 551
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 556
    :goto_16
    return-object v0

    .line 553
    :cond_17
    const-string v1, "Failed to start WPS push button configuration"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 554
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_16
.end method

.method startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .registers 6
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 510
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 511
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 513
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 514
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 519
    :goto_18
    return-object v0

    .line 516
    :cond_19
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 517
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_18
.end method

.method startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 528
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 529
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 531
    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 532
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 533
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 538
    :goto_1e
    return-object v0

    .line 535
    :cond_1f
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 536
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_1e
.end method

.method updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 312
    const/4 v1, -0x1

    if-eq p1, v1, :cond_11

    .line 313
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 314
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_12

    .line 330
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_11
    :goto_11
    return-void

    .line 315
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_12
    sget-object v1, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    goto :goto_11

    .line 317
    :pswitch_1e
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_11

    .line 321
    :pswitch_22
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_11

    .line 322
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_11

    .line 315
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_22
    .end packed-switch
.end method
