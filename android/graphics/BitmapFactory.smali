.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DECODE_BUFFER_SIZE:I = 0x4000


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v3, 0x2

    .line 499
    or-int v1, p1, p2

    if-ltz v1, :cond_b

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_11

    .line 500
    :cond_b
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 505
    :cond_11
    const-string v1, "decodeBitmap"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 507
    :try_start_16
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 509
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2f

    if-eqz p3, :cond_2f

    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2f

    .line 510
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem decoding into existing bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_2a

    .line 514
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_2a
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    .line 512
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2f
    :try_start_2f
    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2a

    .line 514
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 375
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_16
    .catchall {:try_start_2 .. :try_end_7} :catchall_37

    .line 376
    .end local v2    # "stream":Ljava/io/InputStream;
    .local v3, "stream":Ljava/io/InputStream;
    const/4 v4, 0x0

    :try_start_8
    invoke-static {v3, v4, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_43
    .catchall {:try_start_8 .. :try_end_b} :catchall_40

    move-result-object v0

    .line 383
    if-eqz v3, :cond_46

    .line 385
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_13

    move-object v2, v3

    .line 391
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :cond_12
    :goto_12
    return-object v0

    .line 386
    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catch_13
    move-exception v4

    move-object v2, v3

    .line 388
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    goto :goto_12

    .line 377
    :catch_16
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    :goto_17
    :try_start_17
    const-string v4, "BitmapFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to decode stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_37

    .line 383
    if-eqz v2, :cond_12

    .line 385
    :try_start_31
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_12

    .line 386
    :catch_35
    move-exception v4

    goto :goto_12

    .line 383
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_37
    move-exception v4

    :goto_38
    if-eqz v2, :cond_3d

    .line 385
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 388
    :cond_3d
    :goto_3d
    throw v4

    .line 386
    :catch_3e
    move-exception v5

    goto :goto_3d

    .line 383
    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catchall_40
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    goto :goto_38

    .line 377
    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catch_43
    move-exception v1

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    goto :goto_17

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_46
    move-object v2, v3

    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    goto :goto_12
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v0, 0x0

    .line 689
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v4, 0x2

    .line 654
    const-string v2, "decodeFileDescriptor"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 656
    :try_start_7
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 657
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 669
    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_11
    if-nez v0, :cond_3a

    if-eqz p2, :cond_3a

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3a

    .line 670
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem decoding into existing bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_21

    .line 675
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_21
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 659
    :cond_26
    :try_start_26
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_21

    .line 661
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2b
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_35

    move-result-object v0

    .line 664
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_33
    .catchall {:try_start_2f .. :try_end_32} :catchall_21

    goto :goto_11

    .line 665
    :catch_33
    move-exception v2

    goto :goto_11

    .line 663
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_35
    move-exception v2

    .line 664
    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_41
    .catchall {:try_start_36 .. :try_end_39} :catchall_21

    .line 665
    :goto_39
    :try_start_39
    throw v2

    .line 673
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_3a
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_21

    .line 675
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 677
    return-object v0

    .line 665
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_41
    move-exception v3

    goto :goto_39
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 449
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 450
    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 452
    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_25
    .catchall {:try_start_2 .. :try_end_f} :catchall_2e

    move-result-object v0

    .line 460
    if-eqz v1, :cond_15

    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_35

    .line 466
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_15
    :goto_15
    if-nez v0, :cond_39

    if-eqz p2, :cond_39

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_39

    .line 467
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 453
    :catch_25
    move-exception v3

    .line 460
    if-eqz v1, :cond_15

    :try_start_28
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_15

    .line 461
    :catch_2c
    move-exception v3

    goto :goto_15

    .line 459
    :catchall_2e
    move-exception v3

    .line 460
    if-eqz v1, :cond_34

    :try_start_31
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_37

    .line 463
    :cond_34
    :goto_34
    throw v3

    .line 461
    .restart local v2    # "value":Landroid/util/TypedValue;
    :catch_35
    move-exception v3

    goto :goto_15

    .end local v2    # "value":Landroid/util/TypedValue;
    :catch_37
    move-exception v4

    goto :goto_34

    .line 470
    :cond_39
    return-object v0
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 412
    if-nez p4, :cond_7

    .line 413
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 416
    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_7
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v1, :cond_15

    if-eqz p1, :cond_15

    .line 417
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 418
    .local v0, "density":I
    if-nez v0, :cond_28

    .line 419
    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 425
    .end local v0    # "density":I
    :cond_15
    :goto_15
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v1, :cond_23

    if-eqz p0, :cond_23

    .line 426
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 429
    :cond_23
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 420
    .restart local v0    # "density":I
    :cond_28
    const v1, 0xffff

    if-eq v0, v1, :cond_15

    .line 421
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_15
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 634
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v4, 0x2

    .line 584
    if-nez p0, :cond_6

    .line 585
    const/4 v1, 0x0

    .line 608
    .end local p0    # "is":Ljava/io/InputStream;
    :goto_5
    return-object v1

    .line 588
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_6
    const/4 v1, 0x0

    .line 590
    .local v1, "bm":Landroid/graphics/Bitmap;
    const-string v2, "decodeBitmap"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 592
    :try_start_c
    instance-of v2, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_2f

    .line 593
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v0

    .line 594
    .local v0, "asset":I
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 599
    .end local v0    # "asset":I
    :goto_1a
    if-nez v1, :cond_34

    if-eqz p2, :cond_34

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_34

    .line 600
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem decoding into existing bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_2a

    .line 605
    :catchall_2a
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 596
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_2f
    :try_start_2f
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1a

    .line 603
    .end local p0    # "is":Ljava/io/InputStream;
    :cond_34
    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2a

    .line 605
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_5
.end method

.method private static decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "tempStorage":[B
    if-eqz p2, :cond_5

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 619
    :cond_5
    if-nez v0, :cond_b

    const/16 v1, 0x4000

    new-array v0, v1, [B

    .line 620
    :cond_b
    invoke-static {p0, v0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .registers 7
    .param p0, "outputBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 537
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 556
    :cond_4
    :goto_4
    return-void

    .line 539
    :cond_5
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 540
    .local v0, "density":I
    if-eqz v0, :cond_2f

    .line 541
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 542
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 543
    .local v3, "targetDensity":I
    if-eqz v3, :cond_4

    if-eq v0, v3, :cond_4

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v4, :cond_4

    .line 547
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 548
    .local v2, "np":[B
    if-eqz v2, :cond_2d

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v1, 0x1

    .line 549
    .local v1, "isNinePatch":Z
    :goto_23
    iget-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v4, :cond_29

    if-eqz v1, :cond_4

    .line 550
    :cond_29
    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_4

    .line 548
    .end local v1    # "isNinePatch":Z
    :cond_2d
    const/4 v1, 0x0

    goto :goto_23

    .line 552
    .end local v2    # "np":[B
    .end local v3    # "targetDensity":I
    :cond_2f
    iget-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 554
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_4
.end method
