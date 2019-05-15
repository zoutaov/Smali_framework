.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 334
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 93
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 94
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 95
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 96
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 97
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 98
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 99
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 100
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 101
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 102
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 103
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 105
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .registers 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 144
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .registers 23
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    :goto_52
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 274
    return-void

    .line 273
    :cond_55
    const/4 v0, 0x0

    goto :goto_52
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 117
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 118
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 119
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 120
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 121
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 122
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 123
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 124
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 125
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 126
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 127
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 128
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 129
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 949
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 286
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 287
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 288
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 289
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 290
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 291
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 292
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 293
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 294
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 295
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 296
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 297
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 298
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 300
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .registers 2
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 81
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 82
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 83
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 908
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 909
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 910
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 911
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 912
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 913
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 914
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 915
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 916
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 917
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 918
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 919
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 920
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 921
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 238
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 239
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 240
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 241
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 242
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 243
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 244
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 245
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 246
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 247
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 248
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 249
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 250
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 251
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 856
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    .line 861
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_a

    .line 865
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_7
    :goto_7
    return v3

    .line 857
    :catch_8
    move-exception v1

    .line 858
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_7

    .line 865
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_a
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_7

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_7

    const/4 v3, 0x1

    goto :goto_7
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 930
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 931
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 932
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 933
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 934
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 936
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 937
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 938
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 939
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 940
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 941
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 942
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 943
    return-void
.end method

.method public getAsuLevel()I
    .registers 5

    .prologue
    .line 503
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_14

    .line 504
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_f

    .line 505
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 524
    .local v0, "asuLevel":I
    :goto_e
    return v0

    .line 507
    .end local v0    # "asuLevel":I
    :cond_f
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_e

    .line 510
    .end local v0    # "asuLevel":I
    :cond_14
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 511
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 512
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_20

    .line 514
    move v0, v1

    .restart local v0    # "asuLevel":I
    goto :goto_e

    .line 515
    .end local v0    # "asuLevel":I
    :cond_20
    if-nez v1, :cond_24

    .line 517
    move v0, v2

    .restart local v0    # "asuLevel":I
    goto :goto_e

    .line 520
    .end local v0    # "asuLevel":I
    :cond_24
    if-ge v1, v2, :cond_28

    move v0, v1

    .restart local v0    # "asuLevel":I
    :goto_27
    goto :goto_e

    .end local v0    # "asuLevel":I
    :cond_28
    move v0, v2

    goto :goto_27
.end method

.method public getCdmaAsuLevel()I
    .registers 9

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 643
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 644
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 648
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_1a

    const/16 v0, 0x10

    .line 656
    .local v0, "cdmaAsuLevel":I
    :goto_12
    if-lt v2, v7, :cond_32

    const/16 v3, 0x10

    .line 663
    .local v3, "ecioAsuLevel":I
    :goto_16
    if-ge v0, v3, :cond_4c

    move v4, v0

    .line 665
    .local v4, "level":I
    :goto_19
    return v4

    .line 649
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_1a
    const/16 v5, -0x52

    if-lt v1, v5, :cond_21

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 650
    .end local v0    # "cdmaAsuLevel":I
    :cond_21
    if-lt v1, v7, :cond_25

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 651
    .end local v0    # "cdmaAsuLevel":I
    :cond_25
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_2b

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 652
    .end local v0    # "cdmaAsuLevel":I
    :cond_2b
    if-lt v1, v6, :cond_2f

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 653
    .end local v0    # "cdmaAsuLevel":I
    :cond_2f
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_12

    .line 657
    :cond_32
    if-lt v2, v6, :cond_37

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 658
    .end local v3    # "ecioAsuLevel":I
    :cond_37
    const/16 v5, -0x73

    if-lt v2, v5, :cond_3d

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 659
    .end local v3    # "ecioAsuLevel":I
    :cond_3d
    const/16 v5, -0x82

    if-lt v2, v5, :cond_43

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 660
    .end local v3    # "ecioAsuLevel":I
    :cond_43
    const/16 v5, -0x96

    if-lt v2, v5, :cond_49

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    .line 661
    .end local v3    # "ecioAsuLevel":I
    :cond_49
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_16

    :cond_4c
    move v4, v3

    .line 663
    goto :goto_19
.end method

