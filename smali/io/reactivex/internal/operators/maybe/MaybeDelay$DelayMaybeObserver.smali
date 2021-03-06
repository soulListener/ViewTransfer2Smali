.class final Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeDelay.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeDelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DelayMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4d4175c4cbdbad1cL


# instance fields
.field final delay:J

.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 68
    iput-wide p2, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->delay:J

    .line 69
    iput-object p4, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 70
    iput-object p5, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->scheduler:Lio/reactivex/Scheduler;

    .line 71
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 91
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 0

    .line 119
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->schedule()V

    .line 120
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 113
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->error:Ljava/lang/Throwable;

    .line 114
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->schedule()V

    .line 115
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 100
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->value:Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->schedule()V

    .line 109
    return-void
.end method

.method public run()V
    .locals 3

    .line 75
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->error:Ljava/lang/Throwable;

    .line 76
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, v0}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->value:Ljava/lang/Object;

    .line 80
    .local v1, "v":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_1

    .line 81
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v2, v1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v2}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 86
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void
.end method

.method schedule()V
    .locals 4

    .line 123
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;, "Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->delay:J

    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {p0, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 124
    return-void
.end method
