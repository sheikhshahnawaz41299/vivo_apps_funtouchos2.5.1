.class Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;
.super Ljava/lang/Object;
.source "ProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ProfileSettings$EditProfileDialog;-><init>(Lcom/vivo/settings/ProfileSettings;Landroid/content/Context;ZLcom/vivo/settings/ProfileSettings$ProfileInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

.field final synthetic val$oldPos:I

.field final synthetic val$this$0:Lcom/vivo/settings/ProfileSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;Lcom/vivo/settings/ProfileSettings;I)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iput-object p2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->val$this$0:Lcom/vivo/settings/ProfileSettings;

    iput p3, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->val$oldPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    iget v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->val$oldPos:I

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-static {v2}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->access$900(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/settings/ProfileSettings;->access$1000(Lcom/vivo/settings/ProfileSettings;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->access$1100(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-static {v1}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->access$900(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->setName(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->access$1100(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-static {v1}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->access$1200(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->setVolume(I)V

    .line 470
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->access$1300(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$600(Lcom/vivo/settings/ProfileSettings;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-static {v1}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->access$1100(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$800(Lcom/vivo/settings/ProfileSettings;)V

    .line 474
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$400(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SingleChoiseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/SingleChoiseAdapter;->notifyDataSetChanged()V

    .line 483
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$300(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$300(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$300(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->dismiss()V

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v7, v0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    new-instance v0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v1, v1, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v2, v2, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-virtual {v2}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-static {v3}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->access$1300(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Z

    move-result v3

    iget-object v4, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-static {v4}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->access$1100(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    move-result-object v4

    const v5, 0x7f0b08b6

    iget v6, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->val$oldPos:I

    invoke-direct/range {v0 .. v6}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;-><init>(Lcom/vivo/settings/ProfileSettings;Landroid/content/Context;ZLcom/vivo/settings/ProfileSettings$ProfileInfo;II)V

    invoke-static {v7, v0}, Lcom/vivo/settings/ProfileSettings;->access$302(Lcom/vivo/settings/ProfileSettings;Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    .line 480
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog$1;->this$1:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->access$1402(Lcom/vivo/settings/ProfileSettings$EditProfileDialog;Z)Z

    goto :goto_0
.end method
