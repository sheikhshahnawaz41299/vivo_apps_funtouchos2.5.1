.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$3;
.super Ljava/lang/Object;
.source "ShortcutSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 180
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$700(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$800(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    return-void
.end method
