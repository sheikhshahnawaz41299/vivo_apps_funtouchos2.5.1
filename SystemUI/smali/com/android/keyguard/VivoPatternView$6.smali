.class Lcom/android/keyguard/VivoPatternView$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "VivoPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPatternView;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/keyguard/VivoPatternView$6;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 704
    const-string v0, "VivoPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo mBatteryLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView$6;->this$0:Lcom/android/keyguard/VivoPatternView;

    iget v2, v2, Lcom/android/keyguard/VivoPatternView;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView$6;->this$0:Lcom/android/keyguard/VivoPatternView;

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iput v1, v0, Lcom/android/keyguard/VivoPatternView;->mBatteryLevel:I

    .line 706
    return-void
.end method

.method public onSimStateChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 715
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 696
    const-string v0, "VivoPatternView"

    const-string v1, "onTimeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView$6;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPatternView;->access$1100(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView$6;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPatternView;->access$1000(Lcom/android/keyguard/VivoPatternView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->updateWeekInfo(Landroid/widget/TextView;)V

    .line 698
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView$6;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPatternView;->access$1100(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView$6;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPatternView;->access$1200(Lcom/android/keyguard/VivoPatternView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->refreshDate(Landroid/widget/TextView;)V

    .line 700
    return-void
.end method
