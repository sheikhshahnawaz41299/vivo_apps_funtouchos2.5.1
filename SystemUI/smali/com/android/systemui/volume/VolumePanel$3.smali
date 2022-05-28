.class Lcom/android/systemui/volume/VolumePanel$3;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->initDialogInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, -0x1

    .line 479
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$802(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 480
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$900(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 482
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$1002(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 483
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->cancel()V

    .line 484
    return-void
.end method
