.class final Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;
.super Lio/reactivex/internal/observers/QueueDrainObserver;
.source "ObservableWindowTimed.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWindowTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowSkipObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;,
        Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;
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
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field volatile terminated:Z

.field final timeskip:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Lio/reactivex/disposables/Disposable;

.field final windows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;I)V
    .locals 1
    .param p2, "timespan"    # J
    .param p4, "timeskip"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "worker"    # Lio/reactivex/Scheduler$Worker;
    .param p8, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            "I)V"
        }
    .end annotation

    .line 537
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/QueueDrainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    .line 538
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timespan:J

    .line 539
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timeskip:J

    .line 540
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 541
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    .line 542
    iput p8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->bufferSize:I

    .line 543
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->windows:Ljava/util/List;

    .line 544
    return-void
.end method


# virtual methods
.method complete(Lio/reactivex/subjects/UnicastSubject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;)V"
        }
    .end annotation

    .line 624
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver<TT;>;"
    .local p1, "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;-><init>(Lio/reactivex/subjects/UnicastSubject;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    .line 628
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 611
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->cancelled:Z

    .line 612
    return-void
.end method

.method disposeWorker()V
    .locals 1

    .line 620
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 621
    return-void
.end method

.method drainLoop()V
    .locals 16

    .line 632
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    check-cast v1, Lio/reactivex/internal/queue/MpscLinkedQueue;

    .line 633
    .local v1, "q":Lio/reactivex/internal/queue/MpscLinkedQueue;, "Lio/reactivex/internal/queue/MpscLinkedQueue<Ljava/lang/Object;>;"
    iget-object v2, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->downstream:Lio/reactivex/Observer;

    .line 634
    .local v2, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    iget-object v3, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->windows:Ljava/util/List;

    .line 636
    .local v3, "ws":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/subjects/UnicastSubject<TT;>;>;"
    const/4 v5, 0x1

    .line 641
    .local v5, "missed":I
    :cond_0
    :goto_0
    iget-boolean v6, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->terminated:Z

    if-eqz v6, :cond_1

    .line 642
    iget-object v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v4}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 643
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->disposeWorker()V

    .line 644
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 645
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 646
    return-void

    .line 649
    :cond_1
    iget-boolean v6, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->done:Z

    .line 651
    .local v6, "d":Z
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    .line 653
    .local v7, "v":Ljava/lang/Object;
    if-nez v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 654
    .local v8, "empty":Z
    :goto_1
    instance-of v9, v7, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;

    .line 656
    .local v9, "sw":Z
    if-eqz v6, :cond_6

    if-nez v8, :cond_3

    if-eqz v9, :cond_6

    .line 657
    :cond_3
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 658
    iget-object v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->error:Ljava/lang/Throwable;

    .line 659
    .local v4, "e":Ljava/lang/Throwable;
    if-eqz v4, :cond_4

    .line 660
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/reactivex/subjects/UnicastSubject;

    .line 661
    .local v11, "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    invoke-virtual {v11, v4}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    .line 662
    .end local v11    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    goto :goto_2

    .line 664
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/reactivex/subjects/UnicastSubject;

    .line 665
    .restart local v11    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    invoke-virtual {v11}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 666
    .end local v11    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    goto :goto_3

    .line 668
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->disposeWorker()V

    .line 669
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 670
    return-void

    .line 673
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_6
    if-eqz v8, :cond_7

    .line 674
    nop

    .line 704
    .end local v6    # "d":Z
    .end local v7    # "v":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v9    # "sw":Z
    neg-int v6, v5

    invoke-virtual {v0, v6}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->leave(I)I

    move-result v5

    .line 705
    if-nez v5, :cond_0

    .line 706
    nop

    .line 709
    return-void

    .line 677
    .restart local v6    # "d":Z
    .restart local v7    # "v":Ljava/lang/Object;
    .restart local v8    # "empty":Z
    .restart local v9    # "sw":Z
    :cond_7
    if-eqz v9, :cond_b

    .line 678
    move-object v10, v7

    check-cast v10, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;

    .line 680
    .local v10, "work":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork<TT;>;"
    iget-boolean v11, v10, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;->open:Z

    if-eqz v11, :cond_9

    .line 681
    iget-boolean v11, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->cancelled:Z

    if-eqz v11, :cond_8

    .line 682
    nop

    .line 636
    const/4 v4, 0x1

    goto :goto_0

    .line 685
    :cond_8
    iget v11, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->bufferSize:I

    invoke-static {v11}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v11

    .line 686
    .restart local v11    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-interface {v2, v11}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 689
    iget-object v12, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v13, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;

    invoke-direct {v13, v0, v11}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;-><init>(Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;Lio/reactivex/subjects/UnicastSubject;)V

    iget-wide v14, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timespan:J

    iget-object v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v13, v14, v15, v4}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 690
    .end local v11    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    goto :goto_4

    .line 691
    :cond_9
    iget-object v4, v10, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;->w:Lio/reactivex/subjects/UnicastSubject;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 692
    iget-object v4, v10, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;->w:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v4}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 693
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->cancelled:Z

    if-eqz v4, :cond_a

    .line 694
    const/4 v4, 0x1

    iput-boolean v4, v0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->terminated:Z

    goto :goto_5

    .line 697
    .end local v10    # "work":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork<TT;>;"
    :cond_a
    :goto_4
    const/4 v4, 0x1

    :goto_5
    goto :goto_7

    .line 698
    :cond_b
    const/4 v4, 0x1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/reactivex/subjects/UnicastSubject;

    .line 699
    .restart local v11    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    invoke-virtual {v11, v7}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    .line 700
    .end local v11    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    goto :goto_6

    .line 702
    .end local v6    # "d":Z
    .end local v7    # "v":Ljava/lang/Object;
    .end local v8    # "empty":Z
    .end local v9    # "sw":Z
    :cond_c
    :goto_7
    goto/16 :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .line 616
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 600
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->done:Z

    .line 601
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    .line 605
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 606
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->disposeWorker()V

    .line 607
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 588
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->error:Ljava/lang/Throwable;

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->done:Z

    .line 590
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->enter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    .line 594
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 595
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->disposeWorker()V

    .line 596
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 570
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->fastEnter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/UnicastSubject;

    .line 572
    .local v1, "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    invoke-virtual {v1, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    .line 573
    .end local v1    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    goto :goto_0

    .line 574
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->leave(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 575
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 579
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->enter()Z

    move-result v0

    if-nez v0, :cond_2

    .line 580
    return-void

    .line 583
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    .line 584
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 13
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 548
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 551
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 553
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->cancelled:Z

    if-eqz v0, :cond_0

    .line 554
    return-void

    .line 557
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->bufferSize:I

    invoke-static {v0}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v0

    .line 558
    .local v0, "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->windows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 561
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;

    invoke-direct {v2, p0, v0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$CompletionTask;-><init>(Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;Lio/reactivex/subjects/UnicastSubject;)V

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timespan:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 563
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timeskip:J

    iget-wide v10, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->timeskip:J

    iget-object v12, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v7, p0

    invoke-virtual/range {v6 .. v12}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    .line 566
    .end local v0    # "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    :cond_1
    return-void
.end method

.method public run()V
    .locals 3

    .line 714
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver<TT;>;"
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->bufferSize:I

    invoke-static {v0}, Lio/reactivex/subjects/UnicastSubject;->create(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v0

    .line 716
    .local v0, "w":Lio/reactivex/subjects/UnicastSubject;, "Lio/reactivex/subjects/UnicastSubject<TT;>;"
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;-><init>(Lio/reactivex/subjects/UnicastSubject;Z)V

    .line 717
    .local v1, "sw":Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork;, "Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$SubjectWork<TT;>;"
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->cancelled:Z

    if-nez v2, :cond_0

    .line 718
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v2, v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 720
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->enter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->drainLoop()V

    .line 723
    :cond_1
    return-void
.end method
