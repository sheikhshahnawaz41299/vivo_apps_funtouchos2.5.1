.class public Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;
.super Ljava/lang/Object;
.source "UpSlideGuideViewManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpSlideGuideViewManager"


# instance fields
.field private mBlankTouchListener:Landroid/view/View$OnTouchListener;

.field private mContext:Landroid/content/Context;

.field private mDismissKeyguard:Z

.field private mNoLongerShow:Z

.field private mUpSlideGuideCheckoutView:Landroid/widget/TextView;

.field private mUpSlideGuideTipView:Landroid/widget/TextView;

.field private mUpSlideGuideView:Landroid/view/View;

.field private mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "upSlideHelper"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mDismissKeyguard:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mNoLongerShow:Z

    .line 32
    new-instance v2, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager$1;-><init>(Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .line 47
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mContext:Landroid/content/Context;

    const-string v3, "show_up_slide_guide_at_statusbar"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mNoLongerShow:Z

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->init()V

    .line 50
    return-void

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->dismissUpSlideGuide(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    return-object v0
.end method

.method private clearView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideTipView:Landroid/widget/TextView;

    .line 188
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideCheckoutView:Landroid/widget/TextView;

    .line 189
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideView:Landroid/view/View;

    .line 190
    return-void
.end method

.method private dismissUpSlideGuide(Z)V
    .locals 3
    .param p1, "commit"    # Z

    .prologue
    const/4 v2, 0x1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mContext:Landroid/content/Context;

    const-string v1, "vivo_vivoice_launchable"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mContext:Landroid/content/Context;

    const-string v1, "show_up_slide_guide_at_statusbar"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 93
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mNoLongerShow:Z

    .line 94
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->removeUpSlideGuideView(Landroid/view/View;)V

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->clearView()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->setUpSlideGuideViewShowState(Z)V

    .line 99
    :cond_1
    return-void
.end method

.method private getSystemRotation(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 138
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideView:Landroid/view/View;

    const v1, 0x7f110271

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideTipView:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideView:Landroid/view/View;

    const v1, 0x7f110270

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideCheckoutView:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideCheckoutView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager$2;-><init>(Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method private isSpsOn()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isSpsOn()Z

    move-result v0

    goto :goto_0
.end method

.method private isUpSlideDisabled()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isUpSlideDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method private showUpSlideGuideView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mNoLongerShow:Z

    if-eqz v3, :cond_1

    .line 103
    const-string v3, "UpSlideGuideViewManager"

    const-string v4, "showUpSlideGuideView(): mNoLongerShow is true, reutrn!"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v2, 0x0

    .line 108
    .local v2, "showGuideView":Z
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->isSpsOn()Z

    move-result v0

    .line 109
    .local v0, "isSpsOn":Z
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->isUpSlideDisabled()Z

    move-result v1

    .line 118
    .local v1, "isUpSlideDisabled":Z
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mNoLongerShow:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->getSystemRotation(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_2

    .line 120
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mDismissKeyguard:Z

    if-eqz v3, :cond_3

    .line 121
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mDismissKeyguard:Z

    .line 129
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 130
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->showUpSlideGuideView()V

    .line 132
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mContext:Landroid/content/Context;

    const-string v4, "vivo_vivoice_launchable"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_0

    .line 122
    :cond_3
    const-string v3, "com.bbk.launcher2.Launcher"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getCurrentActivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 124
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private updateGuideViewResources()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideTipView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideTipView:Landroid/widget/TextView;

    const v1, 0x7f0e0206

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideCheckoutView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideCheckoutView:Landroid/widget/TextView;

    const v1, 0x7f0e0205

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    :cond_1
    return-void
.end method


# virtual methods
.method public getUpSlideGuideView()Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideGuideView:Landroid/view/View;

    return-object v0
.end method

.method public isUpSlideGuideViewNoLongerShow()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mNoLongerShow:Z

    return v0
.end method

.method public noLongerShowGuideView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mNoLongerShow:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mContext:Landroid/content/Context;

    const-string v1, "show_up_slide_guide_at_statusbar"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 148
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mNoLongerShow:Z

    .line 150
    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mNoLongerShow:Z

    if-nez v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->updateGuideViewResources()V

    .line 156
    :cond_0
    return-void
.end method

.method public setHideKeyguard(Z)V
    .locals 0
    .param p1, "dismissKeyguard"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mDismissKeyguard:Z

    .line 143
    return-void
.end method

.method public toggleUpSlideGuideView(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "commit"    # Z

    .prologue
    .line 78
    const-string v0, "UpSlideGuideViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleUpSlideGuideView(): show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getViewState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->showUpSlideGuideView()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->dismissUpSlideGuide(Z)V

    goto :goto_0
.end method
