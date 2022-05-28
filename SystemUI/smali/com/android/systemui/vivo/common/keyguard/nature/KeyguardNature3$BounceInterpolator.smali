.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$BounceInterpolator;
.super Ljava/lang/Object;
.source "KeyguardNature3.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BounceInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0

    .prologue
    .line 2172
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$BounceInterpolator;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p2, "x1"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$1;

    .prologue
    .line 2172
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$BounceInterpolator;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5
    .param p1, "input"    # F

    .prologue
    const v4, 0x3f4ccccd    # 0.8f

    const v3, 0x3e99999a    # 0.3f

    .line 2176
    const v0, 0x3f19999a    # 0.6f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 2177
    const v0, 0x3f3851ec    # 0.72f

    const/high16 v1, 0x41000000    # 8.0f

    sub-float v2, p1, v3

    mul-float/2addr v1, v2

    sub-float v2, p1, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 2179
    :goto_0
    return v0

    :cond_0
    const v0, 0x3e23d70a    # 0.16f

    const/high16 v1, 0x40800000    # 4.0f

    sub-float v2, p1, v4

    mul-float/2addr v1, v2

    sub-float v2, p1, v4

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method
