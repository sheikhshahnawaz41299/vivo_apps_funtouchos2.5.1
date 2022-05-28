.class Lcom/android/keyguard/VivoPasswordView$6;
.super Ljava/lang/Object;
.source "VivoPasswordView.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoPasswordView;->passwordbgAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPasswordView;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/keyguard/VivoPasswordView$6;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 635
    const/high16 v0, 0x40e00000    # 7.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    add-double/2addr v0, v4

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v4

    double-to-float v0, v0

    return v0
.end method
