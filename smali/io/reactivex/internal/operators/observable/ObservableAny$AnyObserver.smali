.class final Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;
.super Ljava/lang/Object;
.source "ObservableAny.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableAny;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnyObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;, "Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Ljava/lang/Boolean;>;"
    .local p2, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    .line 45
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->predicate:Lio/reactivex/functions/Predicate;

    .line 46
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 100
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;, "Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 101
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 105
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;, "Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 91
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;, "Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->done:Z

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->done:Z

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 96
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 80
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;, "Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->done:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->done:Z

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;, "Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->done:Z

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .local v0, "b":Z
    nop

    .line 68
    nop

    .line 70
    if-eqz v0, :cond_1

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->done:Z

    .line 72
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 73
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 76
    :cond_1
    return-void

    .line 64
    .end local v0    # "b":Z
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 66
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 67
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->onError(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 50
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;, "Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAny$AnyObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 54
    :cond_0
    return-void
.end method
