.class public Lcom/vivo/settings/ServiceRunningTools;
.super Ljava/lang/Object;
.source "ServiceRunningTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/ServiceRunningTools$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static isServiceRuning(Landroid/app/ActivityManager;Ljava/lang/String;Lcom/vivo/settings/ServiceRunningTools$Callback;)V
    .locals 2
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/vivo/settings/ServiceRunningTools$Callback;

    .prologue
    .line 15
    new-instance v0, Lcom/vivo/settings/ServiceRunningTools$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/settings/ServiceRunningTools$1;-><init>(Landroid/app/ActivityManager;Ljava/lang/String;Lcom/vivo/settings/ServiceRunningTools$Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/vivo/settings/ServiceRunningTools$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    return-void
.end method
