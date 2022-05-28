.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$9;
.super Ljava/lang/Object;
.source "IconSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->initShortcutList()V
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
    .line 312
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$700(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.systemui.vivo.common.keyguard.nature.iconset.ShortcutSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v1, "shortcutFlag"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v1, "shortcutCls"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$1300(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v1, "shortcutPkg"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$1400(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v1, "doubleInstance"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$1500(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    const/16 v2, 0xbce

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 321
    return-void
.end method
