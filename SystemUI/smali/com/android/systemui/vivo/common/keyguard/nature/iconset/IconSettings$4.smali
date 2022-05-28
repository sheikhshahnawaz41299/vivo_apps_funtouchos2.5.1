.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;
.super Ljava/lang/Object;
.source "IconSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 205
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$600(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$700(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$700(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0194

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$800(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;Z)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$900(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;

    move-result-object v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-direct {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$902(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$900(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;->isRunning:Z

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$900(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;->start()V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$1002(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;Z)Z

    goto :goto_0
.end method
