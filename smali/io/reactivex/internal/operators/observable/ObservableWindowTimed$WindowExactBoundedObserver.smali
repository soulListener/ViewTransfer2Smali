.class final Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;
.super Lio/reactivex/internal/observers/QueueDrainObserver;
.source "ObservableWindowTimed.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWindowTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowExactBoundedObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/QueueDrainObserver<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observable<",
        "TT;>;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field count:J

.field final maxSize:J

.field producerIndex:J

.field final restartTimerOnMaxSize:Z

.field final scheduler:Lio/reactivex/Scheduler;

.field volatile terminated:Z

.field final timer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Lio/reactivex/disposables/Disposable;

.field window:Lio/reactivex/subjects/UnicastSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;"
        }
    .end annotation
.end field

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;IJZ)V
    .locals 1
    .param p2, "timespan"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lio/reactivex/Scheduler;
    .param p6, "bufferSize"    # I
    .param p7, "maxSize"    # J
    .param p9, "restartTimerOnMaxSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "IJZ)V"
        }
    .end annotation

    .line 275
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/QueueDrainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 269
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 276
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timespan:J

    .line 277
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 278
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->scheduler:Lio/reactivex/Scheduler;

    .line 279
    iput p6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->bufferSize:I

    .line 280
    iput-wide p7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->maxSize:J

    .line 281
    iput-boolean p9, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->restartTimerOnMaxSize:Z

    .line 282
    if-eqz p9, :cond_0

    .line 283
    invoke-virtual {p5}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    goto :goto_0

    .line 285
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    .line 287
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;)Z
    .locals 1
    .param p0, "x0"    # Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;

    .line 247
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->cancelled:Z

    return v0
.end method

.method static synthetic access$100(Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;)Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .locals 1
    .param p0, "x0"    # Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;

    .line 247
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 389
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->cancelled:Z

    .line 390
    return-void
.end method

