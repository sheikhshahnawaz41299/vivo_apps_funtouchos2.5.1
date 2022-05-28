.class public Lcom/vivo/settings/VivoFragment;
.super Landroid/app/Fragment;
.source "VivoFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getBaseActivity()Lcom/vivo/app/VivoBaseActivity;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/vivo/settings/VivoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 51
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/vivo/app/VivoBaseActivity;

    if-eqz v1, :cond_0

    .line 52
    check-cast v0, Lcom/vivo/app/VivoBaseActivity;

    .line 54
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
    .line 148
    invoke-virtual {p0}, Lcom/vivo/settings/VivoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 149
    return-void
.end method

.method protected onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 90
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_0
    return-void
.end method

.method protected onTitleRightButtonPressed(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 128
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_0
    return-void
.end method

.method protected setLeftTitleButtonEnable(Z)V
    .locals 1
    .param p1, "enalbed"    # Z

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 135
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonEnable(Z)V

    .line 138
    :cond_0
    return-void
.end method

.method protected setTitle(I)V
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/vivo/settings/VivoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 16
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 19
    :cond_0
    return-void
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/vivo/settings/VivoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 23
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    :cond_0
    return-void
.end method

.method protected setTitleLeftButtonIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 79
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonIcon(I)V

    .line 82
    :cond_0
    return-void
.end method

.method protected setTitleRightButtonEnable(Z)V
    .locals 1
    .param p1, "enalbed"    # Z

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 142
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleRightButtonEnable(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method protected setTitleRightButtonIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 117
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleRightButtonIcon(I)V

    .line 120
    :cond_0
    return-void
.end method

.method protected showBBKBackButton()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 33
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/vivo/app/VivoBaseActivity;->showTitleLeftButton()V

    .line 35
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonIcon(I)V

    .line 36
    new-instance v1, Lcom/vivo/settings/VivoFragment$1;

    invoke-direct {v1, p0}, Lcom/vivo/settings/VivoFragment$1;-><init>(Lcom/vivo/settings/VivoFragment;)V

    invoke-virtual {v0, v1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected showTitleLeftButton(I)V
    .locals 1
    .param p1, "textRes"    # I

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoFragment;->showTitleLeftButton(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method protected showTitleLeftButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 63
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/vivo/app/VivoBaseActivity;->showTitleLeftButton()V

    .line 65
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleLeftButtonText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    return-void
.end method

.method protected showTitleRightButton(I)V
    .locals 1
    .param p1, "textRes"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoFragment;->showTitleRightButton(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method protected showTitleRightButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;->getBaseActivity()Lcom/vivo/app/VivoBaseActivity;

    move-result-object v0

    .line 101
    .local v0, "activity":Lcom/vivo/app/VivoBaseActivity;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/vivo/app/VivoBaseActivity;->showTitleRightButton()V

    .line 103
    invoke-virtual {v0, p1}, Lcom/vivo/app/VivoBaseActivity;->setTitleRightButtonText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    return-void
.end method
