.class public Landroid/net/wifi/WifiSsid;
.super Ljava/lang/Object;
.source "WifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEX_RADIX:I = 0x10

.field public static final NONE:Ljava/lang/String; = "<unknown ssid>"

.field private static final TAG:Ljava/lang/String; = "WifiSsid"


# instance fields
.field public octets:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 220
    new-instance v0, Landroid/net/wifi/WifiSsid$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiSsid$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/net/wifi/WifiSsid$1;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/net/wifi/WifiSsid;-><init>()V

    return-void
.end method

.method private convertToBytes(Ljava/lang/String;)V
    .registers 11
    .param p1, "asciiEncoded"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x37

    const/16 v7, 0x30

    const/16 v6, 0x10

    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "i":I
    const/4 v3, 0x0

    .line 85
    .local v3, "val":I
    :cond_8
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_ce

    .line 86
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 87
    .local v0, "c":C
    packed-switch v0, :pswitch_data_d0

    .line 157
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 89
    :pswitch_1d
    add-int/lit8 v2, v2, 0x1

    .line 90
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_d6

    goto :goto_8

    .line 96
    :sswitch_27
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_8

    .line 92
    :sswitch_31
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    goto :goto_8

    .line 100
    :sswitch_3b
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_8

    .line 104
    :sswitch_45
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    .line 106
    goto :goto_8

    .line 108
    :sswitch_4f
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 110
    goto :goto_8

    .line 112
    :sswitch_59
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x1b

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    goto :goto_8

    .line 116
    :sswitch_63
    add-int/lit8 v2, v2, 0x1

    .line 118
    add-int/lit8 v4, v2, 0x2

    :try_start_67
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_70} :catch_85

    move-result v3

    .line 122
    :goto_71
    if-gez v3, :cond_88

    .line 123
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 124
    if-ltz v3, :cond_8

    .line 125
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 119
    :catch_85
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_71

    .line 128
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_88
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    add-int/lit8 v2, v2, 0x2

    .line 131
    goto/16 :goto_8

    .line 140
    :sswitch_91
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v4, -0x30

    .line 141
    add-int/lit8 v2, v2, 0x1

    .line 142
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v7, :cond_b0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v8, :cond_b0

    .line 143
    mul-int/lit8 v4, v3, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x30

    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 146
    :cond_b0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v7, :cond_c7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v8, :cond_c7

    .line 147
    mul-int/lit8 v4, v3, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x30

    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 150
    :cond_c7
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_8

    .line 162
    .end local v0    # "c":C
    :cond_ce
    return-void

    .line 87
    nop

    :pswitch_data_d0
    .packed-switch 0x5c
        :pswitch_1d
    .end packed-switch

    .line 90
    :sswitch_data_d6
    .sparse-switch
        0x22 -> :sswitch_27
        0x30 -> :sswitch_91
        0x31 -> :sswitch_91
        0x32 -> :sswitch_91
        0x33 -> :sswitch_91
        0x34 -> :sswitch_91
        0x35 -> :sswitch_91
        0x36 -> :sswitch_91
        0x37 -> :sswitch_91
        0x5c -> :sswitch_31
        0x65 -> :sswitch_59
        0x6e -> :sswitch_3b
        0x72 -> :sswitch_45
        0x74 -> :sswitch_4f
        0x78 -> :sswitch_63
    .end sparse-switch
.end method

.method public static createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .registers 2
    .param p0, "asciiEncoded"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    .line 55
    .local v0, "a":Landroid/net/wifi/WifiSsid;
    invoke-direct {v0, p0}, Landroid/net/wifi/WifiSsid;->convertToBytes(Ljava/lang/String;)V

    .line 56
    return-object v0
.end method

.method public static createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .registers 8
    .param p0, "hexStr"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    .line 61
    .local v0, "a":Landroid/net/wifi/WifiSsid;
    const/4 v3, 0x0

    .line 62
    .local v3, "length":I
    if-nez p0, :cond_9

    .line 77
    :cond_8
    return-object v0

    .line 64
    :cond_9
    const-string v5, "0x"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v5, "0X"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 65
    :cond_19
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 68
    :cond_1e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_8

    .line 71
    add-int/lit8 v5, v2, 0x2

    :try_start_29
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_32} :catch_3b

    move-result v4

    .line 75
    .local v4, "val":I
    :goto_33
    iget-object v5, v0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 68
    add-int/lit8 v2, v2, 0x2

    goto :goto_1f

    .line 72
    .end local v4    # "val":I
    :catch_3b
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    .restart local v4    # "val":I
    goto :goto_33
.end method

.method private isArrayAllZeroes([B)Z
    .registers 4
    .param p1, "ssidBytes"    # [B

    .prologue
    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_d

    .line 188
    aget-byte v1, p1, v0

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 190
    :goto_9
    return v1

    .line 187
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_d
    const/4 v1, 0x1

    goto :goto_9
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getHexString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 200
    const-string v1, "0x"

    .line 201
    .local v1, "out":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->getOctets()[B

    move-result-object v2

    .line 202
    .local v2, "ssidbytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-ge v0, v3, :cond_37

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v2, v0

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 205
    :cond_37
    return-object v1
.end method

.method public getOctets()[B
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 166
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 170
    .local v4, "ssidBytes":[B
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-lez v5, :cond_14

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiSsid;->isArrayAllZeroes([B)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_14
    const-string v5, ""

    .line 183
    :goto_16
    return-object v5

    .line 172
    :cond_17
    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 173
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 176
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    const/16 v5, 0x20

    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 178
    .local v2, "out":Ljava/nio/CharBuffer;
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v2, v6}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 179
    .local v3, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 180
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 181
    const-string v5, "<unknown ssid>"

    goto :goto_16

    .line 183
    :cond_48
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_16
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 215
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 217
    return-void
.end method
