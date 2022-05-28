.class Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$2;->this$0:Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1043
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$2;->this$0:Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->access$1300(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 1045
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$2;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.sync"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1046
    return-void
.end method
