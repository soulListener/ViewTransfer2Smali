.class public final Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableRetryPredicate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RetrySubscriber;
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
.field final count:J

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;JLio/reactivex/functions/Predicate;)V
    .locals 0
    .param p2, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;J",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;, "Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate<TT;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    .local p4, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-Ljava/lang/Throwable;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 32
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;->predicate:Lio/reactivex/functions/Predicate;

    .line 33
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;->count:J

    .line 34
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;, "Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>(Z)V

    .line 39
    .local v0, "sa":Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 41
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RetrySubscriber;

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;->count:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;->predicate:Lio/reactivex/functions/Predicate;

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate;->source:Lio/reactivex/Flowable;

    move-object v2, v1

    move-object v3, p1

    move-object v7, v0

    invoke-direct/range {v2 .. v8}, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RetrySubscriber;-><init>(Lorg/reactivestreams/Subscriber;JLio/reactivex/functions/Predicate;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;Lorg/reactivestreams/Publisher;)V

    .line 42
    .local v1, "rs":Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RetrySubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RetrySubscriber<TT;>;"
    invoke-virtual {v1}, Lio/reactivex/internal/operators/flowable/FlowableRetryPredicate$RetrySubscriber;->subscribeNext()V

    .line 43
    return-void
.end method
