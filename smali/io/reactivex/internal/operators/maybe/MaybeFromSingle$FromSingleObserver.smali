.class final Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;
.super Ljava/lang/Object;
.source "MaybeFromSingle.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFromSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FromSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/MaybeObserver;
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

    .line 49
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver<TT;>;"
    .local p1, "downstream":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 51
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 55
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 56
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 57
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 61
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 81
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver<TT;>;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;, "Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 77
    return-void
.end method
