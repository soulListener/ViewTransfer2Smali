.class public abstract Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;
.super Ljava/util/concurrent/CountDownLatch;
.source "BlockingBaseSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile cancelled:Z

.field error:Ljava/lang/Throwable;

.field upstream:Lorg/reactivestreams/Subscription;

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

    .line 34
    .local p0, "this":Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;, "Lio/reactivex/internal/subscribers/BlockingBaseSubscriber<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public final blockingGet()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;, "Lio/reactivex/internal/subscribers/BlockingBaseSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 64
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 65
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 68
    .local v1, "s":Lorg/reactivestreams/Subscription;
    sget-object v2, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v2, p0, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 69
    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 72
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 76
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .end local v1    # "s":Lorg/reactivestreams/Subscription;
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;->error:Ljava/lang/Throwable;

    .line 77
    .local v0, "e":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    .line 80
    iget-object v1, p0, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;->value:Ljava/lang/Object;

    return-object v1

    .line 78
    :cond_2
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final onComplete()V
    .locals 0

    .line 53
    .local p0, "this":Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;, "Lio/reactivex/internal/subscribers/BlockingBaseSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;->countDown()V

    .line 54
    return-void
.end method

.method public final onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 39
    .local p0, "this":Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;, "Lio/reactivex/internal/subscribers/BlockingBaseSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 41
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;->cancelled:Z

    if-nez v0, :cond_0

    .line 42
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 43
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;->cancelled:Z

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/subscribers/BlockingBaseSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 45
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 49
    :cond_0
    return-void
.end method
