.class public final Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableSwitchIfEmpty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final other:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Lorg/reactivestreams/Publisher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty<TT;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    .local p2, "other":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 25
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;->other:Lorg/reactivestreams/Publisher;

    .line 26
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;->other:Lorg/reactivestreams/Publisher;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lorg/reactivestreams/Publisher;)V

    .line 31
    .local v0, "parent":Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber<TT;>;"
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty$SwitchIfEmptySubscriber;->arbiter:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 32
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSwitchIfEmpty;->source:Lio/reactivex/Flowable;

    invoke-virtual {v1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    .line 33
    return-void
.end method
