.class final Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;
.super Lio/reactivex/internal/observers/QueueDrainObserver;
.source "ObservableBufferBoundarySupplier.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferBoundarySupplierObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/QueueDrainObserver<",
        "TT;TU;TU;>;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final boundarySupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field buffer:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final bufferSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final other:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "TB;>;>;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver<TT;TU;TB;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p2, "bufferSupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    .local p3, "boundarySupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+Lio/reactivex/ObservableSource<TB;>;>;"
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/QueueDrainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->other:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    .line 63
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->boundarySupplier:Ljava/util/concurrent/Callable;

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lio/reactivex/Observer;Ljava/lang/Object;)V
    .locals 0

    .line 47
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver<TT;TU;TB;>;"
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->accept(Lio/reactivex/Observer;Ljava/util/Collection;)V

    return-void
.end method

.method public accept(Lio/reactivex/Observer;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 211
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver<TT;TU;TB;>;"
    .local p1, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p2, "v":Ljava/util/Collection;, "TU;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 146
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver<TT;TU;TB;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->cancelled:Z

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->cancelled:Z

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 149
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->disposeOther()V

    .line 151
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 155
    :cond_0
    return-void
.end method

.method disposeOther()V
    .locals 1

    .line 163
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver<TT;TU;TB;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->other:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 164
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 159
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver<TT;TU;TB;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->cancelled:Z

    return v0
.end method

.method next()V
    .locals 5

    .line 171
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver<TT;TU;TB;>;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    .local v0, "next":Ljava/util/Collection;, "TU;"
    nop

    .line 176
    nop

    .line 182
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->boundarySupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The boundary ObservableSource supplied is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    .local v1, "boundary":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TB;>;"
    nop

    .line 188
    nop

    .line 191
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;)V

    .line 193
    .local v2, "bs":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver<TT;TU;TB;>;"
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->other:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v2}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    monitor-enter p0

    .line 196
    :try_start_2
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->buffer:Ljava/util/Collection;

    .line 197
    .local v3, "b":Ljava/util/Collection;, "TU;"
    if-nez v3, :cond_0

    .line 198
    monitor-exit p0

    return-void

    .line 200
    :cond_0
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->buffer:Ljava/util/Collection;

    .line 201
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 205
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->fastPathEmit(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 201
    .end local v3    # "b":Ljava/util/Collection;, "TU;"
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 183
    .end local v1    # "boundary":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TB;>;"
    .end local v2    # "bs":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver<TT;TU;TB;>;"
    :catch_0
    move-exception v1

    .line 184
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 185
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->cancelled:Z

    .line 186
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 187
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 188
    return-void

    .line 172
    .end local v0    # "next":Ljava/util/Collection;, "TU;"
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 174
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->dispose()V

    .line 175
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 176
    return-void
.end method

.method public onComplete()V
    .locals 4

    .line 130
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver<TT;TU;TB;>;"
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->buffer:Ljava/util/Collection;

    .line 132
    .local v0, "b":Ljava/util/Collection;, "TU;"
    if-nez v0, :cond_0

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->buffer:Ljava/util/Collection;

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->done:Z

    .line 139
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->enter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->downstream:Lio/reactivex/Observer;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V

    .line 142
    :cond_1
    return-void

    .line 136
    .end local v0    # "b":Ljava/util/Collection;, "TU;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 123
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver<TT;TU;TB;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->dispose()V

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 125
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver<TT;TU;TB;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->buffer:Ljava/util/Collection;

    .line 114
    .local v0, "b":Ljava/util/Collection;, "TU;"
    if-nez v0, :cond_0

    .line 115
    monitor-exit p0

    return-void

    .line 117
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v0    # "b":Ljava/util/Collection;, "TU;"
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 5
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver<TT;TU;TB;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->downstream:Lio/reactivex/Observer;

    .line 76
    .local v0, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The buffer supplied is null"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .local v2, "b":Ljava/util/Collection;, "TU;"
    nop

    .line 82
    nop

    .line 85
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->buffer:Ljava/util/Collection;

    .line 90
    :try_start_1
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->boundarySupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "The boundary ObservableSource supplied is null"

    invoke-static {v3, v4}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/ObservableSource;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    .line 97
    .local v1, "boundary":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TB;>;"
    nop

    .line 96
    nop

    .line 99
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver;

    invoke-direct {v3, p0}, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;)V

    .line 100
    .local v3, "bs":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver<TT;TU;TB;>;"
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->other:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 102
    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 104
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->cancelled:Z

    if-nez v4, :cond_0

    .line 105
    invoke-interface {v1, v3}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 91
    .end local v1    # "boundary":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TB;>;"
    .end local v3    # "bs":Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver;, "Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundaryObserver<TT;TU;TB;>;"
    :catch_0
    move-exception v3

    .line 92
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 93
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->cancelled:Z

    .line 94
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 95
    invoke-static {v3, v0}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 96
    return-void

    .line 77
    .end local v2    # "b":Ljava/util/Collection;, "TU;"
    .end local v3    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 79
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableBufferBoundarySupplier$BufferBoundarySupplierObserver;->cancelled:Z

    .line 80
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 81
    invoke-static {v2, v0}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 82
    return-void

    .line 108
    .end local v0    # "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method
