.class public final Lio/reactivex/internal/operators/completable/CompletableFromSingle;
.super Lio/reactivex/Completable;
.source "CompletableFromSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Completable;"
    }
.end annotation


# instance fields
.field final single:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableFromSingle;, "Lio/reactivex/internal/operators/completable/CompletableFromSingle<TT;>;"
    .local p1, "single":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 24
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableFromSingle;->single:Lio/reactivex/SingleSource;

    .line 25
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 2
    .param p1, "observer"    # Lio/reactivex/CompletableObserver;

    .line 29
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableFromSingle;, "Lio/reactivex/internal/operators/completable/CompletableFromSingle<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableFromSingle;->single:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;-><init>(Lio/reactivex/CompletableObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 30
    return-void
.end method
