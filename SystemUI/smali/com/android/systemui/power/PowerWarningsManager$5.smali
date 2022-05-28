.class Lcom/android/systemui/power/PowerWarningsManager$5;
.super Ljava/util/TimerTask;
.source "PowerWarningsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerWarningsManager;->showLowBatteryWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerWarningsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerWarningsManager;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/systemui/power/PowerWarningsManager$5;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/systemui/power/PowerWarningsManager$5;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-static {v1}, Lcom/android/systemui/power/PowerWarningsManager;->access$200(Lcom/android/systemui/power/PowerWarningsManager;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerWarningsManager$5;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-static {v1}, Lcom/android/systemui/power/PowerWarningsManager;->access$200(Lcom/android/systemui/power/PowerWarningsManager;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerWarningsManager$5;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-virtual {v1}, Lcom/android/systemui/power/PowerWarningsManager;->dismissLowBatteryWarning()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
