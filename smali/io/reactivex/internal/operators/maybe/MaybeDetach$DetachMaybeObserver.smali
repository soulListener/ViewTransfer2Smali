.class final Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;
.super Ljava/lang/Object;
.source "MaybeDetach.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeDetach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DetachMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver<TT;>;"
    .local p1, "downstream":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 44
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 48
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 50
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 51
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 55
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 89
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 91
    .local v0, "a":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    if-eqz v0, :cond_0

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 93
    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 95
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 79
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 81
    .local v0, "a":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    if-eqz v0, :cond_0

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 83
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 60
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 71
    .local v0, "a":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    if-eqz v0, :cond_0

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 73
    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 75
    :cond_0
    return-void
.end method
