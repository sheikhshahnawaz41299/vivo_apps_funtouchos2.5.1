.class Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;
.super Landroid/os/AsyncTask;
.source "StatusbarSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->makeContentViewVisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 332
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$600(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$700(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->init()V

    .line 346
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 332
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$600(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$800(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$900(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$600(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$700(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->register()V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$700(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$1000(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->registerObserver(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$1100(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$500(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$1200(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->registerCallback(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$902(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;Z)Z

    .line 363
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method
