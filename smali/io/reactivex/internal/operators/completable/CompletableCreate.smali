.class public final Lio/reactivex/internal/operators/completable/CompletableCreate;
.super Lio/reactivex/Completable;
.source "CompletableCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;
    }
.end annotation


# instance fields
.field final source:Lio/reactivex/CompletableOnSubscribe;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableOnSubscribe;)V
    .locals 0
    .param p1, "source"    # Lio/reactivex/CompletableOnSubscribe;

    .line 29
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 30
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCreate;->source:Lio/reactivex/CompletableOnSubscribe;

    .line 31
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 2
    .param p1, "observer"    # Lio/reactivex/CompletableObserver;

    .line 35
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;-><init>(Lio/reactivex/CompletableObserver;)V

    .line 36
    .local v0, "parent":Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 39
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableCreate;->source:Lio/reactivex/CompletableOnSubscribe;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableOnSubscribe;->subscribe(Lio/reactivex/CompletableEmitter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 42
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/completable/CompletableCreate$Emitter;->onError(Ljava/lang/Throwable;)V

    .line 44
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
