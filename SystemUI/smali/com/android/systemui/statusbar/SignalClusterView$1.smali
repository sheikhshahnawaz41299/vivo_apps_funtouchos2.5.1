.class Lcom/android/systemui/statusbar/SignalClusterView$1;
.super Ljava/lang/Object;
.source "SignalClusterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/SignalClusterView;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->access$102(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->access$200(Lcom/android/systemui/statusbar/SignalClusterView;)V

    .line 146
    return-void
.end method
