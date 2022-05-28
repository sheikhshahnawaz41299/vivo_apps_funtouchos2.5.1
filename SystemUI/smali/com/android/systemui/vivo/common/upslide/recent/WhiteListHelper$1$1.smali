.class Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1$1;
.super Ljava/lang/Object;
.source "WhiteListHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$000(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Z)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$300(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$102(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Z)Z

    .line 66
    const-string v0, "WhiteListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database changed, updateWhiteList, mIsForegroundAppProtetced = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
