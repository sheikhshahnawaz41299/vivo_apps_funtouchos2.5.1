.class Lcom/android/settings/applications/RunningServiceDetails$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/RunningServiceDetails;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$1;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$1;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 529
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 530
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 532
    :cond_0
    return-void
.end method
