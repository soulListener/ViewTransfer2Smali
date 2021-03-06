.class public final Lio/reactivex/processors/UnicastProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "UnicastProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile cancelled:Z

.field final delayError:Z

.field volatile done:Z

.field final downstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field enableOperatorFusion:Z

.field error:Ljava/lang/Throwable;

.field final onTerminate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "capacityHint"    # I

    .line 258
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;Z)V

    .line 259
    return-void
.end method

.method constructor <init>(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "capacityHint"    # I
    .param p2, "onTerminate"    # Ljava/lang/Runnable;

    .line 269
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;Z)V

    .line 270
    return-void
.end method

.method constructor <init>(ILjava/lang/Runnable;Z)V
    .locals 2
    .param p1, "capacityHint"    # I
    .param p2, "onTerminate"    # Ljava/lang/Runnable;
    .param p3, "delayError"    # Z

    .line 281
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 282
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 283
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 284
    iput-boolean p3, p0, Lio/reactivex/processors/UnicastProcessor;->delayError:Z

    .line 285
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 286
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 287
    new-instance v0, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;

    invoke-direct {v0, p0}, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;-><init>(Lio/reactivex/processors/UnicastProcessor;)V

    iput-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    .line 288
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 289
    return-void
.end method

.method public static create()Lio/reactivex/processors/UnicastProcessor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 183
    new-instance v0, Lio/reactivex/processors/UnicastProcessor;

    invoke-static {}, Lio/reactivex/processors/UnicastProcessor;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/processors/UnicastProcessor;-><init>(I)V

    return-object v0
.end method

.method public static create(I)Lio/reactivex/processors/UnicastProcessor;
    .locals 1
    .param p0, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 195
    new-instance v0, Lio/reactivex/processors/UnicastProcessor;

    invoke-direct {v0, p0}, Lio/reactivex/processors/UnicastProcessor;-><init>(I)V

    return-object v0
.end method

.method public static create(ILjava/lang/Runnable;)Lio/reactivex/processors/UnicastProcessor;
    .locals 1
    .param p0, "capacityHint"    # I
    .param p1, "onCancelled"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 227
    const-string v0, "onTerminate"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    new-instance v0, Lio/reactivex/processors/UnicastProcessor;

    invoke-direct {v0, p0, p1}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;)V

    return-object v0
.end method

.method public static create(ILjava/lang/Runnable;Z)Lio/reactivex/processors/UnicastProcessor;
    .locals 1
    .param p0, "capacityHint"    # I
    .param p1, "onCancelled"    # Ljava/lang/Runnable;
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            "Z)",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 248
    const-string v0, "onTerminate"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    new-instance v0, Lio/reactivex/processors/UnicastProcessor;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static create(Z)Lio/reactivex/processors/UnicastProcessor;
    .locals 3
    .param p0, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 209
    new-instance v0, Lio/reactivex/processors/UnicastProcessor;

    invoke-static {}, Lio/reactivex/processors/UnicastProcessor;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method


