.class Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$9;
.super Ljava/lang/Object;
.source "RecentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->onPhoneClearFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V
    .locals 0

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$9;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$9;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->clearRecentTasks(Z)V

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$9;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$1300(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/VivoRecentTasksLoader;->loadRecentInBackground(I)V

    .line 1121
    return-void
.end method
