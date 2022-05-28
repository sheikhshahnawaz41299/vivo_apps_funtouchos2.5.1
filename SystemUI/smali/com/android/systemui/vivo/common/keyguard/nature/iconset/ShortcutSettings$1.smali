.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$1;
.super Ljava/lang/Object;
.source "ShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$000(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$100(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 147
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "i theme use and is saving"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$300(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V

    goto :goto_0
.end method
