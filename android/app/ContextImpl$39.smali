.class final Landroid/app/ContextImpl$39;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field mDefaultDisplay:Landroid/view/Display;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 551
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 554
    # getter for: Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;
    invoke-static {p1}, Landroid/app/ContextImpl;->access$100(Landroid/app/ContextImpl;)Landroid/view/Display;

    move-result-object v0

    .line 555
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_1f

    .line 556
    iget-object v2, p0, Landroid/app/ContextImpl$39;->mDefaultDisplay:Landroid/view/Display;

    if-nez v2, :cond_1d

    .line 557
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 559
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ContextImpl$39;->mDefaultDisplay:Landroid/view/Display;

    .line 561
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_1d
    iget-object v0, p0, Landroid/app/ContextImpl$39;->mDefaultDisplay:Landroid/view/Display;

    .line 563
    :cond_1f
    new-instance v2, Landroid/view/WindowManagerImpl;

    invoke-direct {v2, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;)V

    return-object v2
.end method
