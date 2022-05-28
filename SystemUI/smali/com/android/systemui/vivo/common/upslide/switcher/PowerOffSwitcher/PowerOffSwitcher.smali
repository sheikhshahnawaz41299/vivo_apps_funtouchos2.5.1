.class public Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "PowerOffSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerOffSwitcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updatePowerOffSwitcher()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 72
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->mTextColorDark:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 74
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public getSwitcherIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f020602

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 34
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->getSwitcherIcon()V

    .line 44
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->updatePowerOffSwitcher()V

    .line 26
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PowerOffSwitcher/PowerOffSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 64
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
