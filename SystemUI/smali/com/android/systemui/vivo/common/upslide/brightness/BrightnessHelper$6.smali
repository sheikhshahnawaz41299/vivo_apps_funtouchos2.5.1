.class Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$6;
.super Ljava/lang/Object;
.source "BrightnessHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$6;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$6;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$500(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->performCollapse()V

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$6;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$1000(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 182
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$6;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$1100(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v1

    const-string v2, "1063"

    const-string v3, "10639"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method
