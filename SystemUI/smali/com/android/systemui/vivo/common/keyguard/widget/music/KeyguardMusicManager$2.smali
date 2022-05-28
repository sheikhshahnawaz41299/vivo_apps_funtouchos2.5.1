.class Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$2;
.super Landroid/os/Handler;
.source "KeyguardMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 272
    return-void
.end method
