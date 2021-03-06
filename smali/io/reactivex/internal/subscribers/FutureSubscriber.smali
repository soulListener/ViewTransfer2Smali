.class public final Lio/reactivex/internal/subscribers/FutureSubscriber;
.super Ljava/util/concurrent/CountDownLatch;
.source "FutureSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Ljava/util/concurrent/Future;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field error:Ljava/lang/Throwable;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    .local p0, "this":Lio/reactivex/internal/subscribers/FutureSubscriber;, "Lio/reactivex/internal/subscribers/FutureSubscriber<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 165
    .local p0, "this":Lio/reactivex/internal/subscribers/FutureSubscriber;, "Lio/reactivex/internal/subscribers/FutureSubscriber<TT;>;"
    return-void
.end method

.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .line 51
    .local p0, "this":Lio/reactivex/internal/subscribers/FutureSubscriber;, "Lio/reactivex/internal/subscribers/FutureSubscriber<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 52
    .local v0, "a":Lorg/reactivestreams/Subscription;
    if-eq v0, p0, :cond_3

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 60
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/FutureSubscriber;->countDown()V

    .line 61
    const/4 v1, 0x1

    return v1

    .line 63
    .end local v0    # "a":Lorg/reactivestreams/Subscription;
    :cond_2
    goto :goto_0

    .line 53
    .restart local v0    # "a":Lorg/reactivestreams/Subscription;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 78
    .local p0, "this":Lio/reactivex/internal/subscribers/FutureSubscriber;, "Lio/reactivex/internal/subscribers/FutureSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/FutureSubscriber;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 79
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 80
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/FutureSubscriber;->await()V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/FutureSubscriber;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->error:Ljava/lang/Throwable;

    .line 87
    .local v0, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    .line 90
    iget-object v1, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->value:Ljava/lang/Object;

    return-object v1

    .line 88
    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 95
    .local p0, "this":Lio/reactivex/internal/subscribers/FutureSubscriber;, "Lio/reactivex/internal/subscribers/FutureSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/FutureSubscriber;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 96
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/internal/subscribers/FutureSubscriber;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-static {p1, p2, p3}, Lio/reactivex/internal/util/ExceptionHelper;->timeoutMessage(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/FutureSubscriber;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->error:Ljava/lang/Throwable;

    .line 107
    .local v0, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    .line 110
    iget-object v1, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->value:Ljava/lang/Object;

    return-object v1

    .line 108
    :cond_2
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 103
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 68
    .local p0, "this":Lio/reactivex/internal/subscribers/FutureSubscriber;, "Lio/reactivex/internal/subscribers/FutureSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 5

    .line 73
    .local p0, "this":Lio/reactivex/internal/subscribers/FutureSubscriber;, "Lio/reactivex/internal/subscribers/FutureSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/FutureSubscriber;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 146
    .local p0, "this":Lio/reactivex/internal/subscribers/FutureSubscriber;, "Lio/reactivex/internal/subscribers/FutureSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "The source is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscribers/FutureSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 148
    return-void

    .line 151
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 152
    .local v0, "a":Lorg/reactivestreams/Subscription;
    if-eq v0, p0, :cond_3

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 155
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/FutureSubscriber;->countDown()V

    .line 157
    return-void

    .line 159
    .end local v0    # "a":Lorg/reactivestreams/Subscription;
    :cond_2
    goto :goto_0

    .line 153
    .restart local v0    # "a":Lorg/reactivestreams/Subscription;
    :cond_3
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 131
    .local p0, "this":Lio/reactivex/internal/subscribers/FutureSubscriber;, "Lio/reactivex/internal/subscribers/FutureSubscriber<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    .line 132
    .local v0, "a":Lorg/reactivestreams/Subscription;
    if-eq v0, p0, :cond_2

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->error:Ljava/lang/Throwable;

    .line 137
    iget-object v1, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/FutureSubscriber;->countDown()V

    .line 139
    return-void

    .line 141
    .end local v0    # "a":Lorg/reactivestreams/Subscription;
    :cond_1
    goto :goto_0

    .line 133
    .restart local v0    # "a":Lorg/reactivestreams/Subscription;
    :cond_2
    :goto_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 134
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lio/reactivex/internal/subscribers/FutureSubscriber;, "Lio/reactivex/internal/subscribers/FutureSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 122
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "More than one element received"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscribers/FutureSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 123
    return-void

    .line 125
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->value:Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 115
    .local p0, "this":Lio/reactivex/internal/subscribers/FutureSubscriber;, "Lio/reactivex/internal/subscribers/FutureSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/subscribers/FutureSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    .line 116
    return-void
.end method

.method public request(J)V
    .locals 0
    .param p1, "n"    # J

    .line 170
    .local p0, "this":Lio/reactivex/internal/subscribers/FutureSubscriber;, "Lio/reactivex/internal/subscribers/FutureSubscriber<TT;>;"
    return-void
.end method
