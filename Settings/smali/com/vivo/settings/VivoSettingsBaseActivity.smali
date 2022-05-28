.class public Lcom/vivo/settings/VivoSettingsBaseActivity;
.super Lcom/vivo/app/VivoBaseActivity;
.source "VivoSettingsBaseActivity.java"


# instance fields
.field private mUseVivoCommonTitle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseActivity;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/VivoSettingsBaseActivity;->mUseVivoCommonTitle:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    sget-object v1, Lcom/android/settings/R$styleable;->Theme:[I

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSettingsBaseActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/vivo/settings/VivoSettingsBaseActivity;->mUseVivoCommonTitle:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/settings/VivoSettingsBaseActivity;->mUseVivoCommonTitle:Z

    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    return-void
.end method

.method protected showBBKBackButton()V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSettingsBaseActivity;->showTitleLeftButton()V

    .line 33
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSettingsBaseActivity;->setTitleLeftButtonIcon(I)V

    .line 34
    new-instance v0, Lcom/vivo/settings/VivoSettingsBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/VivoSettingsBaseActivity$1;-><init>(Lcom/vivo/settings/VivoSettingsBaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSettingsBaseActivity;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method public useVivoCommonTitle()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/vivo/settings/VivoSettingsBaseActivity;->mUseVivoCommonTitle:Z

    return v0
.end method
