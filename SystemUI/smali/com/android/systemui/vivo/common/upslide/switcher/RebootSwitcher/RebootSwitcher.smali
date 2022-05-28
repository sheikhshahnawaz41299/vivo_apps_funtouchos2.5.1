.class public Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "RebootSwitcher.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateRebootButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 76
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->mTextColorDark:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 78
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public getSwitcherIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 33
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f020603

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 34
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 35
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->getSwitcherIcon()V

    .line 45
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->updateRebootButton()V

    .line 27
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 68
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 73
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
