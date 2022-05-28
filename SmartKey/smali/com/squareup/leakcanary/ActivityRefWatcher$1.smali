.class Lcom/squareup/leakcanary/ActivityRefWatcher$1;
.super Ljava/lang/Object;
.source "ActivityRefWatcher.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/ActivityRefWatcher;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/ActivityRefWatcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/ActivityRefWatcher$1;->this$0:Lcom/squareup/leakcanary/ActivityRefWatcher;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/squareup/leakcanary/ActivityRefWatcher$1;->this$0:Lcom/squareup/leakcanary/ActivityRefWatcher;

    invoke-virtual {v0, p1}, Lcom/squareup/leakcanary/ActivityRefWatcher;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 60
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
