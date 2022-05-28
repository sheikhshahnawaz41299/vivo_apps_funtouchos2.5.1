.class public Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# static fields
.field private static final SAVE_ENABLING:Ljava/lang/String; = "enabling"

.field private static final SAVE_IDENTIFIER:Ljava/lang/String; = "identifier"

.field private static final SAVE_USER_HANDLE:Ljava/lang/String; = "userHandle"


# instance fields
.field private mEnabling:Z

.field private mIdentifier:I

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 995
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 995
    iget v0, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mIdentifier:I

    return v0
.end method

.method public static show(Lcom/android/settings/accounts/AccountSettings;ZLandroid/os/UserHandle;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/accounts/AccountSettings;
    .param p1, "enabling"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1012
    :goto_0
    return-void

    .line 1006
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 1007
    .local v0, "dialog":Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;
    iput-boolean p1, v0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 1008
    iput-object p2, v0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 1009
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iput v1, v0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mIdentifier:I

    .line 1010
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1011
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1017
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 1018
    const-string v2, "enabling"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 1019
    const-string v2, "userHandle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iput-object v2, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 1020
    const-string v2, "identifier"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mIdentifier:I

    .line 1023
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1024
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v2, :cond_1

    .line 1025
    const v2, 0x7f0b078e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1026
    const v2, 0x7f0b078d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1032
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1040
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$2;-><init>(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1048
    new-instance v2, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$3;-><init>(Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1063
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 1028
    :cond_1
    const v2, 0x7f0b07aa

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1029
    const v2, 0x7f0b07ab

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1068
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1069
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1070
    const-string v0, "userHandle"

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1071
    const-string v0, "identifier"

    iget v1, p0, Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mIdentifier:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1072
    return-void
.end method
