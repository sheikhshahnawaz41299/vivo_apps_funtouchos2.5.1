.class public Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;
.super Landroid/app/Activity;
.source "RequestStoragePermissionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 34
    const-class v1, Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;

    invoke-static {p0, v1, v2}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->setEnabledBlocking(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    const/high16 v1, 0x8000000

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected onResume()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    return-void
.end method
