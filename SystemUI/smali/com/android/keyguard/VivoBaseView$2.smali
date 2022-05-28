.class Lcom/android/keyguard/VivoBaseView$2;
.super Ljava/lang/Object;
.source "VivoBaseView.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoBaseView;->moveYAnim(Landroid/view/View;FFLcom/android/keyguard/KeyguardSecurityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoBaseView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoBaseView;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/keyguard/VivoBaseView$2;->this$0:Lcom/android/keyguard/VivoBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1, "input"    # F

    .prologue
    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    .line 284
    const-wide/high16 v0, 0x4002000000000000L    # 2.25

    float-to-double v2, p1

    mul-double/2addr v2, v6

    const-wide/high16 v4, 0x3f90000000000000L    # 0.015625

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    float-to-double v2, p1

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x3fd2000000000000L    # 0.28125

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
