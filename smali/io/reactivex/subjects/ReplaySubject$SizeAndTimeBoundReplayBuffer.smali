.class final Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"

# interfaces
.implements Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6fcd9699e42b76b5L


# instance fields
.field volatile done:Z

.field volatile head:Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final maxAge:J

.field final maxSize:I

.field final scheduler:Lio/reactivex/Scheduler;

.field size:I

.field tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 4
    .param p1, "maxSize"    # I
    .param p2, "maxAge"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lio/reactivex/Scheduler;

    .line 1053
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1054
    const-string v0, "maxSize"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxSize:I

    .line 1055
    const-string v0, "maxAge"

    invoke-static {p2, p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    .line 1056
    const-string v0, "unit is null"

    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    .line 1057
    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    .line 1058
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1059
    .local v0, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1060
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1061
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1125
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1126
    .local v0, "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1128
    .local v1, "t":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1129
    iget v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1130
    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->set(Ljava/lang/Object;)V

    .line 1132
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->trim()V

    .line 1133
    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 4
    .param p1, "notificationLite"    # Ljava/lang/Object;

    .line 1137
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1138
    .local v0, "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1140
    .local v1, "t":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1141
    iget v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1142
    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    .line 1143
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    .line 1145
    iput-boolean v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->done:Z

    .line 1146
    return-void
.end method

.method getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1195
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1197
    .local v0, "index":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v1, v3

    .line 1198
    .local v1, "limit":J
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1199
    .local v3, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 1200
    iget-wide v4, v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    .line 1201
    .local v4, "ts":J
    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    .line 1202
    goto :goto_1

    .line 1204
    :cond_0
    move-object v0, v3

    .line 1205
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1206
    .end local v4    # "ts":J
    goto :goto_0

    .line 1207
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 1166
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    const/4 v0, 0x0

    .line 1167
    .local v0, "prev":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1170
    .local v1, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1171
    .local v2, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    if-nez v2, :cond_4

    .line 1172
    nop

    .line 1178
    .end local v2    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    iget-wide v4, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v2, v4

    .line 1179
    .local v2, "limit":J
    iget-wide v4, v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    const/4 v6, 0x0

    cmp-long v7, v4, v2

    if-gez v7, :cond_0

    .line 1180
    return-object v6

    .line 1183
    :cond_0
    iget-object v4, v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    .line 1184
    .local v4, "v":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 1185
    return-object v6

    .line 1187
    :cond_1
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1191
    :cond_2
    return-object v4

    .line 1188
    :cond_3
    :goto_1
    iget-object v5, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    return-object v5

    .line 1174
    .end local v4    # "v":Ljava/lang/Object;
    .local v2, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :cond_4
    move-object v0, v1

    .line 1175
    move-object v1, v2

    .line 1176
    .end local v2    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1213
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    move-result-object v0

    .line 1214
    .local v0, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I

    move-result v1

    .line 1216
    .local v1, "s":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1217
    array-length v4, p1

    if-eqz v4, :cond_3

    .line 1218
    aput-object v2, p1, v3

    goto :goto_1

    .line 1221
    :cond_0
    array-length v4, p1

    if-ge v4, v1, :cond_1

    .line 1222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    move-object p1, v4

    check-cast p1, [Ljava/lang/Object;

    .line 1225
    :cond_1
    nop

    .line 1226
    .local v3, "i":I
    :goto_0
    if-eq v3, v1, :cond_2

    .line 1227
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1228
    .local v4, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v5, v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    aput-object v5, p1, v3

    .line 1229
    add-int/lit8 v3, v3, 0x1

    .line 1230
    move-object v0, v4

    .line 1231
    .end local v4    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0

    .line 1232
    :cond_2
    array-length v4, p1

    if-le v4, v1, :cond_3

    .line 1233
    aput-object v2, p1, v1

    .line 1237
    .end local v3    # "i":I
    :cond_3
    :goto_1
    return-object p1
.end method

.method public replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 1243
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;, "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    return-void

    .line 1247
    :cond_0
    const/4 v0, 0x1

    .line 1248
    .local v0, "missed":I
    iget-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->downstream:Lio/reactivex/Observer;

    .line 1250
    .local v1, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    iget-object v2, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    check-cast v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1251
    .local v2, "index":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 1252
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    move-result-object v2

    .line 1257
    :cond_1
    :goto_0
    iget-boolean v3, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1258
    iput-object v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 1259
    return-void

    .line 1263
    :cond_2
    :goto_1
    iget-boolean v3, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-eqz v3, :cond_3

    .line 1264
    iput-object v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 1265
    return-void

    .line 1268
    :cond_3
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1270
    .local v3, "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    if-nez v3, :cond_5

    .line 1271
    nop

    .line 1295
    .end local v3    # "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1296
    goto :goto_0

    .line 1299
    :cond_4
    iput-object v2, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 1301
    neg-int v3, v0

    invoke-virtual {p1, v3}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->addAndGet(I)I

    move-result v0

    .line 1302
    if-nez v0, :cond_1

    .line 1303
    nop

    .line 1306
    return-void

    .line 1274
    .restart local v3    # "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :cond_5
    iget-object v5, v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    .line 1276
    .local v5, "o":Ljava/lang/Object;
    iget-boolean v6, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->done:Z

    if-eqz v6, :cond_7

    .line 1277
    invoke-virtual {v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1279
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1280
    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_2

    .line 1282
    :cond_6
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-interface {v1, v6}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 1284
    :goto_2
    iput-object v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 1285
    const/4 v4, 0x1

    iput-boolean v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    .line 1286
    return-void

    .line 1290
    :cond_7
    invoke-interface {v1, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 1292
    move-object v2, v3

    .line 1293
    .end local v3    # "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    .end local v5    # "o":Ljava/lang/Object;
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .line 1310
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I

    move-result v0

    return v0
.end method

.method size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1314
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    .local p1, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 1315
    .local v0, "s":I
    :goto_0
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 1316
    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1317
    .local v1, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    if-nez v1, :cond_1

    .line 1318
    iget-object v2, p1, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    .line 1319
    .local v2, "o":Ljava/lang/Object;
    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1320
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1324
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1325
    move-object p1, v1

    .line 1326
    .end local v1    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0

    .line 1328
    :cond_2
    :goto_1
    return v0
.end method

.method trim()V
    .locals 7

    .line 1064
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    .line 1065
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1066
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1067
    .local v0, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iput-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1069
    .end local v0    # "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 1071
    .local v0, "limit":J
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1074
    .local v2, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1075
    .local v3, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    if-nez v3, :cond_1

    .line 1076
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1077
    goto :goto_1

    .line 1080
    :cond_1
    iget-wide v4, v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 1081
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1082
    nop

    .line 1088
    .end local v3    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :goto_1
    return-void

    .line 1085
    .restart local v3    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :cond_2
    move-object v2, v3

    .line 1086
    .end local v3    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method trimFinal()V
    .locals 10

    .line 1091
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 1093
    .local v0, "limit":J
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1096
    .local v2, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1097
    .local v3, "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-nez v4, :cond_1

    .line 1098
    iget-object v4, v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1099
    new-instance v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    invoke-direct {v4, v7, v5, v6}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1100
    .local v4, "lasth":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    .line 1101
    iput-object v4, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1102
    .end local v4    # "lasth":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    goto :goto_1

    .line 1103
    :cond_0
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1105
    goto :goto_1

    .line 1108
    :cond_1
    iget-wide v8, v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    cmp-long v4, v8, v0

    if-lez v4, :cond_3

    .line 1109
    iget-object v4, v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 1110
    new-instance v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    invoke-direct {v4, v7, v5, v6}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1111
    .restart local v4    # "lasth":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    .line 1112
    iput-object v4, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1113
    .end local v4    # "lasth":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    goto :goto_1

    .line 1114
    :cond_2
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1116
    nop

    .line 1121
    .end local v3    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :goto_1
    return-void

    .line 1119
    .restart local v3    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :cond_3
    move-object v2, v3

    .line 1120
    .end local v3    # "next":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public trimHead()V
    .locals 5

    .line 1154
    .local p0, "this":Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;, "Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1155
    .local v0, "h":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    iget-object v1, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1156
    new-instance v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1157
    .local v1, "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    .line 1158
    iput-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1160
    .end local v1    # "n":Lio/reactivex/subjects/ReplaySubject$TimedNode;, "Lio/reactivex/subjects/ReplaySubject$TimedNode<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
