.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
.super Landroid/print/PrintDocumentAdapter$WriteResultCallback;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyWriteResultCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/print/IWriteResultCallback;

.field private mFd:Landroid/os/ParcelFileDescriptor;

.field private mSequence:I

.field final synthetic this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/IWriteResultCallback;Landroid/os/ParcelFileDescriptor;I)V
    .registers 5
    .param p2, "callback"    # Landroid/print/IWriteResultCallback;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "sequence"    # I

    .prologue
    .line 926
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;-><init>()V

    .line 927
    iput-object p3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 928
    iput p4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    .line 929
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 930
    return-void
.end method

.method private clearLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 993
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # setter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;
    invoke-static {v0, v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$602(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 994
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 995
    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 996
    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 997
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # invokes: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V
    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$1100(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V

    .line 998
    return-void
.end method


# virtual methods
.method public onWriteCancelled()V
    .registers 4

    .prologue
    .line 982
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 983
    :try_start_7
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z
    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$1000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 984
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    monitor-exit v1

    .line 990
    :goto_17
    return-void

    .line 988
    :cond_18
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->clearLocked()V

    .line 989
    monitor-exit v1

    goto :goto_17

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onWriteFailed(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 962
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 963
    :try_start_7
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$1000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 964
    const-string v2, "PrintManager"

    const-string v4, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion?"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    monitor-exit v3

    .line 978
    :cond_17
    :goto_17
    return-void

    .line 968
    :cond_18
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 969
    .local v0, "callback":Landroid/print/IWriteResultCallback;
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->clearLocked()V

    .line 970
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2f

    .line 971
    if-eqz v0, :cond_17

    .line 973
    :try_start_20
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v0, p1, v2}, Landroid/print/IWriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_17

    .line 974
    :catch_26
    move-exception v1

    .line 975
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error calling onWriteFailed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 970
    .end local v0    # "callback":Landroid/print/IWriteResultCallback;
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public onWriteFinished([Landroid/print/PageRange;)V
    .registers 7
    .param p1, "pages"    # [Landroid/print/PageRange;

    .prologue
    .line 935
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 936
    :try_start_7
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$1000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 937
    const-string v2, "PrintManager"

    const-string v4, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion?"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    monitor-exit v3

    .line 957
    :cond_17
    :goto_17
    return-void

    .line 941
    :cond_18
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 942
    .local v0, "callback":Landroid/print/IWriteResultCallback;
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->clearLocked()V

    .line 943
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_29

    .line 944
    if-nez p1, :cond_2c

    .line 945
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "pages cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 943
    .end local v0    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2

    .line 947
    .restart local v0    # "callback":Landroid/print/IWriteResultCallback;
    :cond_2c
    array-length v2, p1

    if-nez v2, :cond_38

    .line 948
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "pages cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 950
    :cond_38
    if-eqz v0, :cond_17

    .line 952
    :try_start_3a
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v0, p1, v2}, Landroid/print/IWriteResultCallback;->onWriteFinished([Landroid/print/PageRange;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_17

    .line 953
    :catch_40
    move-exception v1

    .line 954
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error calling onWriteFinished"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method
