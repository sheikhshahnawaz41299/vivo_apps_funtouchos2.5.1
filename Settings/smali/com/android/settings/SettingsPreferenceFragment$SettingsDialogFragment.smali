.class public Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# static fields
.field private static final KEY_DIALOG_ID:Ljava/lang/String; = "key_dialog_id"

.field private static final KEY_PARENT_FRAGMENT_ID:Ljava/lang/String; = "key_parent_fragment_id"


# instance fields
.field private mDialogId:I

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 469
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/DialogCreatable;I)V
    .locals 3
    .param p1, "fragment"    # Lcom/android/settings/DialogCreatable;
    .param p2, "dialogId"    # I

    .prologue
    .line 471
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 472
    iput p2, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 473
    instance-of v0, p1, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment argument must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    check-cast p1, Landroid/app/Fragment;

    .end local p1    # "fragment":Lcom/android/settings/DialogCreatable;
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 478
    return-void
.end method


# virtual methods
.method public getDialogId()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 526
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 530
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 500
    if-eqz p1, :cond_3

    .line 501
    const-string v1, "key_dialog_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 503
    const-string v1, "key_parent_fragment_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 504
    .local v0, "mParentFragmentId":I
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/settings/DialogCreatable;

    if-nez v1, :cond_2

    .line 508
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " must implement "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Lcom/android/settings/DialogCreatable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 516
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_3

    .line 518
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v1, p0}, Lcom/android/settings/SettingsPreferenceFragment;->access$002(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 521
    .end local v0    # "mParentFragmentId":I
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/settings/DialogCreatable;

    iget v2, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-interface {v1, v2}, Lcom/android/settings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 546
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 549
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsPreferenceFragment;->access$000(Lcom/android/settings/SettingsPreferenceFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->access$002(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 555
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 534
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 538
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 482
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 484
    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 491
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 493
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 496
    :cond_0
    return-void
.end method
