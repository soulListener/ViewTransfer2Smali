.class public final Lkotlin/UIntKt;
.super Ljava/lang/Object;
.source "UInt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0004H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0008H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\n"
    }
    d2 = {
        "toUInt",
        "Lkotlin/UInt;",
        "",
        "(B)I",
        "",
        "(I)I",
        "",
        "(J)I",
        "",
        "(S)I",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method private static final toUInt(B)I
    .locals 2
    .param p0, "$receiver"    # B
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 192
    .local v0, "$i$f$toUInt":I
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    return v1
.end method

.method private static final toUInt(I)I
    .locals 2
    .param p0, "$receiver"    # I
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 200
    .local v0, "$i$f$toUInt":I
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    return v1
.end method

.method private static final toUInt(J)I
    .locals 2
    .param p0, "$receiver"    # J
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 204
    .local v0, "$i$f$toUInt":I
    long-to-int v1, p0

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    return v1
.end method

.method private static final toUInt(S)I
    .locals 2
    .param p0, "$receiver"    # S
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 196
    .local v0, "$i$f$toUInt":I
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    return v1
.end method