.class public final Lio/reactivex/internal/operators/single/SingleZipIterable;
.super Lio/reactivex/Single;
.source "SingleZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleZipIterable$SingletonArrayFunc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleZipIterable;, "Lio/reactivex/internal/operators/single/SingleZipIterable<TT;TR;>;"
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/SingleSource<+TT;>;>;"
    .local p2, "zipper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;+TR;>;"
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 32
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleZipIterable;->sources:Ljava/lang/Iterable;

    .line 33
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleZipIterable;->zipper:Lio/reactivex/functions/Function;

    .line 34
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TR;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleZipIterable;, "Lio/reactivex/internal/operators/single/SingleZipIterable<TT;TR;>;"
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/SingleSource;

    .line 40
    .local v0, "a":[Lio/reactivex/SingleSource;, "[Lio/reactivex/SingleSource<+TT;>;"
    const/4 v1, 0x0

    move v2, v1

    .line 43
    .local v2, "n":I
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleZipIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/SingleSource;

    .line 44
    .local v4, "source":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    if-nez v4, :cond_0

    .line 45
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "One of the sources is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    .line 46
    return-void

    .line 48
    :cond_0
    array-length v5, v0

    if-ne v2, v5, :cond_1

    .line 49
    shr-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lio/reactivex/SingleSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v5

    .line 51
    :cond_1
    add-int/lit8 v5, v2, 0x1

    .local v5, "n":I
    :try_start_1
    aput-object v4, v0, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .end local v2    # "n":I
    .end local v4    # "source":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    nop

    .line 43
    move v2, v5

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    move v2, v5

    goto :goto_2

    .line 57
    .end local v5    # "n":I
    .restart local v2    # "n":I
    :cond_2
    nop

    .line 59
    if-nez v2, :cond_3

    .line 60
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    .line 61
    return-void

    .line 64
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 65
    aget-object v1, v0, v1

    new-instance v3, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;

    new-instance v4, Lio/reactivex/internal/operators/single/SingleZipIterable$SingletonArrayFunc;

    invoke-direct {v4, p0}, Lio/reactivex/internal/operators/single/SingleZipIterable$SingletonArrayFunc;-><init>(Lio/reactivex/internal/operators/single/SingleZipIterable;)V

    invoke-direct {v3, p1, v4}, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Function;)V

    invoke-interface {v1, v3}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 66
    return-void

    .line 69
    :cond_4
    new-instance v3, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;

    iget-object v4, p0, Lio/reactivex/internal/operators/single/SingleZipIterable;->zipper:Lio/reactivex/functions/Function;

    invoke-direct {v3, p1, v2, v4}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;-><init>(Lio/reactivex/SingleObserver;ILio/reactivex/functions/Function;)V

    .line 71
    .local v3, "parent":Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;, "Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator<TT;TR;>;"
    invoke-interface {p1, v3}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 73
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 74
    invoke-virtual {v3}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 75
    return-void

    .line 78
    :cond_5
    aget-object v4, v0, v1

    iget-object v5, v3, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    .end local v1    # "i":I
    :cond_6
    return-void

    .line 53
    .end local v3    # "parent":Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;, "Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator<TT;TR;>;"
    :catch_1
    move-exception v1

    .line 54
    .local v1, "ex":Ljava/lang/Throwable;
    :goto_2
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 55
    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    .line 56
    return-void
.end method
