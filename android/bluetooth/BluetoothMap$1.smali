.class Landroid/bluetooth/BluetoothMap$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothMap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothMap;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 6
    .param p1, "up"    # Z

    .prologue
    .line 60
    const-string v1, "BluetoothMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothStateChange: up="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-nez p1, :cond_45

    .line 63
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    # getter for: Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->access$000(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 65
    :try_start_22
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothMap;->access$102(Landroid/bluetooth/BluetoothMap;Landroid/bluetooth/IBluetoothMap;)Landroid/bluetooth/IBluetoothMap;

    .line 66
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    # getter for: Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->access$200(Landroid/bluetooth/BluetoothMap;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    # getter for: Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Landroid/bluetooth/BluetoothMap;->access$000(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_37} :catch_39
    .catchall {:try_start_22 .. :try_end_37} :catchall_42

    .line 70
    :goto_37
    :try_start_37
    monitor-exit v2

    .line 83
    :goto_38
    return-void

    .line 67
    :catch_39
    move-exception v0

    .line 68
    .local v0, "re":Ljava/lang/Exception;
    const-string v1, "BluetoothMap"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 70
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_42

    throw v1

    .line 72
    :cond_45
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    # getter for: Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->access$000(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 74
    :try_start_4c
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    # getter for: Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;
    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->access$100(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/IBluetoothMap;

    move-result-object v1

    if-nez v1, :cond_59

    .line 76
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap$1;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothMap;->doBind()Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_59} :catch_5e
    .catchall {:try_start_4c .. :try_end_59} :catchall_5b

    .line 81
    :cond_59
    :goto_59
    :try_start_59
    monitor-exit v2

    goto :goto_38

    :catchall_5b
    move-exception v1

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5b

    throw v1

    .line 78
    :catch_5e
    move-exception v0

    .line 79
    .restart local v0    # "re":Ljava/lang/Exception;
    :try_start_5f
    const-string v1, "BluetoothMap"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_5b

    goto :goto_59
.end method
