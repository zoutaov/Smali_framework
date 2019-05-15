.class Landroid/net/nsd/NsdManager$ServiceHandler;
.super Landroid/os/Handler;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/nsd/NsdManager;


# direct methods
.method constructor <init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 298
    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 299
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 300
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 304
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_fe

    .line 317
    :pswitch_5
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v5, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/nsd/NsdManager;->getListener(I)Ljava/lang/Object;
    invoke-static {v4, v5}, Landroid/net/nsd/NsdManager;->access$200(Landroid/net/nsd/NsdManager;I)Ljava/lang/Object;

    move-result-object v0

    .line 318
    .local v0, "listener":Ljava/lang/Object;
    if-nez v0, :cond_49

    .line 319
    const-string v4, "NsdManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stale key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v0    # "listener":Ljava/lang/Object;
    :cond_29
    :goto_29
    return-void

    .line 306
    :pswitch_2a
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    # getter for: Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$000(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    const v5, 0x11001

    invoke-virtual {v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_29

    .line 309
    :pswitch_37
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    # getter for: Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$100(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_29

    .line 312
    :pswitch_41
    const-string v4, "NsdManager"

    const-string v5, "Channel lost"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 322
    .restart local v0    # "listener":Ljava/lang/Object;
    :cond_49
    const/4 v1, 0x1

    .line 323
    .local v1, "listenerRemove":Z
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v5, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/nsd/NsdManager;->getNsdService(I)Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v4, v5}, Landroid/net/nsd/NsdManager;->access$300(Landroid/net/nsd/NsdManager;I)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v2

    .line 324
    .local v2, "ns":Landroid/net/nsd/NsdServiceInfo;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_10c

    .line 374
    :pswitch_57
    const-string v4, "NsdManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignored "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v0    # "listener":Ljava/lang/Object;
    :goto_6f
    if-eqz v1, :cond_29

    .line 378
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v5, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/nsd/NsdManager;->removeListener(I)V
    invoke-static {v4, v5}, Landroid/net/nsd/NsdManager;->access$500(Landroid/net/nsd/NsdManager;I)V

    goto :goto_29

    .line 326
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_79
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    # invokes: Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    invoke-static {v5, v4}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "s":Ljava/lang/String;
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStarted(Ljava/lang/String;)V

    .line 329
    const/4 v1, 0x0

    .line 330
    goto :goto_6f

    .line 332
    .end local v3    # "s":Ljava/lang/String;
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_8a
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    # invokes: Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v4, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStartDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_6f

    .line 336
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_98
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v4}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    .line 338
    const/4 v1, 0x0

    .line 339
    goto :goto_6f

    .line 341
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_a3
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v4}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    .line 343
    const/4 v1, 0x0

    .line 344
    goto :goto_6f

    .line 346
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_ae
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    # invokes: Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v4, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStopDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_6f

    .line 350
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_bc
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    # invokes: Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    goto :goto_6f

    .line 353
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_c8
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v4}, Landroid/net/nsd/NsdManager$RegistrationListener;->onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto :goto_6f

    .line 356
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_d0
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v4}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V

    .line 359
    const/4 v1, 0x0

    .line 360
    goto :goto_6f

    .line 362
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_db
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v4}, Landroid/net/nsd/NsdManager$RegistrationListener;->onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto :goto_6f

    .line 365
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_e3
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0, v2}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_6f

    .line 368
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_e9
    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v4}, Landroid/net/nsd/NsdManager$ResolveListener;->onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto/16 :goto_6f

    .line 371
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_f2
    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v4}, Landroid/net/nsd/NsdManager$ResolveListener;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    goto/16 :goto_6f

    .line 304
    nop

    :pswitch_data_fe
    .packed-switch 0x11000
        :pswitch_2a
        :pswitch_5
        :pswitch_37
        :pswitch_5
        :pswitch_41
    .end packed-switch

    .line 324
    :pswitch_data_10c
    .packed-switch 0x60002
        :pswitch_79
        :pswitch_8a
        :pswitch_98
        :pswitch_a3
        :pswitch_57
        :pswitch_ae
        :pswitch_bc
        :pswitch_57
        :pswitch_c8
        :pswitch_d0
        :pswitch_57
        :pswitch_db
        :pswitch_e3
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_e9
        :pswitch_f2
    .end packed-switch
.end method
