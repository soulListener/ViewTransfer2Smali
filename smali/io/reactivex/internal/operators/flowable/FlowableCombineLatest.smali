.class public final Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;
.super Lio/reactivex/Flowable;
.source "FlowableCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$SingletonArrayFunc;,
        Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final array:[Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field final bufferSize:I

.field final combiner:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final delayErrors:Z

.field final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lio/reactivex/functions/Function;IZ)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p3, "bufferSize"    # I
    .param p4, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest<TT;TR;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/reactivestreams/Publisher<+TT;>;>;"
    .local p2, "combiner":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;+TR;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->array:[Lorg/reactivestreams/Publisher;

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->iterable:Ljava/lang/Iterable;

    .line 68
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->combiner:Lio/reactivex/functions/Function;

    .line 69
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->bufferSize:I

    .line 70
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->delayErrors:Z

    .line 71
    return-void
.end method

.method public constructor <init>([Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;IZ)V
    .locals 1
    .param p1    # [Lorg/reactivestreams/Publisher;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p3, "bufferSize"    # I
    .param p4, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest<TT;TR;>;"
    .local p1, "array":[Lorg/reactivestreams/Publisher;, "[Lorg/reactivestreams/Publisher<+TT;>;"
    .local p2, "combiner":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;+TR;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 56
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->array:[Lorg/reactivestreams/Publisher;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->iterable:Ljava/lang/Iterable;

    .line 58
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->combiner:Lio/reactivex/functions/Function;

    .line 59
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->bufferSize:I

    .line 60
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->delayErrors:Z

    .line 61
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest<TT;TR;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->array:[Lorg/reactivestreams/Publisher;

    .line 78
    .local v0, "a":[Lorg/reactivestreams/Publisher;, "[Lorg/reactivestreams/Publisher<+TT;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "n":I
    const/16 v3, 0x8

    new-array v0, v3, [Lorg/reactivestreams/Publisher;

    .line 85
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->iterable:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, "The iterator returned is null"

    invoke-static {v3, v4}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 90
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/reactivestreams/Publisher<+TT;>;>;"
    nop

    .line 89
    :goto_0
    nop

    .line 97
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .local v4, "b":Z
    nop

    .line 101
    nop

    .line 104
    if-nez v4, :cond_0

    .line 105
    nop

    .line 126
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/reactivestreams/Publisher<+TT;>;>;"
    .end local v4    # "b":Z
    goto :goto_1

    .line 111
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/reactivestreams/Publisher<+TT;>;>;"
    .restart local v4    # "b":Z
    :cond_0
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "The publisher returned by the iterator is null"

    invoke-static {v5, v6}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/reactivestreams/Publisher;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    .local v5, "p":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TT;>;"
    nop

    .line 115
    nop

    .line 118
    array-length v6, v0

    if-ne v2, v6, :cond_1

    .line 119
    shr-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v2

    new-array v6, v6, [Lorg/reactivestreams/Publisher;

    .line 120
    .local v6, "c":[Lorg/reactivestreams/Publisher;, "[Lorg/reactivestreams/Publisher<+TT;>;"
    invoke-static {v0, v1, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    move-object v0, v6

    .line 123
    .end local v6    # "c":[Lorg/reactivestreams/Publisher;, "[Lorg/reactivestreams/Publisher<+TT;>;"
    :cond_1
    add-int/lit8 v6, v2, 0x1

    .local v6, "n":I
    aput-object v5, v0, v2

    .line 124
    .end local v2    # "n":I
    .end local v4    # "b":Z
    .end local v5    # "p":Lorg/reactivestreams/Publisher;, "Lorg/reactivestreams/Publisher<+TT;>;"
    nop

    .line 89
    move v2, v6

    goto :goto_0

    .line 112
    .end local v6    # "n":I
    .restart local v2    # "n":I
    .restart local v4    # "b":Z
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 114
    invoke-static {v1, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 115
    return-void

    .line 98
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v4    # "b":Z
    :catch_1
    move-exception v1

    .line 99
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 100
    invoke-static {v1, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 101
    return-void

    .line 86
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/reactivestreams/Publisher<+TT;>;>;"
    :catch_2
    move-exception v1

    .line 87
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 88
    invoke-static {v1, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 89
    return-void

    .line 127
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "n":I
    :cond_2
    array-length v2, v0

    .line 130
    .restart local v2    # "n":I
    :goto_1
    if-nez v2, :cond_3

    .line 131
    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    .line 132
    return-void

    .line 134
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 135
    aget-object v1, v0, v1

    new-instance v3, Lio/reactivex/internal/operators/flowable/FlowableMap$MapSubscriber;

    new-instance v4, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$SingletonArrayFunc;

    invoke-direct {v4, p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$SingletonArrayFunc;-><init>(Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;)V

    invoke-direct {v3, p1, v4}, Lio/reactivex/internal/operators/flowable/FlowableMap$MapSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)V

    invoke-interface {v1, v3}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 136
    return-void

    .line 139
    :cond_4
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->combiner:Lio/reactivex/functions/Function;

    iget v7, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->bufferSize:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->delayErrors:Z

    move-object v3, v1

    move-object v4, p1

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;IIZ)V

    .line 142
    .local v1, "coordinator":Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator<TT;TR;>;"
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 144
    invoke-virtual {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->subscribe([Lorg/reactivestreams/Publisher;I)V

    .line 145
    return-void
.end method