.method public getCdmaDbm()I
    .registers 2

    .prologue
    .line 409
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .registers 2

    .prologue
    .line 416
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .registers 7

    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 615
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 619
    .local v1, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_16

    const/4 v3, 0x4

    .line 626
    .local v3, "levelDbm":I
    :goto_d
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_2a

    const/4 v4, 0x4

    .line 632
    .local v4, "levelEcio":I
    :goto_12
    if-ge v3, v4, :cond_3e

    move v2, v3

    .line 634
    .local v2, "level":I
    :goto_15
    return v2

    .line 620
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_16
    const/16 v5, -0x55

    if-lt v0, v5, :cond_1c

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_d

    .line 621
    .end local v3    # "levelDbm":I
    :cond_1c
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_22

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_d

    .line 622
    .end local v3    # "levelDbm":I
    :cond_22
    const/16 v5, -0x64

    if-lt v0, v5, :cond_28

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_d

    .line 623
    .end local v3    # "levelDbm":I
    :cond_28
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_d

    .line 627
    :cond_2a
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_30

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_12

    .line 628
    .end local v4    # "levelEcio":I
    :cond_30
    const/16 v5, -0x82

    if-lt v1, v5, :cond_36

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_12

    .line 629
    .end local v4    # "levelEcio":I
    :cond_36
    const/16 v5, -0x96

    if-lt v1, v5, :cond_3c

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_12

    .line 630
    .end local v4    # "levelEcio":I
    :cond_3c
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_12

    :cond_3e
    move v2, v4

    .line 632
    goto :goto_15
.end method

.method public getDbm()I
    .registers 6

    .prologue
    const/16 v4, -0x78

    .line 535
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 536
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_13

    .line 537
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 549
    :goto_12
    return v1

    .line 539
    :cond_13
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .local v1, "dBm":I
    goto :goto_12

    .line 542
    .end local v1    # "dBm":I
    :cond_18
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 543
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 545
    .local v2, "evdoDbm":I
    if-ne v2, v4, :cond_24

    .end local v0    # "cdmaDbm":I
    :cond_22
    :goto_22
    move v1, v0

    goto :goto_12

    .restart local v0    # "cdmaDbm":I
    :cond_24
    if-ne v0, v4, :cond_28

    move v0, v2

    goto :goto_22

    :cond_28
    if-lt v0, v2, :cond_22

    move v0, v2

    goto :goto_22
.end method

.method public getEvdoAsuLevel()I
    .registers 7

    .prologue
    .line 702
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 703
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 707
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_17

    const/16 v3, 0x10

    .line 714
    .local v3, "levelEvdoDbm":I
    :goto_e
    const/4 v5, 0x7

    if-lt v1, v5, :cond_33

    const/16 v4, 0x10

    .line 721
    .local v4, "levelEvdoSnr":I
    :goto_13
    if-ge v3, v4, :cond_4b

    move v2, v3

    .line 723
    .local v2, "level":I
    :goto_16
    return v2

    .line 708
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_17
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1e

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 709
    .end local v3    # "levelEvdoDbm":I
    :cond_1e
    const/16 v5, -0x55

    if-lt v0, v5, :cond_24

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 710
    .end local v3    # "levelEvdoDbm":I
    :cond_24
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2a

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 711
    .end local v3    # "levelEvdoDbm":I
    :cond_2a
    const/16 v5, -0x69

    if-lt v0, v5, :cond_30

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 712
    .end local v3    # "levelEvdoDbm":I
    :cond_30
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_e

    .line 715
    :cond_33
    const/4 v5, 0x6

    if-lt v1, v5, :cond_39

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    .line 716
    .end local v4    # "levelEvdoSnr":I
    :cond_39
    const/4 v5, 0x5

    if-lt v1, v5, :cond_3e

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    .line 717
    .end local v4    # "levelEvdoSnr":I
    :cond_3e
    const/4 v5, 0x3

    if-lt v1, v5, :cond_43

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    .line 718
    .end local v4    # "levelEvdoSnr":I
    :cond_43
    const/4 v5, 0x1

    if-lt v1, v5, :cond_48

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    .line 719
    .end local v4    # "levelEvdoSnr":I
    :cond_48
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_13

    :cond_4b
    move v2, v4

    .line 721
    goto :goto_16
.end method

