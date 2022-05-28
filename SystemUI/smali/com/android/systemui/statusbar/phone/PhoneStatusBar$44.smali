.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;
.super Lcom/vivo/services/hallstate/IHallEventListener$Stub;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 5906
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Lcom/vivo/services/hallstate/IHallEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHallStateChanged(Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 5910
    invoke-virtual {p1}, Lcom/vivo/services/hallstate/HallEvent;->isCovered()Z

    move-result v0

    .line 5911
    .local v0, "isCovered":Z
    const-string v1, "hall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCovered is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5917
    if-eqz v0, :cond_2

    .line 5919
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 5922
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 5923
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v1, v6, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 5925
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 5926
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v4, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 5936
    :cond_1
    :goto_0
    return-void

    .line 5929
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 5930
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v1, v5, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 5932
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 5933
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method
