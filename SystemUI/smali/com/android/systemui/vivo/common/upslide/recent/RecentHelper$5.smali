.class Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$5;
.super Ljava/lang/Object;
.source "RecentHelper.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->init()V
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
    .line 268
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWhiteListChanged()V
    .locals 2

    .prologue
    const/16 v1, 0x3eb

    .line 272
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$1100(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$1100(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 274
    return-void
.end method
