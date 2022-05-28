.class Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;
.super Ljava/lang/Object;
.source "EyeSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Lvivo/common/FtColorManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)V

    .line 177
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;Z)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;Z)V

    .line 195
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 177
    goto :goto_0

    :cond_2
    move v2, v3

    .line 178
    goto :goto_1

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$800(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$3;)V

    invoke-static {v2, v1, v3}, Lvivo/common/FtColorManager;->getInstanceWithCallBack(Landroid/content/Context;Landroid/app/Application;Lvivo/common/FtColorManager$CallBack;)I

    move-result v0

    .line 194
    .local v0, "result":I
    const-string v1, "EyeSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick >>> result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
