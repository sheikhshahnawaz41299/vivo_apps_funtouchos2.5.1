.class Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$1;
.super Ljava/lang/Object;
.source "NfcSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "NfcSwitcher"

    const-string v3, "click nfc during long click, return"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 75
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    .line 78
    .local v1, "on":Z
    const-string v2, "NfcSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNfcClickListener.onClick(), on = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 81
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v2

    const-string v3, "NfcSwitcher"

    const-string v4, "0"

    const-string v5, "0"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->turnToIntermediateState()V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 84
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v2

    const-string v3, "NfcSwitcher"

    const-string v4, "0"

    const-string v5, "1"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    .end local v1    # "on":Z
    :cond_2
    const-string v2, "NfcSwitcher"

    const-string v3, "mNfcClickListener.onClick(d), adapter is null"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
