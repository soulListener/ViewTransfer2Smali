.class final Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;
.super Lio/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber;
.source "FlowableFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterConditionalSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final filter:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber<TT;>;"
    .local p1, "actual":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-TT;>;"
    .local p2, "filter":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/BasicFuseableConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;)V

    .line 112
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->filter:Lio/reactivex/functions/Predicate;

    .line 113
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 120
    :cond_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 150
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->qs:Lio/reactivex/internal/fuseable/QueueSubscription;

    .line 151
    .local v0, "qs":Lio/reactivex/internal/fuseable/QueueSubscription;, "Lio/reactivex/internal/fuseable/QueueSubscription<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->filter:Lio/reactivex/functions/Predicate;

    .line 154
    .local v1, "f":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    :goto_0
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueSubscription;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 155
    .local v2, "t":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    .line 156
    const/4 v3, 0x0

    return-object v3

    .line 159
    :cond_0
    invoke-interface {v1, v2}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    return-object v2

    .line 163
    :cond_1
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->sourceMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 164
    const-wide/16 v3, 0x1

    invoke-interface {v0, v3, v4}, Lio/reactivex/internal/fuseable/QueueSubscription;->request(J)V

    .line 166
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_2
    goto :goto_0
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 144
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->transitiveBoundaryFusion(I)I

    move-result v0

    return v0
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    return v1

    .line 128
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->sourceMode:I

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 134
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->filter:Lio/reactivex/functions/Predicate;

    invoke-interface {v2, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .local v2, "b":Z
    nop

    .line 137
    nop

    .line 139
    if-eqz v2, :cond_2

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v3, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 135
    .end local v2    # "b":Z
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableFilter$FilterConditionalSubscriber;->fail(Ljava/lang/Throwable;)V

    .line 137
    return v0
.end method
