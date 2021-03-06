.class public Landroid/graphics/PixelFormat;
.super Ljava/lang/Object;
.source "PixelFormat.java"


# static fields
.field public static final A_8:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JPEG:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LA_88:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final L_8:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPAQUE:I = -0x1

.field public static final RGBA_4444:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_5551:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_8888:I = 0x1

.field public static final RGBX_8888:I = 0x2

.field public static final RGB_332:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGB_565:I = 0x4

.field public static final RGB_888:I = 0x3

.field public static final TRANSLUCENT:I = -0x3

.field public static final TRANSPARENT:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field public static final YCbCr_420_SP:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_I:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_SP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public bitsPerPixel:I

.field public bytesPerPixel:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatHasAlpha(I)Z
    .registers 2
    .param p0, "format"    # I

    .prologue
    .line 123
    packed-switch p0, :pswitch_data_8

    .line 133
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 131
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 123
    nop

    :pswitch_data_8
    .packed-switch -0x3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
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

.method public static getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V
    .registers 5
    .param p0, "format"    # I
    .param p1, "info"    # Landroid/graphics/PixelFormat;

    .prologue
    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 85
    packed-switch p0, :pswitch_data_4a

    .line 118
    :pswitch_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unkonwon pixel format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :pswitch_20
    const/16 v0, 0x20

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 89
    const/4 v0, 0x4

    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 120
    :goto_27
    return-void

    .line 92
    :pswitch_28
    const/16 v0, 0x18

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 93
    const/4 v0, 0x3

    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_27

    .line 99
    :pswitch_30
    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 100
    const/4 v0, 0x2

    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_27

    .line 105
    :pswitch_36
    const/16 v0, 0x8

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 106
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_27

    .line 110
    :pswitch_3d
    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 111
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_27

    .line 114
    :pswitch_42
    const/16 v0, 0xc

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 115
    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_27

    .line 85
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_20
        :pswitch_28
        :pswitch_30
        :pswitch_6
        :pswitch_30
        :pswitch_30
        :pswitch_36
        :pswitch_36
        :pswitch_30
        :pswitch_36
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3d
        :pswitch_42
        :pswitch_6
        :pswitch_6
        :pswitch_3d
    .end packed-switch
.end method
