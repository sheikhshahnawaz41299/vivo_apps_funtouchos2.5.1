.class Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$2;
.super Ljava/lang/Object;
.source "GpsSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "GpsSwitcher"

    const-string v3, "click gps during long click, return"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 93
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 94
    .local v0, "on":Z
    const-string v2, "GpsSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGpsClickListener.onClick(), on = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-eqz v0, :cond_1

    .line 97
    const-string v2, "gps"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 103
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->refreshDisplay()V

    goto :goto_0

    .line 100
    :cond_1
    const-string v2, "gps"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_1
.end method
