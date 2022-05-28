.class Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$5;
.super Ljava/lang/Object;
.source "EyeSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->onScreenTurnOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$5;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 228
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$5;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$1200(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "night_mode_shecdul"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 230
    .local v0, "isScheduleBoxOn":Z
    :goto_0
    const-string v2, "EyeSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenTurnOn >>> isScheduleBoxOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNightModeAlarmAlertedDuringScreenOff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$5;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$1300(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$5;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$1300(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 239
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isScheduleBoxOn":Z
    :cond_1
    move v0, v1

    .line 228
    goto :goto_0

    .line 236
    .restart local v0    # "isScheduleBoxOn":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$5;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$5;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$1400(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;Z)V

    .line 238
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$5;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$1302(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;Z)Z

    goto :goto_1
.end method
