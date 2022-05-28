.class Lcom/android/systemui/statusbar/BaseStatusBar$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$v:Lcom/android/systemui/statusbar/NotificationGuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$v:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1314
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1315
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$v:Lcom/android/systemui/statusbar/NotificationGuts;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 1318
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 1322
    :cond_0
    return-void
.end method
