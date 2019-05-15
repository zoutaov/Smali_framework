.class public Landroid/net/NetworkPolicyManager;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"


# static fields
.field private static final ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field public static final RULE_ALLOW_ALL:I = 0x0

.field public static final RULE_REJECT_METERED:I = 0x1


# instance fields
.field private mService:Landroid/net/INetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/INetworkPolicyManager;)V
    .registers 4
    .param p1, "service"    # Landroid/net/INetworkPolicyManager;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_d

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing INetworkPolicyManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_d
    iput-object p1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    .line 69
    return-void
.end method

.method public static computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .registers 10
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 157
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    .line 158
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to compute boundary without cycleDay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_f
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, "now":Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 165
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 166
    .local v0, "cycle":Landroid/text/format/Time;
    iput v6, v0, Landroid/text/format/Time;->second:I

    iput v6, v0, Landroid/text/format/Time;->minute:I

    iput v6, v0, Landroid/text/format/Time;->hour:I

    .line 167
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 169
    invoke-static {v0, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-ltz v3, :cond_4d

    .line 172
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 173
    .local v1, "lastMonth":Landroid/text/format/Time;
    iput v6, v1, Landroid/text/format/Time;->second:I

    iput v6, v1, Landroid/text/format/Time;->minute:I

    iput v6, v1, Landroid/text/format/Time;->hour:I

    .line 174
    iput v5, v1, Landroid/text/format/Time;->monthDay:I

    .line 175
    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/text/format/Time;->month:I

    .line 176
    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 178
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 179
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 182
    .end local v1    # "lastMonth":Landroid/text/format/Time;
    :cond_4d
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    return-wide v3
.end method

.method public static computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .registers 10
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 187
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    .line 188
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to compute boundary without cycleDay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_f
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, "now":Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 195
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 196
    .local v0, "cycle":Landroid/text/format/Time;
    iput v6, v0, Landroid/text/format/Time;->second:I

    iput v6, v0, Landroid/text/format/Time;->minute:I

    iput v6, v0, Landroid/text/format/Time;->hour:I

    .line 197
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 199
    invoke-static {v0, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-gtz v3, :cond_4d

    .line 202
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 203
    .local v1, "nextMonth":Landroid/text/format/Time;
    iput v6, v1, Landroid/text/format/Time;->second:I

    iput v6, v1, Landroid/text/format/Time;->minute:I

    iput v6, v1, Landroid/text/format/Time;->hour:I

    .line 204
    iput v5, v1, Landroid/text/format/Time;->monthDay:I

    .line 205
    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/text/format/Time;->month:I

    .line 206
    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 208
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 209
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 212
    .end local v1    # "nextMonth":Landroid/text/format/Time;
    :cond_4d
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    return-wide v3
.end method

.method public static dumpPolicy(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "policy"    # I

    .prologue
    .line 273
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 274
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    .line 275
    const-string v0, "REJECT_METERED_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 277
    :cond_e
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public static dumpRules(Ljava/io/PrintWriter;I)V
    .registers 3
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "rules"    # I

    .prologue
    .line 282
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 283
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    .line 284
    const-string v0, "REJECT_METERED"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 286
    :cond_e
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const-string v0, "netpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method public static isUidValidForPolicy(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 241
    const/4 v0, 0x0

    .line 268
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static snapToCycleDay(Landroid/text/format/Time;I)V
    .registers 4
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "cycleDay"    # I

    .prologue
    const/4 v1, 0x1

    .line 222
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    if-le p1, v0, :cond_17

    .line 224
    iget v0, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 225
    iput v1, p0, Landroid/text/format/Time;->monthDay:I

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 230
    :goto_13
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 231
    return-void

    .line 228
    :cond_17
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    goto :goto_13
.end method


# virtual methods
.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .registers 3

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 129
    :goto_6
    return-object v1

    .line 128
    :catch_7
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRestrictBackground()Z
    .registers 3

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 144
    :goto_6
    return v1

    .line 143
    :catch_7
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getUidPolicy(I)I
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 92
    :goto_6
    return v1

    .line 91
    :catch_7
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getUidsWithPolicy(I)[I
    .registers 4
    .param p1, "policy"    # I

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 100
    :goto_6
    return-object v1

    .line 99
    :catch_7
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_6
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 109
    :goto_5
    return-void

    .line 107
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .registers 3
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 123
    :goto_5
    return-void

    .line 121
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setRestrictBackground(Z)V
    .registers 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 138
    :goto_5
    return-void

    .line 136
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setUidPolicy(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 86
    :goto_5
    return-void

    .line 84
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 116
    :goto_5
    return-void

    .line 114
    :catch_6
    move-exception v0

    goto :goto_5
.end method
