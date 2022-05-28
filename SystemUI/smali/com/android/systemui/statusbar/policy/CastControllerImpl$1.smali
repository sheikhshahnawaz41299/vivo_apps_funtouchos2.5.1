.class Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "CastControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/CastControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    .line 299
    const-string v4, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/WifiDisplayStatus;

    .line 301
    .local v3, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    .line 302
    .local v2, "displayState":I
    const/4 v4, 0x2

    if-ne v4, v2, :cond_1

    .line 303
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "diaplayName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/CastControllerImpl;Ljava/lang/String;)V

    .line 309
    .end local v1    # "diaplayName":Ljava/lang/String;
    .end local v2    # "displayState":I
    .end local v3    # "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_0
    :goto_0
    return-void

    .line 305
    .restart local v2    # "displayState":I
    .restart local v3    # "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_1
    if-nez v2, :cond_0

    .line 306
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    goto :goto_0
.end method
