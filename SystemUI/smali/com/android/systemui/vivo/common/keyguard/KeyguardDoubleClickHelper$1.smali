.class Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper$1;
.super Landroid/database/ContentObserver;
.source "KeyguardDoubleClickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;->access$000(Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;)V

    .line 46
    return-void
.end method
