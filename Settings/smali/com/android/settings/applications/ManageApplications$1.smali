.class Lcom/android/settings/applications/ManageApplications$1;
.super Landroid/content/BroadcastReceiver;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;)V
    .locals 0

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$2000(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1131
    return-void
.end method
