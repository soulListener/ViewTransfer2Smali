.class final Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;
.super Lio/reactivex/flowables/GroupedFlowable;
.source "FlowableGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupedUnicast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/flowables/GroupedFlowable<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field final state:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<",
            "TT;TK;>;)V"
        }
    .end annotation

    .line 457
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "state":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    invoke-direct {p0, p1}, Lio/reactivex/flowables/GroupedFlowable;-><init>(Ljava/lang/Object;)V

    .line 458
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    .line 459
    return-void
.end method

.method public static createWith(Ljava/lang/Object;ILio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;Z)Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;
    .locals 2
    .param p1, "bufferSize"    # I
    .param p3, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<",
            "*TK;TT;>;Z)",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<",
            "TK;TT;>;"
        }
    .end annotation

    .line 452
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p2, "parent":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<*TK;TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;-><init>(ILio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;Ljava/lang/Object;Z)V

    .line 453
    .local v0, "state":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State<TT;TK;>;"
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;-><init>(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;)V

    return-object v1
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 475
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->onComplete()V

    .line 476
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 471
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->onError(Ljava/lang/Throwable;)V

    .line 472
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 467
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->onNext(Ljava/lang/Object;)V

    .line 468
    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 463
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;, "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast<TK;TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 464
    return-void
.end method
