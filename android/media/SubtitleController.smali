.class public Landroid/media/SubtitleController;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleController$Listener;,
        Landroid/media/SubtitleController$Anchor;,
        Landroid/media/SubtitleController$Renderer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final WHAT_HIDE:I = 0x2

.field private static final WHAT_SELECT_DEFAULT_TRACK:I = 0x4

.field private static final WHAT_SELECT_TRACK:I = 0x3

.field private static final WHAT_SHOW:I = 0x1


# instance fields
.field private mAnchor:Landroid/media/SubtitleController$Anchor;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/media/SubtitleController$Listener;

.field private mRenderers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleController$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTrack:Landroid/media/SubtitleTrack;

.field private mShowing:Z

.field private mTimeProvider:Landroid/media/MediaTimeProvider;

.field private mTrackIsExplicit:Z

.field private mTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityIsExplicit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Landroid/media/SubtitleController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/media/SubtitleController;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeProvider"    # Landroid/media/MediaTimeProvider;
    .param p3, "listener"    # Landroid/media/SubtitleController$Listener;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/media/SubtitleController$1;

    invoke-direct {v0, p0}, Landroid/media/SubtitleController$1;-><init>(Landroid/media/SubtitleController;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    .line 72
    new-instance v0, Landroid/media/SubtitleController$2;

    invoke-direct {v0, p0}, Landroid/media/SubtitleController$2;-><init>(Landroid/media/SubtitleController;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 260
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 261
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 97
    iput-object p2, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 98
    iput-object p3, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    .line 101
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 102
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 103
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 105
    return-void
.end method

.method static synthetic access$000(Landroid/media/SubtitleController;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/SubtitleController;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/media/SubtitleController;->doShow()V

    return-void
.end method

.method static synthetic access$100(Landroid/media/SubtitleController;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/SubtitleController;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/media/SubtitleController;->doHide()V

    return-void
.end method

.method static synthetic access$200(Landroid/media/SubtitleController;Landroid/media/SubtitleTrack;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/SubtitleController;
    .param p1, "x1"    # Landroid/media/SubtitleTrack;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/media/SubtitleController;->doSelectTrack(Landroid/media/SubtitleTrack;)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/SubtitleController;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/SubtitleController;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/media/SubtitleController;->doSelectDefaultTrack()V

    return-void
.end method

.method private checkAnchorLooper()V
    .registers 3

    .prologue
    .line 468
    sget-boolean v0, Landroid/media/SubtitleController;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should have a looper already"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 469
    :cond_10
    sget-boolean v0, Landroid/media/SubtitleController;->$assertionsDisabled:Z

    if-nez v0, :cond_28

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_28

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must be called from the anchor\'s looper"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 470
    :cond_28
    return-void
.end method

.method private doHide()V
    .registers 2

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 368
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_c

    .line 369
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    .line 371
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 372
    return-void
.end method

.method private doSelectDefaultTrack()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 269
    iget-boolean v1, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    if-eqz v1, :cond_2d

    .line 272
    iget-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v1, :cond_28

    .line 273
    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v1}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "is-forced-subtitle"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_29

    .line 277
    :cond_23
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    .line 281
    :goto_26
    iput-boolean v3, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 298
    :cond_28
    :goto_28
    return-void

    .line 279
    :cond_29
    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    goto :goto_26

    .line 289
    :cond_2d
    invoke-virtual {p0}, Landroid/media/SubtitleController;->getDefaultTrack()Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 290
    .local v0, "track":Landroid/media/SubtitleTrack;
    if-eqz v0, :cond_28

    .line 291
    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 292
    iput-boolean v3, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 293
    iget-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v1, :cond_28

    .line 294
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    .line 295
    iput-boolean v3, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    goto :goto_28
.end method

.method private doSelectTrack(Landroid/media/SubtitleTrack;)V
    .registers 4
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 163
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-ne v0, p1, :cond_8

    .line 185
    :cond_7
    :goto_7
    return-void

    .line 167
    :cond_8
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_17

    .line 168
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    .line 169
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    .line 172
    :cond_17
    iput-object p1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 173
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-eqz v0, :cond_26

    .line 174
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 177
    :cond_26
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_36

    .line 178
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    iget-object v1, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    .line 179
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    .line 182
    :cond_36
    iget-object v0, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    if-eqz v0, :cond_7

    .line 183
    iget-object v0, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    invoke-interface {v0, p1}, Landroid/media/SubtitleController$Listener;->onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V

    goto :goto_7
.end method

.method private doShow()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 351
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 352
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_e

    .line 353
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    .line 355
    :cond_e
    return-void
.end method

.method private getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-nez v0, :cond_6

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    goto :goto_5
.end method

.method private processOnAnchor(Landroid/os/Message;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 473
    sget-boolean v0, Landroid/media/SubtitleController;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should have a looper already"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 474
    :cond_10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_22

    .line 475
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 479
    :goto_21
    return-void

    .line 477
    :cond_22
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_21
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .registers 9
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 320
    iget-object v4, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v4

    .line 321
    :try_start_3
    iget-object v3, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleController$Renderer;

    .line 322
    .local v1, "renderer":Landroid/media/SubtitleController$Renderer;
    invoke-virtual {v1, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 323
    invoke-virtual {v1, p1}, Landroid/media/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v2

    .line 324
    .local v2, "track":Landroid/media/SubtitleTrack;
    if-eqz v2, :cond_9

    .line 325
    iget-object v5, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_3e

    .line 326
    :try_start_24
    iget-object v3, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_33

    .line 327
    iget-object v3, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v6, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v3, v6}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 330
    :cond_33
    iget-object v3, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 331
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_3b

    .line 332
    :try_start_39
    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3e

    .line 337
    .end local v1    # "renderer":Landroid/media/SubtitleController$Renderer;
    .end local v2    # "track":Landroid/media/SubtitleTrack;
    :goto_3a
    return-object v2

    .line 331
    .restart local v1    # "renderer":Landroid/media/SubtitleController$Renderer;
    .restart local v2    # "track":Landroid/media/SubtitleTrack;
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v3

    .line 336
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "renderer":Landroid/media/SubtitleController$Renderer;
    .end local v2    # "track":Landroid/media/SubtitleTrack;
    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3e

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_41
    :try_start_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3e

    .line 337
    const/4 v2, 0x0

    goto :goto_3a
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 112
    return-void
.end method

.method public getDefaultTrack()Landroid/media/SubtitleTrack;
    .registers 19

    .prologue
    .line 211
    const/4 v3, 0x0

    .line 212
    .local v3, "bestTrack":Landroid/media/SubtitleTrack;
    const/4 v2, -0x1

    .line 214
    .local v2, "bestScore":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v15}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v13

    .line 215
    .local v13, "selectedLocale":Ljava/util/Locale;
    move-object v10, v13

    .line 216
    .local v10, "locale":Ljava/util/Locale;
    if-nez v10, :cond_11

    .line 217
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    .line 219
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v15}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v15

    if-nez v15, :cond_b7

    const/4 v12, 0x1

    .line 221
    .local v12, "selectForced":Z
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 222
    :try_start_23
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_cd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/SubtitleTrack;

    .line 223
    .local v14, "track":Landroid/media/SubtitleTrack;
    invoke-virtual {v14}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v5

    .line 224
    .local v5, "format":Landroid/media/MediaFormat;
    const-string v15, "language"

    invoke-virtual {v5, v15}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 225
    .local v8, "language":Ljava/lang/String;
    const-string v15, "is-forced-subtitle"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_ba

    const/4 v4, 0x1

    .line 227
    .local v4, "forced":Z
    :goto_4e
    const-string v15, "is-autoselect"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_bc

    const/4 v1, 0x1

    .line 229
    .local v1, "autoselect":Z
    :goto_5b
    const-string v15, "is-default"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_be

    const/4 v7, 0x1

    .line 232
    .local v7, "is_default":Z
    :goto_68
    if-eqz v10, :cond_8a

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8a

    invoke-virtual {v10}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8a

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c0

    :cond_8a
    const/4 v9, 0x1

    .line 238
    .local v9, "languageMatches":Z
    :goto_8b
    if-eqz v4, :cond_c2

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_90
    if-nez v13, :cond_c7

    if-eqz v7, :cond_c7

    const/4 v15, 0x4

    :goto_95
    add-int v16, v16, v15

    if-eqz v1, :cond_c9

    const/4 v15, 0x0

    :goto_9a
    add-int v16, v16, v15

    if-eqz v9, :cond_cb

    const/4 v15, 0x1

    :goto_9f
    add-int v11, v16, v15

    .line 242
    .local v11, "score":I
    if-eqz v12, :cond_a5

    if-eqz v4, :cond_2b

    .line 247
    :cond_a5
    if-nez v13, :cond_a9

    if-nez v7, :cond_b1

    :cond_a9
    if-eqz v9, :cond_2b

    if-nez v1, :cond_b1

    if-nez v4, :cond_b1

    if-eqz v13, :cond_2b

    .line 250
    :cond_b1
    if-le v11, v2, :cond_2b

    .line 251
    move v2, v11

    .line 252
    move-object v3, v14

    goto/16 :goto_2b

    .line 219
    .end local v1    # "autoselect":Z
    .end local v4    # "forced":Z
    .end local v5    # "format":Landroid/media/MediaFormat;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "is_default":Z
    .end local v8    # "language":Ljava/lang/String;
    .end local v9    # "languageMatches":Z
    .end local v11    # "score":I
    .end local v12    # "selectForced":Z
    .end local v14    # "track":Landroid/media/SubtitleTrack;
    :cond_b7
    const/4 v12, 0x0

    goto/16 :goto_1c

    .line 225
    .restart local v5    # "format":Landroid/media/MediaFormat;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "language":Ljava/lang/String;
    .restart local v12    # "selectForced":Z
    .restart local v14    # "track":Landroid/media/SubtitleTrack;
    :cond_ba
    const/4 v4, 0x0

    goto :goto_4e

    .line 227
    .restart local v4    # "forced":Z
    :cond_bc
    const/4 v1, 0x0

    goto :goto_5b

    .line 229
    .restart local v1    # "autoselect":Z
    :cond_be
    const/4 v7, 0x0

    goto :goto_68

    .line 232
    .restart local v7    # "is_default":Z
    :cond_c0
    const/4 v9, 0x0

    goto :goto_8b

    .line 238
    .restart local v9    # "languageMatches":Z
    :cond_c2
    const/16 v15, 0x8

    move/from16 v16, v15

    goto :goto_90

    :cond_c7
    const/4 v15, 0x0

    goto :goto_95

    :cond_c9
    const/4 v15, 0x2

    goto :goto_9a

    :cond_cb
    const/4 v15, 0x0

    goto :goto_9f

    .line 256
    .end local v1    # "autoselect":Z
    .end local v4    # "forced":Z
    .end local v5    # "format":Landroid/media/MediaFormat;
    .end local v7    # "is_default":Z
    .end local v8    # "language":Ljava/lang/String;
    .end local v9    # "languageMatches":Z
    .end local v14    # "track":Landroid/media/SubtitleTrack;
    :cond_cd
    monitor-exit v17

    .line 257
    return-object v3

    .line 256
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_cf
    move-exception v15

    monitor-exit v17
    :try_end_d1
    .catchall {:try_start_23 .. :try_end_d1} :catchall_cf

    throw v15
.end method

.method public getSelectedTrack()Landroid/media/SubtitleTrack;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    return-object v0
.end method

.method public getTracks()[Landroid/media/SubtitleTrack;
    .registers 4

    .prologue
    .line 120
    iget-object v2, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v2

    .line 121
    :try_start_3
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Landroid/media/SubtitleTrack;

    .line 122
    .local v0, "tracks":[Landroid/media/SubtitleTrack;
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 123
    monitor-exit v2

    return-object v0

    .line 124
    .end local v0    # "tracks":[Landroid/media/SubtitleTrack;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 363
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 364
    return-void
.end method

.method public registerRenderer(Landroid/media/SubtitleController$Renderer;)V
    .registers 4
    .param p1, "renderer"    # Landroid/media/SubtitleController$Renderer;

    .prologue
    .line 414
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v1

    .line 416
    :try_start_3
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 418
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_10
    monitor-exit v1

    .line 421
    return-void

    .line 420
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 303
    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 305
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 306
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 307
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 308
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 310
    return-void
.end method

.method public selectDefaultTrack()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 266
    return-void
.end method

.method public selectTrack(Landroid/media/SubtitleTrack;)Z
    .registers 4
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .prologue
    .line 153
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 154
    const/4 v0, 0x0

    .line 158
    :goto_b
    return v0

    .line 157
    :cond_c
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 158
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public setAnchor(Landroid/media/SubtitleController$Anchor;)V
    .registers 5
    .param p1, "anchor"    # Landroid/media/SubtitleController$Anchor;

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-ne v0, p1, :cond_6

    .line 465
    :cond_5
    :goto_5
    return-void

    .line 454
    :cond_6
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-eqz v0, :cond_12

    .line 455
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 456
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 458
    :cond_12
    iput-object p1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    .line 459
    iput-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 460
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-eqz v0, :cond_5

    .line 461
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-interface {v1}, Landroid/media/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 462
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 463
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    goto :goto_5
.end method

.method public show()V
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 347
    return-void
.end method
