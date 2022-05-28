.class public Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "OrderSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OrderSwitcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateOrderSwitcher()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 84
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public getSwitcherIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 34
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f0205fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->getSwitcherIcon()V

    .line 46
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->updateOrderSwitcher()V

    .line 28
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 75
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
