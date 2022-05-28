.class Lcom/vivo/settings/ProfileSettings$3;
.super Ljava/lang/Object;
.source "ProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ProfileSettings;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/ProfileSettings;

.field final synthetic val$selectPos:I


# direct methods
.method constructor <init>(Lcom/vivo/settings/ProfileSettings;I)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    iput p2, p0, Lcom/vivo/settings/ProfileSettings$3;->val$selectPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 369
    if-nez p2, :cond_3

    .line 370
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$400(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SingleChoiseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/SingleChoiseAdapter;->getCheckPos()I

    move-result v0

    iget v1, p0, Lcom/vivo/settings/ProfileSettings$3;->val$selectPos:I

    if-ne v0, v1, :cond_1

    .line 371
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    const v2, 0x7f0b08b8

    invoke-virtual {v1, v2}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$300(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$300(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$300(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->dismiss()V

    .line 376
    :cond_2
    iget-object v8, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    new-instance v0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-virtual {v2}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v4}, Lcom/vivo/settings/ProfileSettings;->access$400(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SingleChoiseAdapter;

    move-result-object v4

    iget v5, p0, Lcom/vivo/settings/ProfileSettings$3;->val$selectPos:I

    invoke-virtual {v4, v5}, Lcom/vivo/settings/SingleChoiseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    const v5, 0x7f0b08b3

    iget v6, p0, Lcom/vivo/settings/ProfileSettings$3;->val$selectPos:I

    invoke-direct/range {v0 .. v6}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;-><init>(Lcom/vivo/settings/ProfileSettings;Landroid/content/Context;ZLcom/vivo/settings/ProfileSettings$ProfileInfo;II)V

    invoke-static {v8, v0}, Lcom/vivo/settings/ProfileSettings;->access$302(Lcom/vivo/settings/ProfileSettings;Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    .line 377
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$300(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->show(Z)V

    goto :goto_0

    .line 379
    :cond_3
    if-ne p2, v9, :cond_0

    .line 380
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$400(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SingleChoiseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/SingleChoiseAdapter;->getCheckPos()I

    move-result v0

    iget v1, p0, Lcom/vivo/settings/ProfileSettings$3;->val$selectPos:I

    if-ne v0, v1, :cond_4

    .line 381
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    const v2, 0x7f0b08b7

    invoke-virtual {v1, v2}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 383
    :cond_4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 384
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0, v4}, Lcom/vivo/settings/ProfileSettings;->access$502(Lcom/vivo/settings/ProfileSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 385
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0b07fb

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    const v2, 0x7f0b07fd

    invoke-virtual {v1, v2}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$600(Lcom/vivo/settings/ProfileSettings;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/vivo/settings/ProfileSettings$3;->val$selectPos:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    const v2, 0x7f0b07fe

    invoke-virtual {v1, v2}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 388
    const v0, 0x104000a

    new-instance v1, Lcom/vivo/settings/ProfileSettings$3$1;

    invoke-direct {v1, p0}, Lcom/vivo/settings/ProfileSettings$3$1;-><init>(Lcom/vivo/settings/ProfileSettings$3;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    const/high16 v0, 0x1040000

    invoke-virtual {v7, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/ProfileSettings;->access$502(Lcom/vivo/settings/ProfileSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 402
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$3;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$500(Lcom/vivo/settings/ProfileSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
