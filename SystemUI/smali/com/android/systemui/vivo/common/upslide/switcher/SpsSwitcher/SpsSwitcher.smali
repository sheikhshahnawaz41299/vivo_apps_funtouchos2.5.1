.class public Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "SpsSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpsSwitcher"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mLongClick:Z

.field private mRemind:I

.field private mShared:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mLongClick:Z

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mRemind:I

    .line 46
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mShared:Landroid/content/SharedPreferences;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mLongClick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mLongClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mRemind:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mRemind:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->onSpsStarted()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private onSpsStarted()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onSpsStarted()V

    .line 257
    :cond_0
    return-void
.end method

.method private updateSpsSwitcher()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 221
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mTextColorDark:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 223
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 227
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 244
    :cond_0
    return-void
.end method

.method public getSwitcherIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f020606

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 61
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->getSwitcherIcon()V

    .line 71
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->updateSpsSwitcher()V

    .line 53
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 182
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 218
    return-void
.end method

.method public superPowerSaveChanged(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 230
    const-string v1, "sps_action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "state":Ljava/lang/String;
    const-string v1, "entered"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onSpsEnded()V

    goto :goto_0
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
