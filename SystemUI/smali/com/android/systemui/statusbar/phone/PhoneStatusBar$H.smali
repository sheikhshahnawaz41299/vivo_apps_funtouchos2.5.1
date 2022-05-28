.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;
.super Lcom/android/systemui/statusbar/BaseStatusBar$H;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3154
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    .prologue
    .line 3154
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3156
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->handleMessage(Landroid/os/Message;)V

    .line 3157
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3236
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3159
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    goto :goto_0

    .line 3162
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandSettingsPanel()V

    goto :goto_0

    .line 3165
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 3168
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 3171
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 3172
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 3175
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 3176
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 3179
    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3180
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 3183
    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_0

    .line 3188
    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3189
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v2, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/vivo/common/upslide/UpSlideManager;)Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    .line 3190
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->init()V

    goto :goto_0

    .line 3195
    :pswitch_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3196
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3200
    :pswitch_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 3206
    :pswitch_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->toggleUpSlideView(ZZ)V

    goto/16 :goto_0

    .line 3213
    :pswitch_d
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3214
    .local v0, "titleBg":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f11013c

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3218
    .end local v0    # "titleBg":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->updatePartitionTitles()V

    goto/16 :goto_0

    .line 3221
    :pswitch_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->refreshColneBitmap(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3225
    :pswitch_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    goto/16 :goto_0

    .line 3229
    :pswitch_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    .line 3230
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurnedOn()V

    goto/16 :goto_0

    .line 3215
    :catch_0
    move-exception v1

    goto :goto_1

    .line 3157
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_c
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method
