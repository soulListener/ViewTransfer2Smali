.class public final Lio/reactivex/subjects/MaybeSubject;
.super Lio/reactivex/Maybe;
.source "MaybeSubject.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TT;>;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

.field static final TERMINATED:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;


# instance fields
.field error:Ljava/lang/Throwable;

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 117
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    sput-object v1, Lio/reactivex/subjects/MaybeSubject;->EMPTY:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    .line 120
    new-array v0, v0, [Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    sput-object v0, Lio/reactivex/subjects/MaybeSubject;->TERMINATED:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 138
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/MaybeSubject;->EMPTY:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 141
    return-void
.end method

.method public static create()Lio/reactivex/subjects/MaybeSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/MaybeSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 134
    new-instance v0, Lio/reactivex/subjects/MaybeSubject;

    invoke-direct {v0}, Lio/reactivex/subjects/MaybeSubject;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 211
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    .local p1, "inner":Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    .line 212
    .local v0, "a":[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    sget-object v1, Lio/reactivex/subjects/MaybeSubject;->TERMINATED:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 213
    return v2

    .line 216
    :cond_0
    array-length v1, v0

    .line 218
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    .line 219
    .local v3, "b":[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    aput-object p1, v3, v1

    .line 221
    iget-object v2, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    const/4 v2, 0x1

    return v2

    .line 224
    .end local v0    # "a":[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 289
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/MaybeSubject;->TERMINATED:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->error:Ljava/lang/Throwable;

    return-object v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 269
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/MaybeSubject;->TERMINATED:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->value:Ljava/lang/Object;

    return-object v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 2

    .line 308
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/MaybeSubject;->TERMINATED:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObservers()Z
    .locals 1

    .line 316
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 2

    .line 300
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/MaybeSubject;->TERMINATED:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValue()Z
    .locals 2

    .line 280
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/MaybeSubject;->TERMINATED:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method observerCount()I
    .locals 1

    .line 324
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    array-length v0, v0

    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 179
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/MaybeSubject;->TERMINATED:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 181
    .local v3, "md":Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    iget-object v4, v3, Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v4}, Lio/reactivex/MaybeObserver;->onComplete()V

    .line 180
    .end local v3    # "md":Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 165
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iput-object p1, p0, Lio/reactivex/subjects/MaybeSubject;->error:Ljava/lang/Throwable;

    .line 168
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/MaybeSubject;->TERMINATED:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 169
    .local v3, "md":Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    iget-object v4, v3, Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v4, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 168
    .end local v3    # "md":Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 174
    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 145
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/MaybeSubject;->TERMINATED:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    if-ne v0, v1, :cond_0

    .line 146
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 148
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iput-object p1, p0, Lio/reactivex/subjects/MaybeSubject;->value:Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/MaybeSubject;->TERMINATED:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 157
    .local v3, "md":Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    iget-object v4, v3, Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v4, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 156
    .end local v3    # "md":Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 230
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    .local p1, "inner":Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    .line 231
    .local v0, "a":[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    array-length v1, v0

    .line 232
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 233
    return-void

    .line 236
    :cond_0
    const/4 v2, -0x1

    .line 238
    .local v2, "j":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 239
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_1

    .line 240
    move v2, v4

    .line 241
    goto :goto_2

    .line 238
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    .end local v4    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 246
    return-void

    .line 249
    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 250
    sget-object v3, Lio/reactivex/subjects/MaybeSubject;->EMPTY:[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    goto :goto_3

    .line 252
    :cond_4
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    .line 253
    .local v5, "b":[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    add-int/lit8 v3, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v4

    invoke-static {v0, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    move-object v3, v5

    .end local v5    # "b":[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    .local v3, "b":[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/subjects/MaybeSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 258
    return-void

    .line 260
    .end local v0    # "a":[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "[Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    :cond_5
    goto :goto_0
.end method

.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 188
    .local p0, "this":Lio/reactivex/subjects/MaybeSubject;, "Lio/reactivex/subjects/MaybeSubject<TT;>;"
    .local p1, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    new-instance v0, Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/subjects/MaybeSubject;)V

    .line 189
    .local v0, "md":Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;, "Lio/reactivex/subjects/MaybeSubject$MaybeDisposable<TT;>;"
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 190
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/MaybeSubject;->add(Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v0}, Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/MaybeSubject;->remove(Lio/reactivex/subjects/MaybeSubject$MaybeDisposable;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, Lio/reactivex/subjects/MaybeSubject;->error:Ljava/lang/Throwable;

    .line 196
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 197
    invoke-interface {p1, v1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v2, p0, Lio/reactivex/subjects/MaybeSubject;->value:Ljava/lang/Object;

    .line 200
    .local v2, "v":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_2

    .line 201
    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    goto :goto_0

    .line 203
    :cond_2
    invoke-interface {p1, v2}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 207
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    :goto_0
    return-void
.end method
