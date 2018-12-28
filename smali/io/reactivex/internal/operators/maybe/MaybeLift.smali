.class public final Lio/reactivex/internal/operators/maybe/MaybeLift;
.super Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;
.source "MaybeLift.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final operator:Lio/reactivex/MaybeOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeOperator<",
            "+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "TT;>;",
            "Lio/reactivex/MaybeOperator<",
            "+TR;-TT;>;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeLift;, "Lio/reactivex/internal/operators/maybe/MaybeLift<TT;TR;>;"
    .local p1, "source":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<TT;>;"
    .local p2, "operator":Lio/reactivex/MaybeOperator;, "Lio/reactivex/MaybeOperator<+TR;-TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;-><init>(Lio/reactivex/MaybeSource;)V

    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeLift;->operator:Lio/reactivex/MaybeOperator;

    .line 34
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeLift;, "Lio/reactivex/internal/operators/maybe/MaybeLift<TT;TR;>;"
    .local p1, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TR;>;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeLift;->operator:Lio/reactivex/MaybeOperator;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeOperator;->apply(Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;

    move-result-object v0

    const-string v1, "The operator returned a null MaybeObserver"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/MaybeObserver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .local v0, "lifted":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    nop

    .line 45
    nop

    .line 48
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeLift;->source:Lio/reactivex/MaybeSource;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 49
    return-void

    .line 42
    .end local v0    # "lifted":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    :catch_0
    move-exception v0

    .line 43
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 44
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    .line 45
    return-void
.end method
