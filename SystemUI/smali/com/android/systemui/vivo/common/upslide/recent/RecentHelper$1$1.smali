.class Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1$1;
.super Ljava/lang/Object;
.source "RecentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 137
    const/4 v3, 0x0

    .line 138
    .local v3, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;

    iget-object v4, v4, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->isDensityLowLevel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    move-object v3, v4

    check-cast v3, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 144
    :goto_0
    if-nez v3, :cond_2

    .line 145
    const-string v4, "RecentHelper"

    const-string v5, "mRecentClickListener.onClick: item is null, return!"

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    :goto_1
    return-void

    .line 141
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    check-cast v3, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .restart local v3    # "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    goto :goto_0

    .line 149
    :cond_2
    iget-object v4, v3, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_3

    const-string v4, "com.android.contacts.BBKTwelveKeyDialer"

    iget-object v5, v3, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    const-string v4, "RecentHelper"

    const-string v5, "------activityInfo.name.equals(activityName)------"

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.android.contacts"

    const-string v5, "com.android.contacts.TwelveKeyDialer"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const v4, 0x10104000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    if-eqz v2, :cond_0

    .line 164
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 167
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;

    iget-object v4, v4, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 173
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;

    iget-object v4, v4, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    iget v5, v3, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->taskId:I

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$300(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    const-string v4, "RecentHelper"

    const-string v5, "taskId is valid"

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;

    iget-object v4, v4, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 178
    .local v0, "am":Landroid/app/ActivityManager;
    :try_start_1
    iget v4, v3, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->taskId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 184
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;

    iget-object v4, v4, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v4, v3}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$400(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V

    goto/16 :goto_1

    .line 168
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    goto :goto_2
.end method
