.class Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$2$1;
.super Ljava/lang/Object;
.source "WhiteListHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$2;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$2;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "WhiteListHelper"

    const-string v1, "mHideAppListContentObserver"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->access$400(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V

    .line 81
    return-void
.end method
