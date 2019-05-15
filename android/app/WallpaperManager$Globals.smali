.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 225
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 226
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 227
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 240
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 215
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 215
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .registers 2
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;

    .prologue
    .line 215
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 287
    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v4, "params":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6, p0, v4}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 289
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_3c

    .line 290
    const-string/jumbo v6, "width"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 291
    .local v5, "width":I
    const-string v6, "height"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_43

    move-result v2

    .line 294
    .local v2, "height":I
    :try_start_1d
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 295
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_2a} :catch_2f
    .catchall {:try_start_1d .. :try_end_2a} :catchall_3e

    move-result-object v6

    .line 301
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_43

    .line 310
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "height":I
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "width":I
    :goto_2e
    return-object v6

    .line 297
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "height":I
    .restart local v4    # "params":Landroid/os/Bundle;
    .restart local v5    # "width":I
    :catch_2f
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_30
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Can\'t decode file"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3e

    .line 301
    :try_start_39
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_47
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_43

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "height":I
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "width":I
    :cond_3c
    :goto_3c
    move-object v6, v7

    .line 310
    goto :goto_2e

    .line 300
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "height":I
    .restart local v4    # "params":Landroid/os/Bundle;
    .restart local v5    # "width":I
    :catchall_3e
    move-exception v6

    .line 301
    :try_start_3f
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_43

    .line 304
    :goto_42
    :try_start_42
    throw v6
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_43} :catch_43

    .line 307
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "height":I
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "width":I
    :catch_43
    move-exception v6

    goto :goto_3c

    .line 302
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "height":I
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "params":Landroid/os/Bundle;
    .restart local v5    # "width":I
    :catch_45
    move-exception v7

    goto :goto_2e

    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_47
    move-exception v6

    goto :goto_3c

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_49
    move-exception v8

    goto :goto_42
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 315
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1080220

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 317
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_35

    .line 318
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v5}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v4

    .line 319
    .local v4, "width":I
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v5}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_3c

    move-result v1

    .line 322
    .local v1, "height":I
    :try_start_1a
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 323
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_23} :catch_28
    .catchall {:try_start_1a .. :try_end_23} :catchall_37

    move-result-object v5

    .line 328
    :try_start_24
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_3e
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_3c

    .line 337
    .end local v1    # "height":I
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "width":I
    :goto_27
    return-object v5

    .line 324
    .restart local v1    # "height":I
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "width":I
    :catch_28
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_29
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Can\'t decode stream"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_37

    .line 328
    :try_start_32
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_3c

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v1    # "height":I
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "width":I
    :cond_35
    :goto_35
    move-object v5, v6

    .line 337
    goto :goto_27

    .line 327
    .restart local v1    # "height":I
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "width":I
    :catchall_37
    move-exception v5

    .line 328
    :try_start_38
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 331
    :goto_3b
    :try_start_3b
    throw v5
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3c} :catch_3c

    .line 334
    .end local v1    # "height":I
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "width":I
    :catch_3c
    move-exception v5

    goto :goto_35

    .line 329
    .restart local v1    # "height":I
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "width":I
    :catch_3e
    move-exception v6

    goto :goto_27

    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_40
    move-exception v5

    goto :goto_35

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_42
    move-exception v7

    goto :goto_3b
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .registers 3

    .prologue
    .line 278
    monitor-enter p0

    .line 279
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 281
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    monitor-exit p0

    .line 283
    return-void

    .line 282
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public onWallpaperChanged()V
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 252
    monitor-enter p0

    .line 253
    :try_start_1
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    .line 254
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 273
    :goto_8
    return-object v1

    .line 256
    :cond_9
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_14

    .line 257
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_8

    .line 274
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v1

    .line 259
    :cond_14
    const/4 v1, 0x0

    :try_start_15
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_11

    .line 261
    :try_start_17
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_1d} :catch_2d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_11

    .line 265
    :goto_1d
    if-eqz p2, :cond_3b

    .line 266
    :try_start_1f
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_38

    .line 267
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 268
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_8

    .line 262
    :catch_2d
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 270
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_38
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 273
    :cond_3b
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_11

    goto :goto_8
.end method
