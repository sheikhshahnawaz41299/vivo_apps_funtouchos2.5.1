.class Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$4;
.super Ljava/lang/Object;
.source "UpSlideUpdateMonitor.java"

# interfaces
.implements Landroid/content/ISmartShowContext$OnOpsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualInstanceAdded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 309
    const-string v0, "UpSlideUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualInstanceAdded, pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public onDualInstanceConfigChanged(Ljava/lang/String;IIZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 320
    const-string v0, "UpSlideUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualInstanceConfigChanged, pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public onDualInstanceRemoved(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 313
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$4;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 314
    .local v0, "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    invoke-interface {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onThemeChanged()V

    goto :goto_0

    .line 316
    .end local v0    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    :cond_0
    const-string v2, "UpSlideUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDualInstanceRemoved, pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method
