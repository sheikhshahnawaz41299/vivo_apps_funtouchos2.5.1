.class public Lcom/vivo/settings/VivoListFragment;
.super Landroid/app/ListFragment;
.source "VivoListFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# static fields
.field protected static final DIALOG_ID_UNDEFINED:I = -0x6e

.field private static final TAG:Ljava/lang/String; = "VivoListFragment"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private getBaseActivity()Lcom/vivo/app/VivoBaseActivity;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/vivo/settings/VivoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/vivo/app/VivoBaseActivity;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Lcom/vivo/app/VivoBaseActivity;

    .line 69
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v0

    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/vivo/settings/VivoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 136
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/vivo/settings/VivoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 167
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoListFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/VivoListFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method protected getDialogId()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-nez v0, :cond_0

    const/16 v0, -0x6e

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    goto :goto_0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/vivo/settings/VivoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected needFixTopBottom()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    const v3, 0x7f04006b

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 146
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 147
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 148
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/vivo/settings/VivoListFragment;->updatePreferenceList(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 153
    :goto_0
    return-object v2

    .line 151
    :cond_0
    const-string v3, "VivoListFragment"

    const-string v4, "getActivity is null in onCreateView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/vivo/settings/VivoListFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 188
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    .line 189
    return-void
.end method

.method protected onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/vivo/settings/VivoListFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 98
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onTitleRightButtonPressed(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/vivo/settings/VivoListFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 129
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 216
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 217
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    iput-object p1, v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 247
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    iput-object p1, v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 236
    :cond_0
    return-void
.end method

.method protected setTitle(I)V
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/vivo/settings/VivoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 30
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 33
    :cond_0
    return-void
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/vivo/settings/VivoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 37
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected showBBKBackButton()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vivo/settings/VivoListFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 47
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/vivo/app/VivoBaseActivity;->showTitleLeftButton()V

    .line 49
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonIcon(I)V

    .line 50
    new-instance v1, Lcom/vivo/settings/VivoListFragment$1;

    invoke-direct {v1, p0}, Lcom/vivo/settings/VivoListFragment$1;-><init>(Lcom/vivo/settings/VivoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "VivoListFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 224
    iget-object v0, p0, Lcom/vivo/settings/VivoListFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoListFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method protected showTitleLeftButton(I)V
    .locals 1
    .param p1, "textRes"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoListFragment;->showTitleLeftButton(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method protected showTitleLeftButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/vivo/settings/VivoListFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 78
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/vivo/app/VivoBaseActivity;->showTitleLeftButton()V

    .line 80
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    return-void
.end method

.method protected showTitleRightButton(I)V
    .locals 1
    .param p1, "textRes"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoListFragment;->showTitleRightButton(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method protected showTitleRightButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/vivo/settings/VivoListFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 109
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/vivo/app/VivoBaseActivity;->showTitleRightButton()V

    .line 111
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleRightButtonText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    return-void
.end method

.method public updatePreferenceList(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 159
    const v0, 0x106000d

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 160
    return-void
.end method
