.class final Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleZipArray.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleZipArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2e204f2d0e121106L


# instance fields
.field final index:I

.field final parent:Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator<",
            "TT;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;I)V
    .locals 0
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator<",
            "TT;*>;I)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;, "Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver<TT;>;"
    .local p1, "parent":Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;, "Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator<TT;*>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 155
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;->parent:Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;

    .line 156
    iput p2, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;->index:I

    .line 157
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 160
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;, "Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 161
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 175
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;, "Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;->parent:Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;->index:I

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->innerError(Ljava/lang/Throwable;I)V

    .line 176
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 165
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;, "Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 166
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 170
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;, "Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;->parent:Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;->index:I

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->innerSuccess(Ljava/lang/Object;I)V

    .line 171
    return-void
.end method
