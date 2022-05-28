.class Lcom/android/settings/applications/ManageApplications$2;
.super Landroid/os/Handler;
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
    .line 1388
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1391
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1394
    :pswitch_0
    const-string v0, "ManageApplications"

    const-string v1, "case MSG_REFRESH_USAGEINFO !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    goto :goto_0

    .line 1391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