.method public getEvdoDbm()I
    .registers 2

    .prologue
    .line 423
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .registers 2

    .prologue
    .line 430
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .registers 7

    .prologue
    .line 674
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 675
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 679
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_15

    const/4 v3, 0x4

    .line 685
    .local v3, "levelEvdoDbm":I
    :goto_d
    const/4 v5, 0x7

    if-lt v1, v5, :cond_29

    const/4 v4, 0x4

    .line 691
    .local v4, "levelEvdoSnr":I
    :goto_11
    if-ge v3, v4, :cond_3a

    move v2, v3

    .line 693
    .local v2, "level":I
    :goto_14
    return v2

    .line 680
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_15
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1b

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_d

    .line 681
    .end local v3    # "levelEvdoDbm":I
    :cond_1b
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_21

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_d

    .line 682
    .end local v3    # "levelEvdoDbm":I
    :cond_21
    const/16 v5, -0x69

    if-lt v0, v5, :cond_27

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_d

    .line 683
    .end local v3    # "levelEvdoDbm":I
    :cond_27
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_d

    .line 686
    :cond_29
    const/4 v5, 0x5

    if-lt v1, v5, :cond_2e

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_11

    .line 687
    .end local v4    # "levelEvdoSnr":I
    :cond_2e
    const/4 v5, 0x3

    if-lt v1, v5, :cond_33

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_11

    .line 688
    .end local v4    # "levelEvdoSnr":I
    :cond_33
    const/4 v5, 0x1

    if-lt v1, v5, :cond_38

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_11

    .line 689
    .end local v4    # "levelEvdoSnr":I
    :cond_38
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_11

    :cond_3a
    move v2, v4

    .line 691
    goto :goto_14
.end method

.method public getEvdoSnr()I
    .registers 2

    .prologue
    .line 437
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .registers 2

    .prologue
    .line 603
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 605
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .registers 2

    .prologue
    .line 402
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 560
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 561
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_11

    move v0, v3

    .line 562
    .local v0, "asu":I
    :goto_a
    if-eq v0, v3, :cond_13

    .line 563
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 568
    .local v1, "dBm":I
    :goto_10
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_11
    move v0, v2

    .line 561
    goto :goto_a

    .line 565
    .restart local v0    # "asu":I
    :cond_13
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_10
.end method

.method public getGsmLevel()I
    .registers 4

    .prologue
    .line 583
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 584
    .local v0, "asu":I
    const/4 v2, 0x2

    if-le v0, v2, :cond_b

    const/16 v2, 0x63

    if-ne v0, v2, :cond_d

    :cond_b
    const/4 v1, 0x0

    .line 590
    .local v1, "level":I
    :goto_c
    return v1

    .line 585
    .end local v1    # "level":I
    :cond_d
    const/16 v2, 0xc

    if-lt v0, v2, :cond_13

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_c

    .line 586
    .end local v1    # "level":I
    :cond_13
    const/16 v2, 0x8

    if-lt v0, v2, :cond_19

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_c

    .line 587
    .end local v1    # "level":I
    :cond_19
    const/4 v2, 0x5

    if-lt v0, v2, :cond_1e

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_c

    .line 588
    .end local v1    # "level":I
    :cond_1e
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_c
.end method

.method public getGsmSignalStrength()I
    .registers 2

    .prologue
    .line 395
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .registers 5

    .prologue
    .line 473
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_f

    .line 474
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 475
    .local v2, "level":I
    if-nez v2, :cond_e

    .line 476
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 493
    :cond_e
    :goto_e
    return v2

    .line 479
    .end local v2    # "level":I
    :cond_f
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 480
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 481
    .local v1, "evdoLevel":I
    if-nez v1, :cond_1b

    .line 483
    move v2, v0

    .restart local v2    # "level":I
    goto :goto_e

    .line 484
    .end local v2    # "level":I
    :cond_1b
    if-nez v0, :cond_1f

    .line 486
    move v2, v1

    .restart local v2    # "level":I
    goto :goto_e

    .line 489
    .end local v2    # "level":I
    :cond_1f
    if-ge v0, v1, :cond_23

    move v2, v0

    .restart local v2    # "level":I
    :goto_22
    goto :goto_e

    .end local v2    # "level":I
    :cond_23
    move v2, v1

    goto :goto_22
.end method

.method public getLteAsuLevel()I
    .registers 4

    .prologue
    .line 805
    const/16 v0, 0x63

    .line 806
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 820
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_e

    const/16 v0, 0xff

    .line 823
    :goto_d
    return v0

    .line 821
    :cond_e
    add-int/lit16 v0, v1, 0x8c

    goto :goto_d
.end method

