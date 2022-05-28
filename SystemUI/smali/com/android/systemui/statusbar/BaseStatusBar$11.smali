.class Lcom/android/systemui/statusbar/BaseStatusBar$11;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$LongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;II)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v9, 0x0

    .line 1215
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-static {p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-static {p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->ignoreLongClick(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->isSpsState()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move v8, v9

    .line 1285
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return v8

    .line 1222
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 1224
    instance-of v8, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v8, :cond_2

    move v8, v9

    .line 1225
    goto :goto_0

    .line 1227
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_3

    .line 1228
    const-string v8, "StatusBar"

    const-string v10, "Trying to show notification guts, but not attached to window"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1229
    goto :goto_0

    :cond_3
    move-object v5, p1

    .line 1233
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1234
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$700(Lcom/android/systemui/statusbar/BaseStatusBar;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v8

    if-ne v5, v8, :cond_4

    .line 1235
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$702(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move v8, v9

    .line 1236
    goto :goto_0

    .line 1240
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object v8, p1

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v10, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$800(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1243
    const v8, 0x7f1100b7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1245
    .local v1, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    if-nez v1, :cond_5

    move v8, v9

    .line 1247
    goto :goto_0

    .line 1251
    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getVisibility()I

    move-result v8

    if-nez v8, :cond_6

    .line 1252
    const-string v8, "StatusBar"

    const-string v10, "Trying to show notification guts, but already visible"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1253
    goto :goto_0

    .line 1257
    :cond_6
    new-instance v8, Lcom/android/systemui/statusbar/BaseStatusBar$11$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$11$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$11;)V

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/NotificationGuts;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1269
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 1270
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-static {v8, p2}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-double v2, v8

    .line 1271
    .local v2, "horz":D
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v8

    sub-int/2addr v8, p3

    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-double v6, v8

    .line 1272
    .local v6, "vert":D
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v4, v8

    .line 1273
    .local v4, "r":F
    const/4 v8, 0x0

    invoke-static {v1, p2, p3, v8, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1275
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v8, 0x190

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1276
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$900(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1277
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1279
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v8, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1002(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1282
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-static {v8, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$702(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1285
    const/4 v8, 0x1

    goto/16 :goto_0
.end method
