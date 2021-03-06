.class final Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeFlatMapSingleElement.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x42ff881892d3c404L


# instance fields
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/SingleSource<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver<TT;TR;>;"
    .local p1, "actual":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/SingleSource<+TR;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 60
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;->mapper:Lio/reactivex/functions/Function;

    .line 61
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver<TT;TR;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 66
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 70
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver<TT;TR;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 102
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 103
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 75
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver<TT;TR;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null SingleSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .local v0, "ss":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TR;>;"
    nop

    .line 89
    nop

    .line 92
    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapSingleObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-direct {v1, p0, v2}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapSingleObserver;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/MaybeObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 93
    return-void

    .line 86
    .end local v0    # "ss":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TR;>;"
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 88
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method
