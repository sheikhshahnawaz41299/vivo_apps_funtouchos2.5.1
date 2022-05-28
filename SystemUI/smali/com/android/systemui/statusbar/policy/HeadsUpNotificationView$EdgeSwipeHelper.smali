.class Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;
.super Ljava/lang/Object;
.source "HeadsUpNotificationView.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeSwipeHelper"
.end annotation


# static fields
.field private static final DEBUG_EDGE_SWIPE:Z


# instance fields
.field private mConsuming:Z

.field private mFirstX:F

.field private mFirstY:F

.field private final mTouchSlop:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;F)V
    .locals 0
    .param p2, "touchSlop"    # F

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput p2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mTouchSlop:F

    .line 466
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 519
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    return v4

    .line 473
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mFirstX:F

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mFirstY:F

    .line 475
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    goto :goto_0

    .line 480
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mFirstY:F

    sub-float v0, v6, v7

    .line 481
    .local v0, "dY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mFirstX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 482
    .local v1, "daX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 483
    .local v2, "daY":F
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    if-nez v6, :cond_0

    cmpg-float v6, v1, v2

    if-gez v6, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mTouchSlop:F

    cmpl-float v6, v2, v6

    if-lez v6, :cond_0

    .line 484
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->access$200(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)V

    .line 485
    cmpl-float v6, v0, v9

    if-lez v6, :cond_1

    .line 489
    const/4 v3, 0x0

    .line 491
    .local v3, "fullscreenFlag":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->access$300(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vivo_fullscreen_flag"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v4, v6, :cond_3

    move v3, v4

    .line 494
    :goto_1
    if-eqz v3, :cond_4

    .line 501
    .end local v3    # "fullscreenFlag":Z
    :cond_1
    :goto_2
    cmpg-float v5, v0, v9

    if-gez v5, :cond_2

    .line 505
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 506
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->access$400(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpClose()V

    .line 509
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    goto :goto_0

    .restart local v3    # "fullscreenFlag":Z
    :cond_3
    move v3, v5

    .line 491
    goto :goto_1

    .line 497
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->access$400(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    goto :goto_2

    .line 516
    .end local v0    # "dY":F
    .end local v1    # "daX":F
    .end local v2    # "daY":F
    .end local v3    # "fullscreenFlag":Z
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    goto :goto_0

    .line 492
    .restart local v0    # "dY":F
    .restart local v1    # "daX":F
    .restart local v2    # "daY":F
    .restart local v3    # "fullscreenFlag":Z
    :catch_0
    move-exception v5

    goto :goto_1

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    return v0
.end method