.method public getLteCqi()I
    .registers 2

    .prologue
    .line 462
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .registers 2

    .prologue
    .line 732
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 747
    const/4 v1, 0x0

    .local v1, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v2, -0x1

    .line 749
    .local v2, "snrIconLevel":I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x2c

    if-le v3, v4, :cond_19

    const/4 v0, -0x1

    .line 762
    :cond_b
    :goto_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_41

    const/4 v2, -0x1

    .line 774
    :cond_12
    :goto_12
    if-eq v2, v5, :cond_6b

    if-eq v0, v5, :cond_6b

    .line 780
    if-ge v0, v2, :cond_69

    .line 795
    .end local v0    # "rsrpIconLevel":I
    :cond_18
    :goto_18
    return v0

    .line 750
    .restart local v0    # "rsrpIconLevel":I
    :cond_19
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_21

    const/4 v0, 0x4

    goto :goto_b

    .line 751
    :cond_21
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_29

    const/4 v0, 0x3

    goto :goto_b

    .line 752
    :cond_29
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_31

    const/4 v0, 0x2

    goto :goto_b

    .line 753
    :cond_31
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_39

    const/4 v0, 0x1

    goto :goto_b

    .line 754
    :cond_39
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x8c

    if-lt v3, v4, :cond_b

    const/4 v0, 0x0

    goto :goto_b

    .line 763
    :cond_41
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_49

    const/4 v2, 0x4

    goto :goto_12

    .line 764
    :cond_49
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_51

    const/4 v2, 0x3

    goto :goto_12

    .line 765
    :cond_51
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_59

    const/4 v2, 0x2

    goto :goto_12

    .line 766
    :cond_59
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_61

    const/4 v2, 0x1

    goto :goto_12

    .line 767
    :cond_61
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_12

    .line 768
    const/4 v2, 0x0

    goto :goto_12

    :cond_69
    move v0, v2

    .line 780
    goto :goto_18

    .line 783
    :cond_6b
    if-eq v2, v5, :cond_6f

    move v0, v2

    goto :goto_18

    .line 785
    :cond_6f
    if-ne v0, v5, :cond_18

    .line 788
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_7a

    const/4 v1, 0x0

    :cond_78
    :goto_78
    move v0, v1

    .line 795
    goto :goto_18

    .line 789
    :cond_7a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_82

    const/4 v1, 0x4

    goto :goto_78

    .line 790
    :cond_82
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_8a

    const/4 v1, 0x3

    goto :goto_78

    .line 791
    :cond_8a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_91

    const/4 v1, 0x2

    goto :goto_78

    .line 792
    :cond_91
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_78

    const/4 v1, 0x1

    goto :goto_78
.end method

.method public getLteRsrp()I
    .registers 2

    .prologue
    .line 447
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .registers 2

    .prologue
    .line 452
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .registers 2

    .prologue
    .line 457
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .registers 2

    .prologue
    .line 442
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 838
    const/16 v0, 0x1f

    .line 839
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    :goto_36
    add-int/2addr v1, v2

    return v1

    :cond_38
    const/4 v1, 0x0

    goto :goto_36
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .registers 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 218
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 219
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 220
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 221
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 222
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 223
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 224
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 225
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 226
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 227
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 228
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 229
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 230
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 232
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .registers 23
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 189
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 192
    return-void
.end method

.method public isGsm()Z
    .registers 2

    .prologue
    .line 830
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .registers 2
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 388
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_aa

    const-string v0, "gsm|lte"

    :goto_a1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_aa
    const-string v0, "cdma"

    goto :goto_a1
.end method

.method public validateInput()V
    .registers 6

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 358
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_7c

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_e
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 361
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_7e

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_17
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 362
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_80

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_20
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 364
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_29

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_29
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 365
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_83

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_32
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 366
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_40

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_40

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_40
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 369
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_48

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_48
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 370
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_85

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_85

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_59
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 371
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_87

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_87

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_69
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 372
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_79

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_79

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :cond_79
    iput v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 376
    return-void

    :cond_7c
    move v0, v1

    .line 358
    goto :goto_e

    :cond_7e
    move v0, v2

    .line 361
    goto :goto_17

    .line 362
    :cond_80
    const/16 v0, -0xa0

    goto :goto_20

    :cond_83
    move v0, v3

    .line 365
    goto :goto_32

    :cond_85
    move v0, v4

    .line 370
    goto :goto_59

    :cond_87
    move v0, v4

    .line 371
    goto :goto_69
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 307
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    :goto_41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    return-void

    .line 319
    :cond_45
    const/4 v0, 0x0

    goto :goto_41
.end method
