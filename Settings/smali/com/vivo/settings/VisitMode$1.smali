.class Lcom/vivo/settings/VisitMode$1;
.super Landroid/os/Handler;
.source "VisitMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VisitMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VisitMode;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VisitMode;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vivo/settings/VisitMode$1;->this$0:Lcom/vivo/settings/VisitMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/settings/VisitMode$1;->this$0:Lcom/vivo/settings/VisitMode;

    invoke-virtual {v0}, Lcom/vivo/settings/VisitMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/settings/VisitMode;->isVisitFingerPrintConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/vivo/settings/VisitMode$1;->this$0:Lcom/vivo/settings/VisitMode;

    iget-object v0, v0, Lcom/vivo/settings/VisitMode;->mVisitorfingerprint:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/vivo/settings/VisitMode$1;->this$0:Lcom/vivo/settings/VisitMode;

    invoke-virtual {v1}, Lcom/vivo/settings/VisitMode;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0828

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VisitMode$1;->this$0:Lcom/vivo/settings/VisitMode;

    iget-object v0, v0, Lcom/vivo/settings/VisitMode;->mVisitorfingerprint:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/vivo/settings/VisitMode$1;->this$0:Lcom/vivo/settings/VisitMode;

    invoke-virtual {v1}, Lcom/vivo/settings/VisitMode;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b082c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
