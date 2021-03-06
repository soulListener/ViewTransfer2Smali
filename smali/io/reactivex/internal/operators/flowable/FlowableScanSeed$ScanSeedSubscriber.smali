.class final Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableScanSeed.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableScanSeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScanSeedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18a87226297dfae5L


# instance fields
.field final accumulator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field consumed:I

.field volatile done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field final limit:I

.field final prefetch:I

.field final queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TR;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field upstream:Lorg/reactivestreams/Subscription;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BiFunction;Ljava/lang/Object;I)V
    .locals 1
    .param p4, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;TR;I)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber<TT;TR;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    .local p2, "accumulator":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TR;-TT;TR;>;"
    .local p3, "value":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 84
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 85
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->accumulator:Lio/reactivex/functions/BiFunction;

    .line 86
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->value:Ljava/lang/Object;

    .line 87
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->prefetch:I

    .line 88
    shr-int/lit8 v0, p4, 0x2

    sub-int v0, p4, v0

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->limit:I

    .line 89
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-direct {v0, p4}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0, p3}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 92
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 148
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->cancelled:Z

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 150
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 153
    :cond_0
    return-void
.end method

.method drain()V
    .locals 17

    .line 164
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber<TT;TR;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    return-void

    .line 168
    :cond_0
    const/4 v1, 0x1

    .line 169
    .local v1, "missed":I
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 170
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 171
    .local v3, "q":Lio/reactivex/internal/fuseable/SimplePlainQueue;, "Lio/reactivex/internal/fuseable/SimplePlainQueue<TR;>;"
    iget v4, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->limit:I

    .line 172
    .local v4, "lim":I
    iget v5, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->consumed:I

    .line 176
    .local v5, "c":I
    :goto_0
    iget-object v6, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 177
    .local v6, "r":J
    const-wide/16 v10, 0x0

    .line 179
    .local v10, "e":J
    :goto_1
    cmp-long v12, v10, v6

    if-eqz v12, :cond_7

    .line 180
    iget-boolean v12, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->cancelled:Z

    if-eqz v12, :cond_1

    .line 181
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 182
    return-void

    .line 184
    :cond_1
    iget-boolean v12, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    .line 186
    .local v12, "d":Z
    if-eqz v12, :cond_2

    .line 187
    iget-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->error:Ljava/lang/Throwable;

    .line 188
    .local v13, "ex":Ljava/lang/Throwable;
    if-eqz v13, :cond_2

    .line 189
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 190
    invoke-interface {v2, v13}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 191
    return-void

    .line 195
    .end local v13    # "ex":Ljava/lang/Throwable;
    :cond_2
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v13

    .line 196
    .local v13, "v":Ljava/lang/Object;, "TR;"
    if-nez v13, :cond_3

    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    .line 198
    .local v14, "empty":Z
    :goto_2
    if-eqz v12, :cond_4

    if-eqz v14, :cond_4

    .line 199
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 200
    return-void

    .line 203
    :cond_4
    if-eqz v14, :cond_5

    .line 204
    goto :goto_3

    .line 207
    :cond_5
    invoke-interface {v2, v13}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 209
    const-wide/16 v15, 0x1

    add-long/2addr v10, v15

    .line 210
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v4, :cond_6

    .line 211
    const/4 v5, 0x0

    .line 212
    iget-object v15, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    int-to-long v8, v4

    invoke-interface {v15, v8, v9}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 214
    .end local v12    # "d":Z
    .end local v13    # "v":Ljava/lang/Object;, "TR;"
    .end local v14    # "empty":Z
    :cond_6
    goto :goto_1

    .line 216
    :cond_7
    :goto_3
    cmp-long v8, v10, v6

    if-nez v8, :cond_9

    .line 217
    iget-boolean v8, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    if-eqz v8, :cond_9

    .line 218
    iget-object v8, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->error:Ljava/lang/Throwable;

    .line 219
    .local v8, "ex":Ljava/lang/Throwable;
    if-eqz v8, :cond_8

    .line 220
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    .line 221
    invoke-interface {v2, v8}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 222
    return-void

    .line 224
    :cond_8
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 225
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 226
    return-void

    .line 231
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_9
    const-wide/16 v8, 0x0

    cmp-long v12, v10, v8

    if-eqz v12, :cond_a

    .line 232
    iget-object v8, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v8, v10, v11}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 235
    :cond_a
    iput v5, v0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->consumed:I

    .line 236
    neg-int v8, v1

    invoke-virtual {v0, v8}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->addAndGet(I)I

    move-result v1

    .line 237
    if-nez v1, :cond_b

    .line 238
    nop

    .line 241
    .end local v6    # "r":J
    .end local v10    # "e":J
    return-void

    .line 240
    :cond_b
    goto :goto_0
.end method

.method public onComplete()V
    .locals 1

    .line 139
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    .line 143
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->drain()V

    .line 144
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 128
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 130
    return-void

    .line 132
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->error:Ljava/lang/Throwable;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    .line 134
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->drain()V

    .line 135
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->value:Ljava/lang/Object;

    .line 113
    .local v0, "v":Ljava/lang/Object;, "TR;"
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->accumulator:Lio/reactivex/functions/BiFunction;

    invoke-interface {v1, v0, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The accumulator returned a null value"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 119
    nop

    .line 121
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->value:Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->drain()V

    .line 124
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 116
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v2}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 117
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 96
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 101
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->prefetch:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 103
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 157
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber<TT;TR;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 159
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->drain()V

    .line 161
    :cond_0
    return-void
.end method
