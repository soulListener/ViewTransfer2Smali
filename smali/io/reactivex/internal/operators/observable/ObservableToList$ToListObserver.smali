.class final Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;
.super Ljava/lang/Object;
.source "ObservableToList.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableToList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToListObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TU;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver<TT;TU;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p2, "collection":Ljava/util/Collection;, "TU;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->downstream:Lio/reactivex/Observer;

    .line 63
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->collection:Ljava/util/Collection;

    .line 64
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 76
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 77
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->collection:Ljava/util/Collection;

    .line 98
    .local v0, "c":Ljava/util/Collection;, "TU;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->collection:Ljava/util/Collection;

    .line 99
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 101
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 91
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver<TT;TU;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->collection:Ljava/util/Collection;

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;, "Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToList$ToListObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 72
    :cond_0
    return-void
.end method
