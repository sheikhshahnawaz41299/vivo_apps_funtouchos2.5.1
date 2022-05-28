.class final Lcom/vivo/settings/ServiceRunningTools$1;
.super Landroid/os/AsyncTask;
.source "ServiceRunningTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ServiceRunningTools;->isServiceRuning(Landroid/app/ActivityManager;Ljava/lang/String;Lcom/vivo/settings/ServiceRunningTools$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activityManager:Landroid/app/ActivityManager;

.field final synthetic val$callback:Lcom/vivo/settings/ServiceRunningTools$Callback;

.field final synthetic val$serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager;Ljava/lang/String;Lcom/vivo/settings/ServiceRunningTools$Callback;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/vivo/settings/ServiceRunningTools$1;->val$activityManager:Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/vivo/settings/ServiceRunningTools$1;->val$serviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/settings/ServiceRunningTools$1;->val$callback:Lcom/vivo/settings/ServiceRunningTools$Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 18
    iget-object v3, p0, Lcom/vivo/settings/ServiceRunningTools$1;->val$activityManager:Landroid/app/ActivityManager;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 19
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 20
    .local v1, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/ServiceRunningTools$1;->val$serviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 24
    .end local v1    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/ServiceRunningTools$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/settings/ServiceRunningTools$1;->val$callback:Lcom/vivo/settings/ServiceRunningTools$Callback;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/vivo/settings/ServiceRunningTools$1;->val$callback:Lcom/vivo/settings/ServiceRunningTools$Callback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/vivo/settings/ServiceRunningTools$Callback;->onServiceRunnintResult(Z)V

    .line 31
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/ServiceRunningTools$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
