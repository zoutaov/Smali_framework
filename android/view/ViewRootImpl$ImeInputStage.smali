.class final Landroid/view/ViewRootImpl$ImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .registers 4
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;

    .prologue
    .line 3680
    iput-object p1, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 3681
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 3682
    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .registers 5
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    .prologue
    .line 3706
    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3707
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz p2, :cond_a

    .line 3708
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$ImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 3712
    :goto_9
    return-void

    .line 3711
    :cond_a
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$ImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_9
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 7
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v3, 0x1

    .line 3686
    iget-object v4, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v4, :cond_28

    iget-object v4, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/ViewRootImpl;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 3687
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3688
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_28

    .line 3689
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 3691
    .local v0, "event":Landroid/view/InputEvent;
    iget-object v4, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p1, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v2

    .line 3692
    .local v2, "result":I
    if-ne v2, v3, :cond_22

    .line 3701
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "result":I
    :goto_21
    return v3

    .line 3694
    .restart local v0    # "event":Landroid/view/InputEvent;
    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v2    # "result":I
    :cond_22
    if-nez v2, :cond_26

    .line 3695
    const/4 v3, 0x2

    goto :goto_21

    .line 3697
    :cond_26
    const/4 v3, 0x3

    goto :goto_21

    .line 3701
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "result":I
    :cond_28
    const/4 v3, 0x0

    goto :goto_21
.end method
