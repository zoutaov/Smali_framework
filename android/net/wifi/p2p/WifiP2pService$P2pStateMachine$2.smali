.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .registers 2

    .prologue
    .line 2160
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 2164
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x23003

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 2165
    return-void
.end method
