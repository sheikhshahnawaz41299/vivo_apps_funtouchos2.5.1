.class public Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "NfcSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcSwitcher"


# instance fields
.field private mLongClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mLongClick:Z

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mLongClick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mLongClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateNfcSwitcher()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->getIntermediateState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    const-string v3, "NfcSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switcher_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mName:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is in intermediate state, forbid update."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const/4 v2, 0x0

    .line 135
    .local v2, "on":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 136
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 142
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_2
    :goto_1
    const-string v3, "NfcSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update Switcher_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mName:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", on is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mTextColorLight:I

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_4

    .line 146
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 150
    :goto_3
    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v1, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 143
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mTextColorDark:I

    goto :goto_2

    .line 148
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 139
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public getSwitcherIcon()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f0205f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f0205f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f0205f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 42
    return-void
.end method

.method public nfcAdapterChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 157
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 158
    .local v0, "state":I
    const-string v1, "NfcSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive nfc change, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eq v4, v0, :cond_0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 161
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->setIntermediateState(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->refreshDisplay()V

    .line 164
    :cond_1
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->getSwitcherIcon()V

    .line 60
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->updateNfcSwitcher()V

    .line 34
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 92
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 125
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 47
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->setIntermediateState(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 50
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->mTextColorLight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    :cond_0
    return-void
.end method
