.class final Lcom/android/systemui/volume/VolumeUI$VolumeController;
.super Landroid/media/IVolumeController$Stub;
.source "VolumeUI.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeUI;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeUI$1;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$VolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeUI$VolumeController;->dismissNow()V

    .line 236
    return-void
.end method

.method public dismissNow()V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$1100(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    .line 251
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$1100(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 246
    return-void
.end method

.method public displaySafeVolumeWarning(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$1100(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 203
    return-void
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$1100(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanel;->getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    return-object v0
.end method

.method public masterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$1100(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMasterMuteChanged(I)V

    .line 224
    return-void
.end method

.method public masterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$1100(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMasterVolumeChanged(I)V

    .line 219
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$1100(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postLayoutDirection(I)V

    .line 230
    return-void
.end method

.method public volumeChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$100(Lcom/android/systemui/volume/VolumeUI;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$1100(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    goto :goto_0
.end method
