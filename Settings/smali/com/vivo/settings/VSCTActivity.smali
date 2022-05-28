.class public Lcom/vivo/settings/VSCTActivity;
.super Lcom/vivo/settings/VivoSettingsBaseActivity;
.source "VSCTActivity.java"

# interfaces
.implements Lcom/vivo/settings/ISettingsCommonTitle;


# instance fields
.field private mBbkTitleView:Lcom/vivo/common/BbkTitleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsBaseActivity;-><init>()V

    return-void
.end method

.method private getBbkTitleView()Lcom/vivo/common/BbkTitleView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vivo/settings/VSCTActivity;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    if-nez v0, :cond_0

    .line 24
    const v0, 0x7f0e0154

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VSCTActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/BbkTitleView;

    iput-object v0, p0, Lcom/vivo/settings/VSCTActivity;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VSCTActivity;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    return-object v0
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;->getBbkTitleView()Lcom/vivo/common/BbkTitleView;

    move-result-object v0

    .line 51
    .local v0, "bbkTitleView":Lcom/vivo/common/BbkTitleView;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/vivo/settings/VSCTActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/BbkTitleView;->setCenterText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;->getBbkTitleView()Lcom/vivo/common/BbkTitleView;

    move-result-object v0

    .line 98
    .local v0, "bbkTitleView":Lcom/vivo/common/BbkTitleView;
    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {v0}, Lcom/vivo/common/BbkTitleView;->getLeftButton()Landroid/widget/Button;

    move-result-object v1

    .line 102
    .local v1, "button":Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onTitleRightButtonPressed(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;->getBbkTitleView()Lcom/vivo/common/BbkTitleView;

    move-result-object v0

    .line 124
    .local v0, "bbkTitleView":Lcom/vivo/common/BbkTitleView;
    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {v0}, Lcom/vivo/common/BbkTitleView;->getRightButton()Landroid/widget/Button;

    move-result-object v1

    .line 128
    .local v1, "button":Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public resetTitleView()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/VSCTActivity;->mBbkTitleView:Lcom/vivo/common/BbkTitleView;

    .line 31
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsBaseActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/vivo/settings/VSCTActivity;->resetTitleView()V

    .line 45
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;->getBbkTitleView()Lcom/vivo/common/BbkTitleView;

    .line 46
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;->updateTitle()V

    .line 47
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsBaseActivity;->setContentView(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lcom/vivo/settings/VSCTActivity;->resetTitleView()V

    .line 37
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;->getBbkTitleView()Lcom/vivo/common/BbkTitleView;

    .line 38
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;->updateTitle()V

    .line 39
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "titleId"    # I

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsBaseActivity;->setTitle(I)V

    .line 65
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;->updateTitle()V

    .line 66
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;->updateTitle()V

    .line 60
    return-void
.end method

.method public showBBKBackButton()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;->getBbkTitleView()Lcom/vivo/common/BbkTitleView;

    move-result-object v0

    .line 71
    .local v0, "bbkTitleView":Lcom/vivo/common/BbkTitleView;
    invoke-virtual {v0}, Lcom/vivo/common/BbkTitleView;->showLeftButton()V

    .line 72
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/common/BbkTitleView;->setLeftButtonIcon(I)V

    .line 73
    new-instance v1, Lcom/vivo/settings/VSCTActivity$1;

    invoke-direct {v1, p0}, Lcom/vivo/settings/VSCTActivity$1;-><init>(Lcom/vivo/settings/VSCTActivity;)V

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VSCTActivity;->onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public showTitleLeftButton(I)V
    .locals 1
    .param p1, "textRes"    # I

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VSCTActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VSCTActivity;->showTitleLeftButton(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public showTitleLeftButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;->getBbkTitleView()Lcom/vivo/common/BbkTitleView;

    move-result-object v0

    .line 84
    .local v0, "bbkTitleView":Lcom/vivo/common/BbkTitleView;
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setLeftButtonText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showTitleRightButton(I)V
    .locals 1
    .param p1, "textRes"    # I

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VSCTActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VSCTActivity;->showTitleRightButton(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method public showTitleRightButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/vivo/settings/VSCTActivity;->getBbkTitleView()Lcom/vivo/common/BbkTitleView;

    move-result-object v0

    .line 110
    .local v0, "bbkTitleView":Lcom/vivo/common/BbkTitleView;
    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {v0, p1}, Lcom/vivo/common/BbkTitleView;->setRightButtonText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
