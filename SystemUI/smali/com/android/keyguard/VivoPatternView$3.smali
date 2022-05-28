.class Lcom/android/keyguard/VivoPatternView$3;
.super Ljava/lang/Object;
.source "VivoPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoPatternView;->startAppearAnimation()V
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
    .line 536
    iput-object p1, p0, Lcom/android/keyguard/VivoPatternView$3;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView$3;->this$0:Lcom/android/keyguard/VivoPatternView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/VivoPatternView;->access$900(Lcom/android/keyguard/VivoPatternView;Z)V

    .line 540
    return-void
.end method
