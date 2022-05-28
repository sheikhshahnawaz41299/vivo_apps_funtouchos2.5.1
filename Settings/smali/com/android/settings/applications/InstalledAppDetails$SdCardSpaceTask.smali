.class Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SdCardSpaceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1319
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1324
    const-string v0, "InstalledAppDetails"

    const-string v1, "  to call getSDStorageStates  "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {}, Lcom/android/settings/applications/InstalledAppDetails;->access$1000()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$1100(Lcom/android/settings/applications/InstalledAppDetails;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/applications/InstalledAppDetails;->sdSpaceEnough:Z

    .line 1326
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$1200(Lcom/android/settings/applications/InstalledAppDetails;)Z

    .line 1327
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->access$502(Lcom/android/settings/applications/InstalledAppDetails;J)J

    .line 1329
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$400(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$400(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$400(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$700(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1333
    :catch_0
    move-exception v0

    goto :goto_0
.end method
