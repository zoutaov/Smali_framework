.class public Landroid/net/LinkAddress;
.super Ljava/lang/Object;
.source "LinkAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/net/InetAddress;

.field private prefixLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 158
    new-instance v0, Landroid/net/LinkAddress$1;

    invoke-direct {v0}, Landroid/net/LinkAddress$1;-><init>()V

    sput-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "inetAddress":Ljava/net/InetAddress;
    const/4 v2, -0x1

    .line 71
    .local v2, "prefixLength":I
    :try_start_5
    const-string v3, "/"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "pieces":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 73
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_19} :catch_42
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_19} :catch_40
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_19} :catch_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_19} :catch_3c

    move-result-object v0

    .line 80
    .end local v1    # "pieces":[Ljava/lang/String;
    :goto_1a
    if-eqz v0, :cond_1f

    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    .line 81
    :cond_1f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad LinkAddress params "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_38
    invoke-direct {p0, v0, v2}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;I)V

    .line 85
    return-void

    .line 77
    :catch_3c
    move-exception v3

    goto :goto_1a

    .line 76
    :catch_3e
    move-exception v3

    goto :goto_1a

    .line 75
    :catch_40
    move-exception v3

    goto :goto_1a

    .line 74
    :catch_42
    move-exception v3

    goto :goto_1a
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/net/InterfaceAddress;)V
    .registers 4
    .param p1, "interfaceAddress"    # Ljava/net/InterfaceAddress;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;I)V

    .line 60
    return-void
.end method

.method private init(Ljava/net/InetAddress;I)V
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .prologue
    .line 43
    if-eqz p1, :cond_10

    if-ltz p2, :cond_10

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_c

    const/16 v0, 0x20

    if-gt p2, v0, :cond_10

    :cond_c
    const/16 v0, 0x80

    if-le p2, v0, :cond_33

    .line 46
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad LinkAddress params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_33
    iput-object p1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    .line 50
    iput p2, p0, Landroid/net/LinkAddress;->prefixLength:I

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 102
    instance-of v2, p1, Landroid/net/LinkAddress;

    if-nez v2, :cond_6

    .line 106
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 105
    check-cast v0, Landroid/net/LinkAddress;

    .line 106
    .local v0, "linkAddress":Landroid/net/LinkAddress;
    iget-object v2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget-object v3, v0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/net/LinkAddress;->prefixLength:I

    iget v3, v0, Landroid/net/LinkAddress;->prefixLength:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getNetworkPrefixLength()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_5
    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    add-int/2addr v0, v1

    return v0

    :cond_9
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 145
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    if-eqz v0, :cond_17

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 147
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 148
    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    :goto_16
    return-void

    .line 150
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_16
.end method
