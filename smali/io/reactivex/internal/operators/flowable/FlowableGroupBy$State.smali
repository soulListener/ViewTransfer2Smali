.class final Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "FlowableGroupBy.java"

# interfaces
.implements Lorg/reactivestreams/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;",
        "Lorg/reactivestreams/Publisher<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x35762a4bbab31538L


# instance fields
.field final actual:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field outputFused:Z

.field final parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<",
            "*TK;TT;>;"
        }
    .end annotation
.end field

.field produced:I

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(ILio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "bufferSize"    # I
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<",
            "*TK;TT;>;TK;Z)V"
        }
    .end annotation

    .line 503
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    .local p2, "parent":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<*TK;TT;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 488
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 493
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 495
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    .line 497
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 504
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 505
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    .line 506
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->key:Ljava/lang/Object;

    .line 507
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->delayError:Z

    .line 508
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 520
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->cancel(Ljava/lang/Object;)V

    .line 523
    :cond_0
    return-void
.end method

.method checkTerminated(ZZLorg/reactivestreams/Subscriber;Z)Z
    .locals 3
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;Z)Z"
        }
    .end annotation

    .line 663
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    .local p3, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 665
    return v1

    .line 668
    :cond_0
    if-eqz p1, :cond_4

    .line 669
    if-eqz p4, :cond_2

    .line 670
    if-eqz p2, :cond_4

    .line 671
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    .line 672
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 673
    invoke-interface {p3, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 675
    :cond_1
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 677
    :goto_0
    return v1

    .line 680
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    .line 681
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 682
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 683
    invoke-interface {p3, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 684
    return v1

    .line 686
    :cond_3
    if-eqz p2, :cond_4

    .line 687
    invoke-interface {p3}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 688
    return v1

    .line 693
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 728
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 729
    return-void
.end method

.method drain()V
    .locals 1

    .line 553
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    return-void

    .line 556
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->outputFused:Z

    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drainFused()V

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drainNormal()V

    .line 561
    :goto_0
    return-void
.end method

.method drainFused()V
    .locals 5

    .line 564
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    const/4 v0, 0x1

    .line 566
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 567
    .local v1, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reactivestreams/Subscriber;

    .line 570
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 571
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 572
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 573
    return-void

    .line 576
    :cond_1
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    .line 578
    .local v3, "d":Z
    if-eqz v3, :cond_2

    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->delayError:Z

    if-nez v4, :cond_2

    .line 579
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    .line 580
    .local v4, "ex":Ljava/lang/Throwable;
    if-eqz v4, :cond_2

    .line 581
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 582
    invoke-interface {v2, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 583
    return-void

    .line 587
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 589
    if-eqz v3, :cond_4

    .line 590
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    .line 591
    .restart local v4    # "ex":Ljava/lang/Throwable;
    if-eqz v4, :cond_3

    .line 592
    invoke-interface {v2, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 594
    :cond_3
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 596
    :goto_1
    return-void

    .line 600
    .end local v3    # "d":Z
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_4
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->addAndGet(I)I

    move-result v0

    .line 601
    if-nez v0, :cond_5

    .line 602
    return-void

    .line 605
    :cond_5
    if-nez v2, :cond_0

    .line 606
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/reactivestreams/Subscriber;

    goto :goto_0
.end method

.method drainNormal()V
    .locals 15

    .line 612
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    const/4 v0, 0x1

    .line 614
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 615
    .local v1, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->delayError:Z

    .line 616
    .local v2, "delayError":Z
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/reactivestreams/Subscriber;

    .line 618
    .local v3, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :cond_0
    :goto_0
    if-eqz v3, :cond_7

    .line 619
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 620
    .local v4, "r":J
    const-wide/16 v6, 0x0

    move-wide v8, v6

    .line 622
    .local v8, "e":J
    :goto_1
    cmp-long v10, v8, v4

    if-eqz v10, :cond_4

    .line 623
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    .line 624
    .local v10, "d":Z
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v11

    .line 625
    .local v11, "v":Ljava/lang/Object;, "TT;"
    if-nez v11, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    .line 627
    .local v12, "empty":Z
    :goto_2
    invoke-virtual {p0, v10, v12, v3, v2}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->checkTerminated(ZZLorg/reactivestreams/Subscriber;Z)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 628
    return-void

    .line 631
    :cond_2
    if-eqz v12, :cond_3

    .line 632
    goto :goto_3

    .line 635
    :cond_3
    invoke-interface {v3, v11}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 637
    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    .line 638
    .end local v10    # "d":Z
    .end local v11    # "v":Ljava/lang/Object;, "TT;"
    .end local v12    # "empty":Z
    goto :goto_1

    .line 640
    :cond_4
    :goto_3
    cmp-long v10, v8, v4

    if-nez v10, :cond_5

    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v3, v2}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->checkTerminated(ZZLorg/reactivestreams/Subscriber;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 641
    return-void

    .line 644
    :cond_5
    cmp-long v10, v8, v6

    if-eqz v10, :cond_7

    .line 645
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v10, v4, v6

    if-eqz v10, :cond_6

    .line 646
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v10, v8

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 648
    :cond_6
    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object v6, v6, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v6, v8, v9}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 652
    .end local v4    # "r":J
    .end local v8    # "e":J
    :cond_7
    neg-int v4, v0

    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->addAndGet(I)I

    move-result v0

    .line 653
    if-nez v0, :cond_8

    .line 654
    nop

    .line 660
    return-void

    .line 656
    :cond_8
    if-nez v3, :cond_0

    .line 657
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lorg/reactivestreams/Subscriber;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .line 723
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 548
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    .line 549
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    .line 550
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 542
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->error:Ljava/lang/Throwable;

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->done:Z

    .line 544
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    .line 545
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 537
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    .line 539
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 708
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 709
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 710
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    .line 711
    return-object v0

    .line 713
    :cond_0
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    .line 714
    .local v1, "p":I
    if-eqz v1, :cond_1

    .line 715
    const/4 v2, 0x0

    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->produced:I

    .line 716
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->parent:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;

    iget-object v2, v2, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;->upstream:Lorg/reactivestreams/Subscription;

    int-to-long v3, v1

    invoke-interface {v2, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 718
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 512
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 514
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    .line 516
    :cond_0
    return-void
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 698
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->outputFused:Z

    .line 700
    const/4 v0, 0x2

    return v0

    .line 702
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public subscribe(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 527
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 529
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 530
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->drain()V

    goto :goto_0

    .line 532
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Subscriber allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 534
    :goto_0
    return-void
.end method
