.class Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$4;
.super Landroid/database/ContentObserver;
.source "KeyguardSmartUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    .line 223
    return-void
.end method
