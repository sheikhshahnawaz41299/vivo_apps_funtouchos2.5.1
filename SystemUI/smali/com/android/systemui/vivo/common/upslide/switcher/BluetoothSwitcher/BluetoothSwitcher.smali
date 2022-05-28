.class public Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "BluetoothSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothSwitcher"


# instance fields
.field private mBluetoothState:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

.field private mLongClickBt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mLongClickBt:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mBluetoothState:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    .line 26
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    invoke-direct {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mBluetoothState:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mLongClickBt:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mLongClickBt:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mBluetoothState:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateBtButton()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 116
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mBluetoothState:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->getTriState()I

    move-result v1

    .line 117
    .local v1, "state":I
    const-string v2, "BluetoothSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update Switcher_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mName:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mBluetoothState:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    if-eqz v2, :cond_0

    .line 120
    packed-switch v1, :pswitch_data_0

    .line 159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 162
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextColorDark:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextColorDark:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextColorLight:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextColorLight:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 153
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mTextColorLight:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bluetoothAdapterChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mBluetoothState:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mBluetoothState:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->onActualStateChange(Landroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->refreshDisplay()V

    .line 175
    :cond_0
    return-void
.end method

.method public getSwitcherIcon()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0205f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0205ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0205ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 40
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->getSwitcherIcon()V

    .line 50
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->updateBtButton()V

    .line 32
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 81
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 113
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
