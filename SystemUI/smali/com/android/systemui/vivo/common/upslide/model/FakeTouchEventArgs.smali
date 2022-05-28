.class public Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;
.super Ljava/lang/Object;
.source "FakeTouchEventArgs.java"


# instance fields
.field public downX:F

.field public downY:F

.field public upX:F

.field public upY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "downX"    # F
    .param p2, "downY"    # F
    .param p3, "upX"    # F
    .param p4, "upY"    # F

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;->downX:F

    .line 7
    iput p2, p0, Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;->downY:F

    .line 8
    iput p3, p0, Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;->upX:F

    .line 9
    iput p4, p0, Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;->upY:F

    .line 10
    return-void
.end method
