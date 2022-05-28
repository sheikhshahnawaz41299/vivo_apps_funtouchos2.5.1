.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;
.super Ljava/lang/Object;
.source "KeyguardNature2.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0

    .prologue
    .line 2259
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAffordanceFalsingFactor()F
    .locals 1

    .prologue
    .line 2301
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    return-object v0
.end method

.method public getPageHeight()F
    .locals 1

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getPageWidth()F
    .locals 1

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationToSideEnded()V
    .locals 1

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    .line 2272
    return-void
.end method

.method public onAnimationToSideStarted(Z)V
    .locals 4
    .param p1, "rightPage"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2262
    const-string v0, "KeyguardNature2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation To Side Started, rightPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$3302(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z

    .line 2264
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    const/16 v1, 0xc8

    invoke-static {v0, v3, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;ZI)V

    .line 2265
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    .line 2266
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->startShortcutActivity(Z)V

    .line 2267
    return-void
.end method

.method public onSwipingStarted()V
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->onSwipingStarted()V

    .line 2287
    return-void
.end method
