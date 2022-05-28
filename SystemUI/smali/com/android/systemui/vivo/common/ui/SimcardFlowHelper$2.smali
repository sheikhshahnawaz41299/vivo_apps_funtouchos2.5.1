.class Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$2;
.super Landroid/database/ContentObserver;
.source "SimcardFlowHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$2;->this$0:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$2;->this$0:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$2;->this$0:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->access$100(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "data_usage_show_speed"

    invoke-static {v3, v4, v1}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->access$302(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;Z)Z

    .line 350
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$2;->this$0:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->access$400(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;)V

    .line 351
    return-void

    :cond_0
    move v0, v1

    .line 348
    goto :goto_0
.end method
