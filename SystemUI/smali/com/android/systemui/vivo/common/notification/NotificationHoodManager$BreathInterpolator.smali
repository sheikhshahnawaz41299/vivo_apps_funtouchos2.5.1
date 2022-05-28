.class Lcom/android/systemui/vivo/common/notification/NotificationHoodManager$BreathInterpolator;
.super Ljava/lang/Object;
.source "NotificationHoodManager.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BreathInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager$BreathInterpolator;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    .line 270
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
