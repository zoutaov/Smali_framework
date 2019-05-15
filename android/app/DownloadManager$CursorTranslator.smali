.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1292
    const-class v0, Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1297
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 1298
    return-void
.end method

.method private getErrorCode(I)J
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 1369
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x258

    if-ge p1, v0, :cond_12

    .line 1372
    :cond_10
    int-to-long v0, p1

    .line 1402
    :goto_11
    return-wide v0

    .line 1375
    :cond_12
    sparse-switch p1, :sswitch_data_30

    .line 1402
    const-wide/16 v0, 0x3e8

    goto :goto_11

    .line 1377
    :sswitch_18
    const-wide/16 v0, 0x3e9

    goto :goto_11

    .line 1381
    :sswitch_1b
    const-wide/16 v0, 0x3ea

    goto :goto_11

    .line 1384
    :sswitch_1e
    const-wide/16 v0, 0x3ec

    goto :goto_11

    .line 1387
    :sswitch_21
    const-wide/16 v0, 0x3ed

    goto :goto_11

    .line 1390
    :sswitch_24
    const-wide/16 v0, 0x3ee

    goto :goto_11

    .line 1393
    :sswitch_27
    const-wide/16 v0, 0x3ef

    goto :goto_11

    .line 1396
    :sswitch_2a
    const-wide/16 v0, 0x3f0

    goto :goto_11

    .line 1399
    :sswitch_2d
    const-wide/16 v0, 0x3f1

    goto :goto_11

    .line 1375
    :sswitch_data_30
    .sparse-switch
        0xc6 -> :sswitch_24
        0xc7 -> :sswitch_27
        0x1e8 -> :sswitch_2d
        0x1e9 -> :sswitch_2a
        0x1ec -> :sswitch_18
        0x1ed -> :sswitch_1b
        0x1ee -> :sswitch_1b
        0x1ef -> :sswitch_1e
        0x1f1 -> :sswitch_21
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1323
    const-string v5, "destination"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 1324
    .local v0, "destinationType":J
    const-wide/16 v5, 0x4

    cmp-long v5, v0, v5

    if-eqz v5, :cond_1c

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_1c

    const-wide/16 v5, 0x6

    cmp-long v5, v0, v5

    if-nez v5, :cond_38

    .line 1327
    :cond_1c
    const-string v5, "local_filename"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1328
    .local v4, "localPath":Ljava/lang/String;
    if-nez v4, :cond_2a

    .line 1329
    const/4 v5, 0x0

    .line 1336
    .end local v4    # "localPath":Ljava/lang/String;
    :goto_29
    return-object v5

    .line 1331
    .restart local v4    # "localPath":Ljava/lang/String;
    :cond_2a
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_29

    .line 1335
    .end local v4    # "localPath":Ljava/lang/String;
    :cond_38
    const-string v5, "_id"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v2

    .line 1336
    .local v2, "downloadId":J
    iget-object v5, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_29
.end method

.method private getPausedReason(I)J
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 1353
    packed-switch p1, :pswitch_data_10

    .line 1364
    const-wide/16 v0, 0x4

    :goto_5
    return-wide v0

    .line 1355
    :pswitch_6
    const-wide/16 v0, 0x1

    goto :goto_5

    .line 1358
    :pswitch_9
    const-wide/16 v0, 0x2

    goto :goto_5

    .line 1361
    :pswitch_c
    const-wide/16 v0, 0x3

    goto :goto_5

    .line 1353
    nop

    :pswitch_data_10
    .packed-switch 0xc2
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getReason(I)J
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 1340
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 1348
    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0

    .line 1342
    :sswitch_a
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    goto :goto_9

    .line 1345
    :sswitch_f
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    goto :goto_9

    .line 1340
    :sswitch_data_14
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method private translateStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 1407
    packed-switch p1, :pswitch_data_20

    .line 1424
    :pswitch_3
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_1c

    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1409
    :pswitch_13
    const/4 v0, 0x1

    .line 1425
    :goto_14
    return v0

    .line 1412
    :pswitch_15
    const/4 v0, 0x2

    goto :goto_14

    .line 1418
    :pswitch_17
    const/4 v0, 0x4

    goto :goto_14

    .line 1421
    :pswitch_19
    const/16 v0, 0x8

    goto :goto_14

    .line 1425
    :cond_1c
    const/16 v0, 0x10

    goto :goto_14

    .line 1407
    nop

    :pswitch_data_20
    .packed-switch 0xbe
        :pswitch_13
        :pswitch_3
        :pswitch_15
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public getInt(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 1302
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 1307
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1308
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    .line 1312
    :goto_1c
    return-wide v0

    .line 1309
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1310
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_1c

    .line 1312
    :cond_3b
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    goto :goto_1c
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 1318
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method
