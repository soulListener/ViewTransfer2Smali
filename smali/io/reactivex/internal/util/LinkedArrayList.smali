.class public Lio/reactivex/internal/util/LinkedArrayList;
.super Ljava/lang/Object;
.source "LinkedArrayList.java"


# instance fields
.field final capacityHint:I

.field head:[Ljava/lang/Object;

.field indexInTail:I

.field volatile size:I

.field tail:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacityHint"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    .line 47
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 54
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 55
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 58
    iput v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    .line 59
    iput v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    goto :goto_0

    .line 62
    :cond_0
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    iget v3, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    if-ne v0, v3, :cond_1

    .line 63
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    .local v0, "t":[Ljava/lang/Object;
    aput-object p1, v0, v1

    .line 65
    iget-object v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iget v3, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    aput-object v0, v1, v3

    .line 66
    iput-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    .line 67
    iput v2, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    .line 68
    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    .line 69
    .end local v0    # "t":[Ljava/lang/Object;
    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    aput-object p1, v0, v1

    .line 71
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->indexInTail:I

    .line 72
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    .line 74
    :goto_0
    return-void
.end method

.method public head()[Ljava/lang/Object;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 88
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 93
    iget v0, p0, Lio/reactivex/internal/util/LinkedArrayList;->capacityHint:I

    .line 94
    .local v0, "cap":I
    iget v1, p0, Lio/reactivex/internal/util/LinkedArrayList;->size:I

    .line 95
    .local v1, "s":I
    new-instance v2, Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/util/LinkedArrayList;->head()[Ljava/lang/Object;

    move-result-object v3

    .line 98
    .local v3, "h":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 99
    .local v4, "j":I
    const/4 v5, 0x0

    .line 100
    .local v5, "k":I
    :cond_0
    :goto_0
    if-ge v4, v1, :cond_1

    .line 101
    aget-object v6, v3, v5

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v4, v4, 0x1

    .line 103
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v0, :cond_0

    .line 104
    const/4 v5, 0x0

    .line 105
    aget-object v6, v3, v0

    move-object v3, v6

    check-cast v3, [Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
