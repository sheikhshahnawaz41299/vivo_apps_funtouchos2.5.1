.class Lcom/android/keyguard/VivoPatternView$1;
.super Ljava/lang/Object;
.source "VivoPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPatternView;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/keyguard/VivoPatternView$1;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView$1;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPatternView;->access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/UnLockPatternView;->clearPattern()V

    .line 121
    return-void
.end method
