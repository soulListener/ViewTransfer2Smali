.class final Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;
.source "FlowableRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeConditionalSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;II)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 183
    .local p1, "actual":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-Ljava/lang/Integer;>;"
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;-><init>(II)V

    .line 184
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 185
    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 4

    .line 189
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->end:I

    .line 190
    .local v0, "f":I
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 192
    .local v1, "a":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-Ljava/lang/Integer;>;"
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->index:I

    .local v2, "i":I
    :goto_0
    if-eq v2, v0, :cond_1

    .line 193
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->cancelled:Z

    if-eqz v3, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v2    # "i":I
    :cond_1
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->cancelled:Z

    if-eqz v2, :cond_2

    .line 199
    return-void

    .line 201
    :cond_2
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 202
    return-void
.end method

.method slowPath(J)V
    .locals 8
    .param p1, "r"    # J

    .line 206
    const-wide/16 v0, 0x0

    .line 207
    .local v0, "e":J
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->end:I

    .line 208
    .local v2, "f":I
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->index:I

    .line 209
    .local v3, "i":I
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 213
    .local v4, "a":Lio/reactivex/internal/fuseable/ConditionalSubscriber;, "Lio/reactivex/internal/fuseable/ConditionalSubscriber<-Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    cmp-long v5, v0, p1

    if-eqz v5, :cond_3

    if-eq v3, v2, :cond_3

    .line 214
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->cancelled:Z

    if-eqz v5, :cond_1

    .line 215
    return-void

    .line 218
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 222
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_3
    if-ne v3, v2, :cond_5

    .line 226
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->cancelled:Z

    if-nez v5, :cond_4

    .line 227
    invoke-interface {v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    .line 229
    :cond_4
    return-void

    .line 232
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->get()J

    move-result-wide p1

    .line 233
    cmp-long v5, v0, p1

    if-nez v5, :cond_0

    .line 234
    iput v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->index:I

    .line 235
    neg-long v5, v0

    invoke-virtual {p0, v5, v6}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->addAndGet(J)J

    move-result-wide p1

    .line 236
    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-nez v7, :cond_6

    .line 237
    return-void

    .line 239
    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