# virtual methods
.method checkTerminated(ZZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)Z
    .locals 4
    .param p1, "failFast"    # Z
    .param p2, "d"    # Z
    .param p3, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;)Z"
        }
    .end annotation

    .line 412
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    .local p4, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p5, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 414
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 415
    return v1

    .line 418
    :cond_0
    if-eqz p2, :cond_3

    .line 419
    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {p5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 421
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    invoke-interface {p4, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 423
    return v1

    .line 425
    :cond_1
    if-eqz p3, :cond_3

    .line 426
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    .line 427
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 428
    if-eqz v0, :cond_2

    .line 429
    invoke-interface {p4, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 431
    :cond_2
    invoke-interface {p4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 433
    :goto_0
    return v1

    .line 437
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method doTerminate()V
    .locals 2

    .line 292
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 293
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 296
    :cond_0
    return-void
.end method

.method drain()V
    .locals 4

    .line 385
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    invoke-virtual {v0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x1

    .line 391
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/Subscriber;

    .line 393
    .local v1, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 395
    iget-boolean v2, p0, Lio/reactivex/processors/UnicastProcessor;->enableOperatorFusion:Z

    if-eqz v2, :cond_1

    .line 396
    invoke-virtual {p0, v1}, Lio/reactivex/processors/UnicastProcessor;->drainFused(Lorg/reactivestreams/Subscriber;)V

    goto :goto_1

    .line 398
    :cond_1
    invoke-virtual {p0, v1}, Lio/reactivex/processors/UnicastProcessor;->drainRegular(Lorg/reactivestreams/Subscriber;)V

    .line 400
    :goto_1
    return-void

    .line 403
    :cond_2
    iget-object v2, p0, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;->addAndGet(I)I

    move-result v0

    .line 404
    if-nez v0, :cond_3

    .line 405
    nop

    .line 409
    return-void

    .line 407
    :cond_3
    iget-object v2, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/reactivestreams/Subscriber;

    goto :goto_0
.end method

.method drainFused(Lorg/reactivestreams/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 343
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    .local p1, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    const/4 v0, 0x1

    .line 345
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/processors/UnicastProcessor;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 346
    .local v1, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-boolean v2, p0, Lio/reactivex/processors/UnicastProcessor;->delayError:Z

    xor-int/lit8 v2, v2, 0x1

    .line 349
    .local v2, "failFast":Z
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 350
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 351
    iget-object v3, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 352
    return-void

    .line 355
    :cond_0
    iget-boolean v3, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    .line 357
    .local v3, "d":Z
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    iget-object v5, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 358
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 359
    iget-object v5, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 360
    iget-object v4, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    invoke-interface {p1, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 361
    return-void

    .line 363
    :cond_1
    invoke-interface {p1, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 365
    if-eqz v3, :cond_3

    .line 366
    iget-object v5, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 368
    iget-object v4, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    .line 369
    .local v4, "ex":Ljava/lang/Throwable;
    if-eqz v4, :cond_2

    .line 370
    invoke-interface {p1, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 372
    :cond_2
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 374
    :goto_1
    return-void

    .line 377
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_3
    iget-object v4, p0, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    neg-int v5, v0

    invoke-virtual {v4, v5}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;->addAndGet(I)I

    move-result v0

    .line 378
    if-nez v0, :cond_4

    .line 379
    nop

    .line 382
    .end local v3    # "d":Z
    return-void

    .line 381
    :cond_4
    goto :goto_0
.end method

.method drainRegular(Lorg/reactivestreams/Subscriber;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 299
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    .local p1, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    move-object/from16 v8, p0

    const/4 v0, 0x1

    .line 301
    .local v0, "missed":I
    iget-object v9, v8, Lio/reactivex/processors/UnicastProcessor;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 302
    .local v9, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-boolean v1, v8, Lio/reactivex/processors/UnicastProcessor;->delayError:Z

    const/4 v10, 0x1

    xor-int/2addr v1, v10

    move v11, v0

    .line 305
    .end local v0    # "missed":I
    .local v1, "failFast":Z
    .local v11, "missed":I
    :goto_0
    iget-object v0, v8, Lio/reactivex/processors/UnicastProcessor;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 306
    .local v12, "r":J
    const-wide/16 v2, 0x0

    .local v2, "e":J
    :goto_1
    move-wide v6, v2

    .line 308
    .end local v2    # "e":J
    .local v6, "e":J
    cmp-long v0, v12, v6

    if-eqz v0, :cond_3

    .line 309
    iget-boolean v5, v8, Lio/reactivex/processors/UnicastProcessor;->done:Z

    .line 311
    .local v5, "d":Z
    invoke-virtual {v9}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 312
    .local v4, "t":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_2
    move/from16 v16, v0

    .line 314
    .local v16, "empty":Z
    move-object/from16 v0, p0

    move v2, v5

    move/from16 v3, v16

    move-object v10, v4

    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    .local v10, "t":Ljava/lang/Object;, "TT;"
    move-object/from16 v4, p1

    move/from16 v17, v5

    .end local v5    # "d":Z
    .local v17, "d":Z
    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/processors/UnicastProcessor;->checkTerminated(ZZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    return-void

    .line 318
    :cond_1
    if-eqz v16, :cond_2

    .line 319
    goto :goto_3

    .line 322
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 324
    const-wide/16 v2, 0x1

    add-long/2addr v2, v6

    .line 325
    .end local v6    # "e":J
    .end local v10    # "t":Ljava/lang/Object;, "TT;"
    .end local v16    # "empty":Z
    .end local v17    # "d":Z
    .restart local v2    # "e":J
    nop

    .line 306
    const/4 v10, 0x1

    goto :goto_1

    .line 327
    .end local v2    # "e":J
    .restart local v6    # "e":J
    :cond_3
    :goto_3
    move-object/from16 v0, p1

    cmp-long v2, v12, v6

    if-nez v2, :cond_4

    iget-boolean v4, v8, Lio/reactivex/processors/UnicastProcessor;->done:Z

    invoke-virtual {v9}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v5

    move-object/from16 v2, p0

    move v3, v1

    move-wide v14, v6

    .end local v6    # "e":J
    .local v14, "e":J
    move-object/from16 v6, p1

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lio/reactivex/processors/UnicastProcessor;->checkTerminated(ZZZLorg/reactivestreams/Subscriber;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 328
    return-void

    .line 331
    .end local v14    # "e":J
    .restart local v6    # "e":J
    :cond_4
    move-wide v14, v6

    .end local v6    # "e":J
    .restart local v14    # "e":J
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v4, v14, v2

    if-eqz v4, :cond_6

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v12, v2

    if-eqz v4, :cond_6

    .line 332
    iget-object v2, v8, Lio/reactivex/processors/UnicastProcessor;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v3, v14

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 335
    :cond_6
    iget-object v2, v8, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    neg-int v3, v11

    invoke-virtual {v2, v3}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;->addAndGet(I)I

    move-result v11

    .line 336
    if-nez v11, :cond_7

    .line 337
    nop

    .line 340
    .end local v12    # "r":J
    .end local v14    # "e":J
    return-void

    .line 339
    :cond_7
    nop

    .line 302
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 570
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    return-object v0

    .line 573
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 1

    .line 578
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubscribers()Z
    .locals 1

    .line 564
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 1

    .line 583
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 480
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    .line 486
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->doTerminate()V

    .line 488
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->drain()V

    .line 489
    return-void

    .line 481
    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 463
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 465
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->error:Ljava/lang/Throwable;

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    .line 473
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->doTerminate()V

    .line 475
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->drain()V

    .line 476
    return-void

    .line 466
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 467
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 451
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 453
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->drain()V

    .line 459
    return-void

    .line 454
    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 442
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->done:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_1

    .line 443
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 447
    :goto_1
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 493
    .local p0, "this":Lio/reactivex/processors/UnicastProcessor;, "Lio/reactivex/processors/UnicastProcessor<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->wip:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 496
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 497
    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->cancelled:Z

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->downstream:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->drain()V

    goto :goto_0

    .line 503
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This processor allows only a single Subscriber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 505
    :goto_0
    return-void
.end method
