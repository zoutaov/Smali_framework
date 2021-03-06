.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# static fields
.field public static final BAYER_RGGB:I = 0x200

.field public static final JPEG:I = 0x100

.field public static final NV16:I = 0x10

.field public static final NV21:I = 0x11

.field public static final RAW_SENSOR:I = 0x20

.field public static final RGB_565:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final Y16:I = 0x20363159

.field public static final Y8:I = 0x20203859

.field public static final YUV_420_888:I = 0x23

.field public static final YUY2:I = 0x14

.field public static final YV12:I = 0x32315659


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitsPerPixel(I)I
    .registers 3
    .param p0, "format"    # I

    .prologue
    const/16 v1, 0xc

    const/16 v0, 0x10

    .line 230
    sparse-switch p0, :sswitch_data_12

    .line 252
    const/4 v0, -0x1

    :goto_8
    :sswitch_8
    return v0

    :sswitch_9
    move v0, v1

    .line 238
    goto :goto_8

    .line 240
    :sswitch_b
    const/16 v0, 0x8

    goto :goto_8

    :sswitch_e
    move v0, v1

    .line 244
    goto :goto_8

    :sswitch_10
    move v0, v1

    .line 246
    goto :goto_8

    .line 230
    :sswitch_data_12
    .sparse-switch
        0x4 -> :sswitch_8
        0x10 -> :sswitch_8
        0x11 -> :sswitch_e
        0x14 -> :sswitch_8
        0x20 -> :sswitch_8
        0x23 -> :sswitch_10
        0x200 -> :sswitch_8
        0x20203859 -> :sswitch_b
        0x20363159 -> :sswitch_8
        0x32315659 -> :sswitch_9
    .end sparse-switch
.end method
