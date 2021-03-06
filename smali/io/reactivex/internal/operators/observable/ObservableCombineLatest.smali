.class public final Lio/reactivex/internal/operators/observable/ObservableCombineLatest;
.super Lio/reactivex/Observable;
.source "ObservableCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final combiner:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final delayError:Z

.field final sources:[Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/ObservableSource;Ljava/lang/Iterable;Lio/reactivex/functions/Function;IZ)V
    .locals 0
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest<TT;TR;>;"
    .local p1, "sources":[Lio/reactivex/ObservableSource;, "[Lio/reactivex/ObservableSource<+TT;>;"
    .local p2, "sourcesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/ObservableSource<+TT;>;>;"
    .local p3, "combiner":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;+TR;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 39
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->sources:[Lio/reactivex/ObservableSource;

    .line 40
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->sourcesIterable:Ljava/lang/Iterable;

    .line 41
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->combiner:Lio/reactivex/functions/Function;

    .line 42
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->bufferSize:I

    .line 43
    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->delayError:Z

    .line 44
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest<TT;TR;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->sources:[Lio/reactivex/ObservableSource;

    .line 50
    .local v0, "sources":[Lio/reactivex/ObservableSource;, "[Lio/reactivex/ObservableSource<+TT;>;"
    const/4 v1, 0x0

    .line 51
    .local v1, "count":I
    if-nez v0, :cond_1

    .line 52
    const/16 v2, 0x8

    new-array v0, v2, [Lio/reactivex/Observable;

    .line 53
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/ObservableSource;

    .line 54
    .local v3, "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TT;>;"
    array-length v4, v0

    if-ne v1, v4, :cond_0

    .line 55
    shr-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v1

    new-array v4, v4, [Lio/reactivex/ObservableSource;

    .line 56
    .local v4, "b":[Lio/reactivex/ObservableSource;, "[Lio/reactivex/ObservableSource<+TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    move-object v0, v4

    .line 59
    .end local v4    # "b":[Lio/reactivex/ObservableSource;, "[Lio/reactivex/ObservableSource<+TT;>;"
    :cond_0
    add-int/lit8 v4, v1, 0x1

    .local v4, "count":I
    aput-object v3, v0, v1

    .line 60
    .end local v1    # "count":I
    .end local v3    # "p":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TT;>;"
    nop

    .line 53
    move v1, v4

    goto :goto_0

    .line 62
    .end local v4    # "count":I
    .restart local v1    # "count":I
    :cond_1
    array-length v1, v0

    .line 65
    :cond_2
    if-nez v1, :cond_3

    .line 66
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    .line 67
    return-void

    .line 70
    :cond_3
    new-instance v8, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->combiner:Lio/reactivex/functions/Function;

    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->bufferSize:I

    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->delayError:Z

    move-object v2, v8

    move-object v3, p1

    move v5, v1

    invoke-direct/range {v2 .. v7}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;IIZ)V

    .line 71
    .local v2, "lc":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-virtual {v2, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->subscribe([Lio/reactivex/ObservableSource;)V

    .line 72
    return-void
.end method
