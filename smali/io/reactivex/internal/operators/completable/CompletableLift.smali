.class public final Lio/reactivex/internal/operators/completable/CompletableLift;
.super Lio/reactivex/Completable;
.source "CompletableLift.java"


# instance fields
.field final onLift:Lio/reactivex/CompletableOperator;

.field final source:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;Lio/reactivex/CompletableOperator;)V
    .locals 0
    .param p1, "source"    # Lio/reactivex/CompletableSource;
    .param p2, "onLift"    # Lio/reactivex/CompletableOperator;

    .line 26
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 27
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableLift;->source:Lio/reactivex/CompletableSource;

    .line 28
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableLift;->onLift:Lio/reactivex/CompletableOperator;

    .line 29
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 2
    .param p1, "observer"    # Lio/reactivex/CompletableObserver;

    .line 36
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableLift;->onLift:Lio/reactivex/CompletableOperator;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableOperator;->apply(Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;

    move-result-object v0

    .line 38
    .local v0, "sw":Lio/reactivex/CompletableObserver;
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableLift;->source:Lio/reactivex/CompletableSource;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "sw":Lio/reactivex/CompletableObserver;
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 43
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 45
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 39
    :catch_1
    move-exception v0

    .line 40
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0
.end method
