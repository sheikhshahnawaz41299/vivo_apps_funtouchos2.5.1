.class public Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "PortraitSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$StatusBarRotationPolicyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PortraitSwitcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 28
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mName:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->updatePortraitButton()V

    return-void
.end method

.method private updatePortraitButton()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->getIntermediateState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const-string v2, "PortraitSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switcher_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mName:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in intermediate state, forbid update."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    .line 96
    .local v1, "on":Z
    const-string v2, "PortraitSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update Switcher_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mName:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", on is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mTextColorLight:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 100
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 104
    :goto_2
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 97
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mTextColorDark:I

    goto :goto_1

    .line 102
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method


# virtual methods
.method public getSwitcherIcon()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f020601

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f020600

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 42
    return-void
.end method

.method public init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V
    .locals 3
    .param p1, "helper"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 115
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isCmccTestVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isMtbfTest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    .line 117
    .local v0, "on":Z
    if-nez v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 121
    .end local v0    # "on":Z
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$StatusBarRotationPolicyListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$StatusBarRotationPolicyListener;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;)V

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->getSwitcherIcon()V

    .line 55
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->updatePortraitButton()V

    .line 34
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 83
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 88
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->setIntermediateState(Z)V

    .line 48
    return-void
.end method
