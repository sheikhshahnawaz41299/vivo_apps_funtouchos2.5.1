.class Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener$1;
.super Ljava/lang/Object;
.source "KeyguardMusicStreamHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener$1;->this$1:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener$1;->this$1:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$502(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;Z)Z

    .line 198
    return-void
.end method
