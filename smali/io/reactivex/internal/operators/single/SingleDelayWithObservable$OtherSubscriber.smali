.class final Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleDelayWithObservable.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDelayWithObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OtherSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TU;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x76ddf7e9b08d21a8L


# instance fields
.field done:Z

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;",
            "Lio/reactivex/SingleSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;, "Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber<TT;TU;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    .local p2, "source":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->downstream:Lio/reactivex/SingleObserver;

    .line 54
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->source:Lio/reactivex/SingleSource;

    .line 55
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 92
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;, "Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber<TT;TU;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 93
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;, "Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber<TT;TU;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 83
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;, "Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->done:Z

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->source:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/observers/ResumeSingleObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->downstream:Lio/reactivex/SingleObserver;

    invoke-direct {v1, p0, v2}, Lio/reactivex/internal/observers/ResumeSingleObserver;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/SingleObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 88
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 73
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;, "Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber<TT;TU;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 75
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->done:Z

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;, "Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber<TT;TU;>;"
    .local p1, "value":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 68
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->onComplete()V

    .line 69
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 59
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;, "Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber<TT;TU;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 63
    :cond_0
    return-void
.end method
