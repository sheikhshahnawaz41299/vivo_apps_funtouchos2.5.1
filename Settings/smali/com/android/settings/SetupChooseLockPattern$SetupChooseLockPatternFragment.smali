.class public Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;
.super Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.source "SetupChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetupChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPatternFragment"
.end annotation


# instance fields
.field private mRetryButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-static {p1}, Lcom/android/settings/SetupRedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 123
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mRetryButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->handleLeftButton()V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    const v2, 0x7f0400cd

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e0216

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 105
    .local v0, "setupContent":Landroid/view/ViewGroup;
    const v2, 0x7f0400cb

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 106
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    const v0, 0x7f0e0210

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mRetryButton:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020103

    invoke-static {v0, v1}, Lcom/android/settings/SetupWizardUtils;->setIllustration(Landroid/app/Activity;I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/SetupWizardUtils;->setHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SetupChooseLockPattern;

    .line 139
    .local v0, "activity":Lcom/android/settings/SetupChooseLockPattern;
    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SetupChooseLockPattern;

    .line 145
    .local v0, "activity":Lcom/android/settings/SetupChooseLockPattern;
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 2
    .param p1, "stage"    # Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mRetryButton:Landroid/widget/Button;

    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
