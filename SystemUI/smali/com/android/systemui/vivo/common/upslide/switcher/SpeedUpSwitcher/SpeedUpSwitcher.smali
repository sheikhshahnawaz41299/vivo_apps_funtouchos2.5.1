.class public Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "SpeedUpSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeedUpSwitcher"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mClicks:I

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mLongClicked:Z

.field private mShared:Landroid/content/SharedPreferences;

.field private mStopSpeedUpRunnable:Ljava/lang/Runnable;

.field private mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 35
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mLongClicked:Z

    .line 36
    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mClicks:I

    .line 37
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    .line 40
    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    .line 42
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mStopSpeedUpRunnable:Ljava/lang/Runnable;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mShared:Landroid/content/SharedPreferences;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mShared:Landroid/content/SharedPreferences;

    const-string v1, "upslide_switcher_speedup_clicks"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mClicks:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->stopSpeedUpAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->onSpeedUpTimeout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mStopSpeedUpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mLongClicked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mLongClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mClicks:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mClicks:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mClicks:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCuString(Landroid/content/Context;IJ)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appNum"    # I
    .param p3, "memSize"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    if-lez p2, :cond_1

    .line 270
    const-wide/32 v0, 0x100000

    div-long/2addr p3, v0

    .line 271
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p3

    if-ltz v0, :cond_0

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0227

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    .line 275
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0226

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onSpeedUpTimeout()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onSpeedUpTimeout()V

    .line 225
    return-void
.end method

.method private startAnimationSpeedUp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 241
    const-string v1, "SpeedUpSwitcher"

    const-string v2, "start speed up animation"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205e9

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    invoke-direct {v1, v0}, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    .line 248
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->setBounds(IIII)V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->startAnimation()V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_1
    const-string v1, "SpeedUpSwitcher"

    const-string v2, "mVivoRotateDrawable is null!"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopSpeedUpAnim()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mStopSpeedUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 260
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->stopAnimation()V

    .line 264
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->setIntermediateState(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->refreshDisplay()V

    .line 266
    return-void
.end method

.method private updateSpeedUpButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->getIntermediateState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const-string v1, "SpeedUpSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switcher_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mName:I

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

    .line 238
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 233
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 235
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mTextColorDark:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 288
    :cond_0
    return-void
.end method

.method public getSwitcherIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    const v2, 0x7f020605

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205e9

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    invoke-direct {v1, v0}, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mVivoRotateDrawable:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    .line 73
    :cond_0
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSpeedUpFinished(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 211
    const-string v5, "killAppsNum"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 212
    .local v0, "appNum":I
    const-string v5, "releaseRam"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 213
    .local v2, "memSize":J
    const-string v5, "PKGNAME"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "pkg":Ljava/lang/String;
    const-string v5, "SpeedUpSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSpeedUpFinished: appNum= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", memSize= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pkg= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->stopSpeedUpAnim()V

    .line 217
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0, v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->getCuString(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 221
    .end local v4    # "result":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->getSwitcherIcon()V

    .line 84
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->updateSpeedUpButton()V

    .line 60
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 171
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 208
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->setIntermediateState(Z)V

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->startAnimationSpeedUp()V

    .line 79
    return-void
.end method
