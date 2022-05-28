.class Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;
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
    .line 143
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 147
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mBrightClickListener.onClick()"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$1000(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 149
    .local v2, "cr":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$1000(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "brightness":I
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$1000(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 153
    .local v1, "brightnessMode":I
    if-ne v1, v7, :cond_0

    .line 154
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$1100(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    const-string v6, "0"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    if-ne v1, v7, :cond_1

    .line 160
    const/4 v1, 0x0

    .line 165
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$1000(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 166
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$1000(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v1}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 168
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$100(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)V

    .line 169
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$1000(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.BRIGHTNESS_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    return-void

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;->this$0:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$1100(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    const-string v6, "1"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
