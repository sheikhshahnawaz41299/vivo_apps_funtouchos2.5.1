.class public abstract Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.super Ljava/lang/Object;
.source "Switcher.java"


# instance fields
.field private isIntermediateState:Z

.field protected mContext:Landroid/content/Context;

.field protected mIconDark:Landroid/graphics/drawable/Drawable;

.field protected mIconIntermediate:Landroid/graphics/drawable/Drawable;

.field protected mIconLight:Landroid/graphics/drawable/Drawable;

.field protected mName:I

.field protected mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

.field protected mTextColorDark:I

.field protected mTextColorLight:I

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v9, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->isIntermediateState:Z

    .line 42
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mName:I

    .line 44
    iput-object p3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->setOnClickListener()V

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->setOnLongClickListener()V

    .line 49
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v6, :cond_1

    .line 50
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 51
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 55
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v6, :cond_0

    .line 56
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 58
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 60
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 61
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0153

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 62
    .local v1, "contentWidth":I
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0154

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 63
    .local v0, "contentHeight":I
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0150

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 64
    .local v4, "paddingLeftRight":I
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0151

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 65
    .local v5, "paddingTop":I
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0152

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 66
    .local v3, "paddingBottom":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v5, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 68
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x3080004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextColorLight:I

    .line 71
    const v6, 0x1010036

    invoke-static {p1, v6}, Lvivo/util/VivoThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextColorDark:I

    .line 72
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextColorDark:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(I)V

    .line 74
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 75
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f017c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->prepare()V

    .line 78
    return-void

    .line 53
    .end local v0    # "contentHeight":I
    .end local v1    # "contentWidth":I
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "paddingBottom":I
    .end local v4    # "paddingLeftRight":I
    .end local v5    # "paddingTop":I
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "isExist":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 129
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v1, 0x1

    .line 134
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected collapseUpSlideView()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->collapseUpSlideView()V

    .line 119
    :cond_0
    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntermediateState()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->isIntermediateState:Z

    return v0
.end method

.method public getName()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mName:I

    return v0
.end method

.method public abstract getSwitcherIcon()V
.end method

.method public getView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .line 123
    return-void
.end method

.method public performClick()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public abstract prepare()V
.end method

.method protected refreshColorTextAndIcon()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextColorLight:I

    .line 139
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mContext:Landroid/content/Context;

    const v1, 0x1010036

    invoke-static {v0, v1}, Lvivo/util/VivoThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextColorDark:I

    .line 140
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mName:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->getSwitcherIcon()V

    .line 144
    return-void
.end method

.method public abstract refreshDisplay()V
.end method

.method public setIntermediateState(Z)V
    .locals 2
    .param p1, "into"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->isIntermediateState:Z

    .line 110
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 111
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract setOnClickListener()V
.end method

.method public abstract setOnLongClickListener()V
.end method

.method public show()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public abstract turnToIntermediateState()V
.end method
