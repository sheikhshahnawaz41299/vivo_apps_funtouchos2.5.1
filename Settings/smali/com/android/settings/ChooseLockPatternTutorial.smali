.class public Lcom/android/settings/ChooseLockPatternTutorial;
.super Lcom/vivo/app/VivoBaseActivity;
.source "ChooseLockPatternTutorial.java"


# static fields
.field private static final START_DELAY:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "ChooseLockPatternTutorial"

.field public static final TUTORIAL_STEP:Ljava/lang/String; = "tutorial_step"


# instance fields
.field private mChooseLockPatternView:Lcom/android/settings/ChooseLockPatternView;

.field private mVivoCellFour:Landroid/widget/ImageView;

.field private mVivoCellOne:Landroid/widget/ImageView;

.field private mVivoCellThree:Landroid/widget/ImageView;

.field private mVivoCellTwo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f040024

    .line 30
    .local v0, "layout":I
    const v1, 0x7f040024

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->setContentView(I)V

    .line 32
    const v1, 0x7f0e005b

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ChooseLockPatternView;

    iput-object v1, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mChooseLockPatternView:Lcom/android/settings/ChooseLockPatternView;

    .line 33
    const v1, 0x7f0e0055

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mVivoCellOne:Landroid/widget/ImageView;

    .line 34
    const v1, 0x7f0e0057

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mVivoCellTwo:Landroid/widget/ImageView;

    .line 35
    const v1, 0x7f0e0058

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mVivoCellThree:Landroid/widget/ImageView;

    .line 36
    const v1, 0x7f0e0059

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mVivoCellFour:Landroid/widget/ImageView;

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->setTitleLeftButtonText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->showTitleLeftButton()V

    .line 40
    new-instance v1, Lcom/android/settings/ChooseLockPatternTutorial$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockPatternTutorial$1;-><init>(Lcom/android/settings/ChooseLockPatternTutorial;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0879

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->setTitleRightButtonText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->showTitleRightButton()V

    .line 49
    new-instance v1, Lcom/android/settings/ChooseLockPatternTutorial$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockPatternTutorial$2;-><init>(Lcom/android/settings/ChooseLockPatternTutorial;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial;->setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/vivo/app/VivoBaseActivity;->onPause()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mChooseLockPatternView:Lcom/android/settings/ChooseLockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPatternView;->stopAnima()V

    .line 72
    const-string v0, "ChooseLockPatternTutorial"

    const-string v1, "stopAnima "

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 63
    invoke-super {p0}, Lcom/vivo/app/VivoBaseActivity;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mChooseLockPatternView:Lcom/android/settings/ChooseLockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mVivoCellOne:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mVivoCellTwo:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mVivoCellThree:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mVivoCellFour:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/ChooseLockPatternView;->startAnima(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 65
    const-string v0, "ChooseLockPatternTutorial"

    const-string v1, "startAnima "

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public useVivoCommonTitle()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
