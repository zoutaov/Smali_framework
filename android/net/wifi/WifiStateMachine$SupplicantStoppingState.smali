.class Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2

    .prologue
    .line 2882
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2886
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)V

    .line 2887
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2888
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->doQuit()V

    .line 2892
    :cond_17
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor;->stopSupplicant()V

    .line 2895
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20011

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$8804(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2897
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v0, v4}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;I)V

    .line 2898
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v0

    const v1, 0x2006f

    invoke-virtual {v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 2899
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2902
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_4a

    .line 2932
    const/4 v0, 0x0

    .line 2934
    :goto_6
    return v0

    .line 2904
    :sswitch_7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "Supplicant connection received while stopping"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2934
    :cond_e
    :goto_e
    const/4 v0, 0x1

    goto :goto_6

    .line 2908
    :sswitch_10
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleSupplicantConnectionLoss()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7900(Landroid/net/wifi/WifiStateMachine;)V

    .line 2909
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$9000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_e

    .line 2912
    :sswitch_21
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 2913
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "Timed out on a supplicant stop, kill and proceed"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$9100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2914
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleSupplicantConnectionLoss()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7900(Landroid/net/wifi/WifiStateMachine;)V

    .line 2915
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$9200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_e

    .line 2929
    :sswitch_43
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_e

    .line 2902
    nop

    :sswitch_data_4a
    .sparse-switch
        0x2000b -> :sswitch_43
        0x2000c -> :sswitch_43
        0x2000d -> :sswitch_43
        0x2000e -> :sswitch_43
        0x20011 -> :sswitch_21
        0x20015 -> :sswitch_43
        0x20018 -> :sswitch_43
        0x20048 -> :sswitch_43
        0x20050 -> :sswitch_43
        0x20054 -> :sswitch_43
        0x20055 -> :sswitch_43
        0x2005a -> :sswitch_43
        0x24001 -> :sswitch_7
        0x24002 -> :sswitch_10
    .end sparse-switch
.end method
