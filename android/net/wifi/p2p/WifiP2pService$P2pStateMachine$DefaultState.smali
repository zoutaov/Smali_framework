.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .registers 2

    .prologue
    .line 483
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x2

    .line 487
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_234

    .line 665
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 668
    :goto_21
    return v5

    .line 489
    :sswitch_22
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_33

    .line 491
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/util/AsyncChannel;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$302(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    :cond_31
    :goto_31
    :sswitch_31
    move v5, v4

    .line 668
    goto :goto_21

    .line 493
    :cond_33
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full connection failure, error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 494
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$302(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_31

    .line 499
    :sswitch_55
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v7, :cond_68

    .line 500
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v6, "Send failed, client connection lost"

    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 504
    :goto_60
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$302(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_31

    .line 502
    :cond_68
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client connection lost with reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_60

    .line 508
    :sswitch_83
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 509
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_31

    .line 512
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_9c
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v6, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_e0

    move v3, v4

    :goto_a5
    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z
    invoke-static {v6, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 515
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z
    invoke-static {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 516
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$500(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 518
    :try_start_b9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/StateMachine;

    .line 519
    .local v2, "m":Lcom/android/internal/util/StateMachine;
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c2} :catch_c4

    goto/16 :goto_31

    .line 520
    .end local v2    # "m":Lcom/android/internal/util/StateMachine;
    :catch_c4
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to send BLOCK_DISCOVERY response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_31

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_e0
    move v3, v5

    .line 512
    goto :goto_a5

    .line 526
    :sswitch_e2
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22002

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 530
    :sswitch_ec
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22005

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 534
    :sswitch_f6
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2202f

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 538
    :sswitch_100
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22008

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 542
    :sswitch_10a
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2200b

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 546
    :sswitch_114
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2200e

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 550
    :sswitch_11e
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22011

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 554
    :sswitch_128
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2201d

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 558
    :sswitch_132
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22020

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 562
    :sswitch_13c
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22023

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 566
    :sswitch_146
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22026

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 570
    :sswitch_150
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22029

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 575
    :sswitch_15a
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2202c

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 580
    :sswitch_164
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22034

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 584
    :sswitch_16e
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22036

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 588
    :sswitch_178
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2203c

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 592
    :sswitch_182
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22014

    new-instance v6, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v3, p1, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_31

    .line 596
    :sswitch_197
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22016

    new-instance v6, Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v3, p1, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_31

    .line 600
    :sswitch_1ac
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x22018

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v7

    if-eqz v7, :cond_1c4

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    :cond_1c4
    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v5, p1, v6, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_31

    .line 604
    :sswitch_1c9
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x2203a

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v5, p1, v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_31

    .line 608
    :sswitch_1de
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2203f

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_31

    .line 651
    :sswitch_1e8
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v5, 0x20085

    invoke-virtual {v3, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_31

    .line 655
    :sswitch_1f8
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1102(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 656
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected group creation, remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 657
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto/16 :goto_31

    .line 487
    :sswitch_data_234
    .sparse-switch
        0x11000 -> :sswitch_22
        0x11001 -> :sswitch_83
        0x11004 -> :sswitch_55
        0x20083 -> :sswitch_31
        0x20084 -> :sswitch_1e8
        0x22001 -> :sswitch_e2
        0x22004 -> :sswitch_ec
        0x22007 -> :sswitch_100
        0x2200a -> :sswitch_10a
        0x2200d -> :sswitch_114
        0x22010 -> :sswitch_11e
        0x22013 -> :sswitch_182
        0x22015 -> :sswitch_197
        0x22017 -> :sswitch_1ac
        0x2201c -> :sswitch_128
        0x2201f -> :sswitch_132
        0x22022 -> :sswitch_13c
        0x22025 -> :sswitch_146
        0x22028 -> :sswitch_150
        0x2202b -> :sswitch_15a
        0x2202e -> :sswitch_f6
        0x22033 -> :sswitch_164
        0x22036 -> :sswitch_16e
        0x22039 -> :sswitch_1c9
        0x2203b -> :sswitch_178
        0x2203e -> :sswitch_1de
        0x22041 -> :sswitch_31
        0x22044 -> :sswitch_31
        0x22047 -> :sswitch_31
        0x23001 -> :sswitch_31
        0x23002 -> :sswitch_31
        0x23003 -> :sswitch_31
        0x23004 -> :sswitch_31
        0x23005 -> :sswitch_31
        0x23006 -> :sswitch_31
        0x2300d -> :sswitch_31
        0x2300e -> :sswitch_31
        0x2300f -> :sswitch_9c
        0x23010 -> :sswitch_31
        0x24001 -> :sswitch_31
        0x24002 -> :sswitch_31
        0x24003 -> :sswitch_31
        0x24004 -> :sswitch_31
        0x24005 -> :sswitch_31
        0x24006 -> :sswitch_31
        0x24007 -> :sswitch_31
        0x24008 -> :sswitch_31
        0x24009 -> :sswitch_31
        0x2400a -> :sswitch_31
        0x2400b -> :sswitch_31
        0x24015 -> :sswitch_31
        0x24016 -> :sswitch_31
        0x2401c -> :sswitch_31
        0x2401d -> :sswitch_1f8
        0x2401e -> :sswitch_31
        0x24020 -> :sswitch_31
        0x24025 -> :sswitch_31
        0x24026 -> :sswitch_31
        0x24027 -> :sswitch_31
        0x30004 -> :sswitch_31
        0x30005 -> :sswitch_31
        0x30006 -> :sswitch_31
    .end sparse-switch
.end method
