.class public Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "SmartShotSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartShotSwitcher"


# instance fields
.field private mLongClickSmartShot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mLongClickSmartShot:Z

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mLongClickSmartShot:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mLongClickSmartShot:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateSmartShotSwitcher()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->getIntermediateState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "SmartShotSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switcher_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mName:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in intermediate state, forbid update."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mTextColorDark:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 122
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_1
    const-string v1, "kn"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0
.end method


# virtual methods
.method public getSwitcherIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f020604

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 44
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->getSwitcherIcon()V

    .line 54
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->updateSmartShotSwitcher()V

    .line 36
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 82
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 113
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
