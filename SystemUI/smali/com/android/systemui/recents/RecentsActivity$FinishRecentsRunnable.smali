.class Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinishRecentsRunnable"
.end annotation


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mLaunchOpts:Landroid/app/ActivityOptions;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    .line 105
    iput-object p3, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    .line 106
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchOpts:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const v1, 0x7f050061

    const v2, 0x7f050062

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/RecentsActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
