.class public final Lio/reactivex/internal/subscribers/BoundedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "BoundedSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/observers/LambdaConsumerIntrospection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/observers/LambdaConsumerIntrospection;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x64a12a8486b15cccL


# instance fields
.field final bufferSize:I

.field consumed:I

.field final limit:I

.field final onComplete:Lio/reactivex/functions/Action;

.field final onError:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final onSubscribe:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;I)V
    .locals 1
    .param p3, "onComplete"    # Lio/reactivex/functions/Action;
    .param p5, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lorg/reactivestreams/Subscription;",
            ">;I)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/reactivex/internal/subscribers/BoundedSubscriber;, "Lio/reactivex/internal/subscribers/BoundedSubscriber<TT;>;"
    .local p1, "onNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TT;>;"
    .local p2, "onError":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Ljava/lang/Throwable;>;"
    .local p4, "onSubscribe":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Lorg/reactivestreams/Subscription;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 46
    iput-object p1, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    .line 47
    iput-object p2, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onError:Lio/reactivex/functions/Consumer;

    .line 48
    iput-object p3, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onComplete:Lio/reactivex/functions/Action;

    .line 49
    iput-object p4, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onSubscribe:Lio/reactivex/functions/Consumer;

    .line 50
    iput p5, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->bufferSize:I

    .line 51
    shr-int/lit8 v0, p5, 0x2

    sub-int v0, p5, v0

    iput v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->limit:I

    .line 52
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 133
    .local p0, "this":Lio/reactivex/internal/subscribers/BoundedSubscriber;, "Lio/reactivex/internal/subscribers/BoundedSubscriber<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 134
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 118
    .local p0, "this":Lio/reactivex/internal/subscribers/BoundedSubscriber;, "Lio/reactivex/internal/subscribers/BoundedSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->cancel()V

    .line 119
    return-void
.end method

.method public hasCustomOnError()Z
    .locals 2

    .line 138
    .local p0, "this":Lio/reactivex/internal/subscribers/BoundedSubscriber;, "Lio/reactivex/internal/subscribers/BoundedSubscriber<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onError:Lio/reactivex/functions/Consumer;

    sget-object v1, Lio/reactivex/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/functions/Consumer;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisposed()Z
    .locals 2

    .line 123
    .local p0, "this":Lio/reactivex/internal/subscribers/BoundedSubscriber;, "Lio/reactivex/internal/subscribers/BoundedSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->get()Ljava/lang/Object;

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

.method public onComplete()V
    .locals 2

    .line 105
    .local p0, "this":Lio/reactivex/internal/subscribers/BoundedSubscriber;, "Lio/reactivex/internal/subscribers/BoundedSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 106
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->lazySet(Ljava/lang/Object;)V

    .line 108
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onComplete:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 111
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 114
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 90
    .local p0, "this":Lio/reactivex/internal/subscribers/BoundedSubscriber;, "Lio/reactivex/internal/subscribers/BoundedSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 91
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->lazySet(Ljava/lang/Object;)V

    .line 93
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 96
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 97
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 99
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 101
    :goto_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lio/reactivex/internal/subscribers/BoundedSubscriber;, "Lio/reactivex/internal/subscribers/BoundedSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onNext:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    .line 73
    iget v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->consumed:I

    add-int/lit8 v0, v0, 0x1

    .line 74
    .local v0, "c":I
    iget v1, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->limit:I

    if-ne v0, v1, :cond_0

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->consumed:I

    .line 76
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/Subscription;

    iget v2, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->limit:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 78
    :cond_0
    iput v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->consumed:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "c":I
    :goto_0
    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 82
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/Subscription;

    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 83
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 86
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 56
    .local p0, "this":Lio/reactivex/internal/subscribers/BoundedSubscriber;, "Lio/reactivex/internal/subscribers/BoundedSubscriber<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onSubscribe:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 61
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 62
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 65
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 128
    .local p0, "this":Lio/reactivex/internal/subscribers/BoundedSubscriber;, "Lio/reactivex/internal/subscribers/BoundedSubscriber<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/BoundedSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 129
    return-void
.end method
