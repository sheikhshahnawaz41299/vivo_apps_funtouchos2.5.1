.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$dismissShade:Z

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ZZLandroid/content/Intent;Z)V
    .locals 0

    .prologue
    .line 4227
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->val$intent:Landroid/content/Intent;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->val$dismissShade:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4230
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 4256
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->val$dismissShade:Z

    if-eqz v0, :cond_0

    .line 4257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 4260
    :cond_0
    return v2
.end method
