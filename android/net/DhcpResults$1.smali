.class final Landroid/net/DhcpResults$1;
.super Ljava/lang/Object;
.source "DhcpResults.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/DhcpResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResults;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 162
    new-instance v0, Landroid/net/DhcpResults;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/DhcpResults;-><init>(Landroid/net/LinkProperties;)V

    .line 164
    .local v0, "prop":Landroid/net/DhcpResults;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/DhcpResults;->leaseDuration:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 168
    :try_start_19
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;
    :try_end_23
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_23} :catch_2a

    .line 172
    :cond_23
    :goto_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 174
    return-object v0

    .line 169
    :catch_2a
    move-exception v1

    goto :goto_23
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Landroid/net/DhcpResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResults;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/DhcpResults;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 178
    new-array v0, p1, [Landroid/net/DhcpResults;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Landroid/net/DhcpResults$1;->newArray(I)[Landroid/net/DhcpResults;

    move-result-object v0

    return-object v0
.end method