.method disposeTimer()V
    .locals 1

    .line 398
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 399
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    .line 400
    .local v0, "w":Lio/reactivex/Scheduler$Worker;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 403
    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 27

    .line 406
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    check-cast v1, Lio/reactivex/internal/queue/MpscLinkedQueue;

    .line 407
    .local v1, "q":Lio/reactivex/internal/queue/MpscLinkedQueue;, "Lio/reactivex/internal/queue/MpscLinkedQueue<Ljava/lang/Object;>;"
    iget-object v2, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->downstream:Lio/reactivex/Observer;

    .line 408
    .local v2, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    iget-object v3, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->window:Lio/reactivex/subjects/UnicastSubject;

    .line 410
    .local v3, "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    move-object v5, v3

    const/4 v3, 0x1

    .line 414
    .local v3, "missed":I
    .local v5, "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    :cond_0
    :goto_0
    iget-boolean v6, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->terminated:Z

    if-eqz v6, :cond_1

    .line 415
    iget-object v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v4}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 416
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->disposeTimer()V

    .line 418
    return-void

    .line 421
    :cond_1
    iget-boolean v6, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->done:Z

    .line 423
    .local v6, "d":Z
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    .line 425
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 426
    .local v8, "empty":Z
    :goto_1
    instance-of v9, v7, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;

    .line 428
    .local v9, "isHolder":Z
    if-eqz v6, :cond_5

    if-nez v8, :cond_3

    if-eqz v9, :cond_5

    .line 429
    :cond_3
    const/4 v4, 0x0

    iput-object v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->window:Lio/reactivex/subjects/UnicastSubject;

    .line 430
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 431
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->disposeTimer()V

    .line 432
    iget-object v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->error:Ljava/lang/Throwable;

    .line 433
    .local v4, "err":Ljava/lang/Throwable;
    if-eqz v4, :cond_4

    .line 434
    invoke-virtual {v5, v4}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 436
    :cond_4
    invoke-virtual {v5}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 438
    :goto_2
    return-void

    .line 441
    .end local v4    # "err":Ljava/lang/Throwable;
    :cond_5
    if-eqz v8, :cond_6

    .line 442
    nop

    .line 487
    .end local v6    # "d":Z
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v9    # "isHolder":Z
    neg-int v6, v3

    invoke-virtual {v0, v6}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->leave(I)I

    move-result v3

    .line 488
    if-nez v3, :cond_0

    .line 489
    nop

    .line 492
    return-void

    .line 445
    .restart local v6    # "d":Z
    .restart local v7    # "o":Ljava/lang/Object;
    .restart local v8    # "empty":Z
    .restart local v9    # "isHolder":Z
    :cond_6
    if-eqz v9, :cond_8

    .line 446
    move-object v12, v7

    check-cast v12, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;

    .line 447
    .local v12, "consumerIndexHolder":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;
    iget-boolean v13, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->restartTimerOnMaxSize:Z

    if-nez v13, :cond_7

    iget-wide v13, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->producerIndex:J

    iget-wide v10, v12, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;->index:J

    cmp-long v16, v13, v10

    if-nez v16, :cond_0

    .line 448
    :cond_7
    invoke-virtual {v5}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 449
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->count:J

    .line 450
    iget v10, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->bufferSize:I

    invoke-static {v10}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v5

    .line 451
    iput-object v5, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->window:Lio/reactivex/subjects/UnicastSubject;

    .line 453
    invoke-interface {v2, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 458
    .end local v12    # "consumerIndexHolder":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;
    :cond_8
    invoke-static {v7}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    .line 459
    iget-wide v10, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->count:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    .line 461
    .local v10, "c":J
    move-object/from16 v17, v5

    .end local v5    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    .local v17, "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    iget-wide v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->maxSize:J

    cmp-long v14, v10, v4

    if-ltz v14, :cond_b

    .line 462
    iget-wide v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->producerIndex:J

    add-long/2addr v4, v12

    iput-wide v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->producerIndex:J

    .line 463
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->count:J

    .line 465
    invoke-virtual/range {v17 .. v17}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 467
    iget v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->bufferSize:I

    invoke-static {v4}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v4

    .line 468
    .end local v17    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    .local v4, "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    iput-object v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->window:Lio/reactivex/subjects/UnicastSubject;

    .line 469
    iget-object v5, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v5, v4}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 471
    iget-boolean v5, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->restartTimerOnMaxSize:Z

    if-eqz v5, :cond_a

    .line 472
    iget-object v5, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/disposables/Disposable;

    .line 473
    .local v5, "tm":Lio/reactivex/disposables/Disposable;
    invoke-interface {v5}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 475
    iget-object v12, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v13, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;

    iget-wide v14, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->producerIndex:J

    invoke-direct {v13, v14, v15, v0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;-><init>(JLio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;)V

    iget-wide v14, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timespan:J

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    .end local v1    # "q":Lio/reactivex/internal/queue/MpscLinkedQueue;, "Lio/reactivex/internal/queue/MpscLinkedQueue<Ljava/lang/Object;>;"
    .end local v2    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    .local v24, "q":Lio/reactivex/internal/queue/MpscLinkedQueue;, "Lio/reactivex/internal/queue/MpscLinkedQueue<Ljava/lang/Object;>;"
    .local v25, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    iget-wide v1, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timespan:J

    move/from16 v26, v3

    .end local v3    # "missed":I
    .local v26, "missed":I
    iget-object v3, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-wide/from16 v19, v14

    move-wide/from16 v21, v1

    move-object/from16 v23, v3

    invoke-virtual/range {v17 .. v23}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 477
    .local v1, "task":Lio/reactivex/disposables/Disposable;
    iget-object v2, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v5, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 478
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 480
    .end local v1    # "task":Lio/reactivex/disposables/Disposable;
    .end local v5    # "tm":Lio/reactivex/disposables/Disposable;
    :cond_9
    goto :goto_3

    .line 485
    .end local v6    # "d":Z
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v9    # "isHolder":Z
    .end local v10    # "c":J
    .end local v24    # "q":Lio/reactivex/internal/queue/MpscLinkedQueue;, "Lio/reactivex/internal/queue/MpscLinkedQueue<Ljava/lang/Object;>;"
    .end local v25    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    .end local v26    # "missed":I
    .local v1, "q":Lio/reactivex/internal/queue/MpscLinkedQueue;, "Lio/reactivex/internal/queue/MpscLinkedQueue<Ljava/lang/Object;>;"
    .restart local v2    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    .restart local v3    # "missed":I
    :cond_a
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move/from16 v26, v3

    .end local v1    # "q":Lio/reactivex/internal/queue/MpscLinkedQueue;, "Lio/reactivex/internal/queue/MpscLinkedQueue<Ljava/lang/Object;>;"
    .end local v2    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    .end local v3    # "missed":I
    .restart local v24    # "q":Lio/reactivex/internal/queue/MpscLinkedQueue;, "Lio/reactivex/internal/queue/MpscLinkedQueue<Ljava/lang/Object;>;"
    .restart local v25    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    .restart local v26    # "missed":I
    :goto_3
    move-object v5, v4

    goto :goto_4

    .line 483
    .end local v4    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    .end local v24    # "q":Lio/reactivex/internal/queue/MpscLinkedQueue;, "Lio/reactivex/internal/queue/MpscLinkedQueue<Ljava/lang/Object;>;"
    .end local v25    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    .end local v26    # "missed":I
    .restart local v1    # "q":Lio/reactivex/internal/queue/MpscLinkedQueue;, "Lio/reactivex/internal/queue/MpscLinkedQueue<Ljava/lang/Object;>;"
    .restart local v2    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    .restart local v3    # "missed":I
    .restart local v6    # "d":Z
    .restart local v7    # "o":Ljava/lang/Object;
    .restart local v8    # "empty":Z
    .restart local v9    # "isHolder":Z
    .restart local v10    # "c":J
    .restart local v17    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    :cond_b
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move/from16 v26, v3

    .end local v1    # "q":Lio/reactivex/internal/queue/MpscLinkedQueue;, "Lio/reactivex/internal/queue/MpscLinkedQueue<Ljava/lang/Object;>;"
    .end local v2    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    .end local v3    # "missed":I
    .restart local v24    # "q":Lio/reactivex/internal/queue/MpscLinkedQueue;, "Lio/reactivex/internal/queue/MpscLinkedQueue<Ljava/lang/Object;>;"
    .restart local v25    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    .restart local v26    # "missed":I
    iput-wide v10, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->count:J

    .line 485
    move-object/from16 v5, v17

    .line 410
    .end local v6    # "d":Z
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v9    # "isHolder":Z
    .end local v10    # "c":J
    .end local v17    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    .local v5, "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    :goto_4
    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    goto/16 :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .line 394
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 378
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->done:Z

    .line 379
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->drainLoop()V

    .line 383
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 384
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->disposeTimer()V

    .line 385
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 366
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->error:Ljava/lang/Throwable;

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->done:Z

    .line 368
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->drainLoop()V

    .line 372
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 373
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->disposeTimer()V

    .line 374
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 321
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->terminated:Z

    if-eqz v0, :cond_0

    .line 322
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->window:Lio/reactivex/subjects/UnicastSubject;

    .line 327
    .local v0, "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    .line 329
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->count:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 331
    .local v1, "c":J
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->maxSize:J

    cmp-long v7, v1, v5

    if-ltz v7, :cond_1

    .line 332
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->producerIndex:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->producerIndex:J

    .line 333
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->count:J

    .line 335
    invoke-virtual {v0}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 337
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->bufferSize:I

    invoke-static {v3}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v0

    .line 338
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->window:Lio/reactivex/subjects/UnicastSubject;

    .line 339
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v3, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 340
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->restartTimerOnMaxSize:Z

    if-eqz v3, :cond_2

    .line 341
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/disposables/Disposable;

    .line 342
    .local v3, "tm":Lio/reactivex/disposables/Disposable;
    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 343
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v5, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->producerIndex:J

    invoke-direct {v5, v6, v7, p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;-><init>(JLio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;)V

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timespan:J

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timespan:J

    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v4 .. v10}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v4

    .line 346
    .local v4, "task":Lio/reactivex/disposables/Disposable;
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v5, v4}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 347
    .end local v3    # "tm":Lio/reactivex/disposables/Disposable;
    .end local v4    # "task":Lio/reactivex/disposables/Disposable;
    goto :goto_0

    .line 349
    :cond_1
    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->count:J

    .line 352
    :cond_2
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->leave(I)I

    move-result v3

    if-nez v3, :cond_3

    .line 353
    return-void

    .line 355
    .end local v0    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    .end local v1    # "c":J
    :cond_3
    goto :goto_1

    .line 356
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->enter()Z

    move-result v0

    if-nez v0, :cond_5

    .line 358
    return-void

    .line 361
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->drainLoop()V

    .line 362
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 11
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 291
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 294
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->downstream:Lio/reactivex/Observer;

    .line 296
    .local v0, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 298
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->cancelled:Z

    if-eqz v1, :cond_0

    .line 299
    return-void

    .line 302
    :cond_0
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->bufferSize:I

    invoke-static {v1}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v1

    .line 303
    .local v1, "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->window:Lio/reactivex/subjects/UnicastSubject;

    .line 305
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 308
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->producerIndex:J

    invoke-direct {v3, v4, v5, p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;-><init>(JLio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;)V

    .line 309
    .local v3, "consumerIndexHolder":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->restartTimerOnMaxSize:Z

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timespan:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timespan:J

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v2 .. v8}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    goto :goto_0

    .line 312
    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timespan:J

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timespan:J

    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v5, v3

    invoke-virtual/range {v4 .. v10}, Lio/reactivex/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 315
    .local v2, "task":Lio/reactivex/disposables/Disposable;
    :goto_0
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v2}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 317
    .end local v0    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    .end local v1    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    .end local v2    # "task":Lio/reactivex/disposables/Disposable;
    .end local v3    # "consumerIndexHolder":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowExactBoundedObserver$ConsumerIndexHolder;
    :cond_2
    return-void
.end method
