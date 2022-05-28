.class Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFindPhonePswView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$3;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 308
    const-string v0, "KeyguardFindPhonePswView"

    const-string v1, "onTimeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$3;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$400(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V

    .line 310
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$3;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-virtual {v0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->refreshDate()V

    .line 311
    return-void
.end method
