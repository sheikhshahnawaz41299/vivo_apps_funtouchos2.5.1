.class Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$4;
.super Ljava/lang/Object;
.source "WhiteListHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->initDatas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 103
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$600()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$700(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->getCurrentBuildVersion()I

    move-result v0

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$800(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$900(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$1000(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$4;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$1100(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    return-void
.end method
