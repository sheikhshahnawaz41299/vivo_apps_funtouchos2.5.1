.class public Lcom/vivo/settings/IndexSlipView;
.super Landroid/widget/ImageButton;
.source "IndexSlipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/IndexSlipView$Data;,
        Lcom/vivo/settings/IndexSlipView$ToastPopHandler;,
        Lcom/vivo/settings/IndexSlipView$OnSlipTouchListener;
    }
.end annotation


# static fields
.field private static SUPPORTED_PACKAGES_LIST:Ljava/util/LinkedHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IndexSlipView"

.field private static final TOUCH_TOAST_COLOR_DEFAULT:I = -0xe33eaa

.field private static final TOUCH_TOAST_COLOR_PURPLE:I = -0x6ed109

.field private static final VERSION:I = 0x782a0d8d


# instance fields
.field private final BG_COLOR_DEFAULT:I

.field private final BG_COLOR_TOUCHED:I

.field private final BG_COLOR_TOUCHED_B_STYLE:I

.field private final KEYS_COUNT_LIMIT:I

.field private final KEYS_SPECAIL_OTHER:Ljava/lang/String;

.field private final KEYS_SPECAIL_STAR:Ljava/lang/String;

.field private final ScreenDensity:F

.field private final ScreenWidth:I

.field private final TEXT_COLOR_B_STYLE:I

.field private final TEXT_COLOR_DEFAULT:I

.field private final TOAST_POP_HIDE:I

.field private final TOAST_POP_SHOW:I

.field private isRtl:Z

.field private mAllDataCount:I

.field private mAutoVisibility:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataSyncLocker:Ljava/lang/Object;

.field private mDefaultBgColor:I

.field private mIndexDatas:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vivo/settings/IndexSlipView$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexKeyMaps:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexKeyTextColor:I

.field private final mIndexKeyTextSize:I

.field private mIndexTextBitmap:Landroid/graphics/Bitmap;

.field private mIsDistoryed:Z

.field private final mLimitWidthDipValue:I

.field private mListSelection:I

.field private mListSelectionTmp:I

.field private mListView:Landroid/widget/ListView;

.field private mMeasuredHeight:I

.field private mOldMeasuredHeight:I

.field private mOnSlipTouchListener:Lcom/vivo/settings/IndexSlipView$OnSlipTouchListener;

.field private final mPackageName:Ljava/lang/String;

.field private mPopHandler:Lcom/vivo/settings/IndexSlipView$ToastPopHandler;

.field private mShowingDatas:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vivo/settings/IndexSlipView$Data;",
            ">;"
        }
    .end annotation
.end field

.field private final mToastPopTextSize:I

.field private final mToastPopWH:I

.field private mTouchDownTimeMillis:J

.field private mTouchPopup:Landroid/widget/PopupWindow;

.field private mTouchPopupView:Landroid/widget/TextView;

.field private mTouchToastBgColor:Ljava/lang/Integer;

.field private mTouchToastBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchedBgColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, -0x6ed109

    const v3, -0xe33eaa

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/vivo/settings/IndexSlipView;->SUPPORTED_PACKAGES_LIST:Ljava/util/LinkedHashMap;

    .line 55
    sget-object v0, Lcom/vivo/settings/IndexSlipView;->SUPPORTED_PACKAGES_LIST:Ljava/util/LinkedHashMap;

    const-string v1, "com.android.bbkmusic"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/vivo/settings/IndexSlipView;->SUPPORTED_PACKAGES_LIST:Ljava/util/LinkedHashMap;

    const-string v1, "com.android.contacts"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/vivo/settings/IndexSlipView;->SUPPORTED_PACKAGES_LIST:Ljava/util/LinkedHashMap;

    const-string v1, "com.android.email"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/vivo/settings/IndexSlipView;->SUPPORTED_PACKAGES_LIST:Ljava/util/LinkedHashMap;

    const-string v1, "com.android.mms"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/vivo/settings/IndexSlipView;->SUPPORTED_PACKAGES_LIST:Ljava/util/LinkedHashMap;

    const-string v1, "com.android.settings"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v7, -0x50909091

    const v6, -0x7f121213

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-object v5, p0, Lcom/vivo/settings/IndexSlipView;->mTouchToastBgColor:Ljava/lang/Integer;

    .line 63
    iput-object v5, p0, Lcom/vivo/settings/IndexSlipView;->mTouchToastBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    const/16 v4, 0x1b

    iput v4, p0, Lcom/vivo/settings/IndexSlipView;->KEYS_COUNT_LIMIT:I

    .line 66
    const-string v4, "\u2605"

    iput-object v4, p0, Lcom/vivo/settings/IndexSlipView;->KEYS_SPECAIL_STAR:Ljava/lang/String;

    .line 67
    const-string v4, "#"

    iput-object v4, p0, Lcom/vivo/settings/IndexSlipView;->KEYS_SPECAIL_OTHER:Ljava/lang/String;

    .line 74
    const/16 v4, 0x1e

    iput v4, p0, Lcom/vivo/settings/IndexSlipView;->mLimitWidthDipValue:I

    .line 75
    const/16 v4, 0x2d

    iput v4, p0, Lcom/vivo/settings/IndexSlipView;->mToastPopWH:I

    .line 76
    const/16 v4, 0xf

    iput v4, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyTextSize:I

    .line 77
    const/16 v4, 0x19

    iput v4, p0, Lcom/vivo/settings/IndexSlipView;->mToastPopTextSize:I

    .line 79
    iput v3, p0, Lcom/vivo/settings/IndexSlipView;->mMeasuredHeight:I

    .line 80
    iput v3, p0, Lcom/vivo/settings/IndexSlipView;->mOldMeasuredHeight:I

    .line 82
    iput v3, p0, Lcom/vivo/settings/IndexSlipView;->BG_COLOR_DEFAULT:I

    .line 83
    iput v6, p0, Lcom/vivo/settings/IndexSlipView;->BG_COLOR_TOUCHED:I

    .line 84
    const v4, -0x9f9fa0

    iput v4, p0, Lcom/vivo/settings/IndexSlipView;->BG_COLOR_TOUCHED_B_STYLE:I

    .line 85
    iput v7, p0, Lcom/vivo/settings/IndexSlipView;->TEXT_COLOR_DEFAULT:I

    .line 86
    const/4 v4, -0x1

    iput v4, p0, Lcom/vivo/settings/IndexSlipView;->TEXT_COLOR_B_STYLE:I

    .line 88
    iput v3, p0, Lcom/vivo/settings/IndexSlipView;->mDefaultBgColor:I

    .line 89
    iput v6, p0, Lcom/vivo/settings/IndexSlipView;->mTouchedBgColor:I

    .line 90
    iput v7, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyTextColor:I

    .line 95
    new-instance v4, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;

    invoke-direct {v4, p0, v5}, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;-><init>(Lcom/vivo/settings/IndexSlipView;Lcom/vivo/settings/IndexSlipView$1;)V

    iput-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mPopHandler:Lcom/vivo/settings/IndexSlipView$ToastPopHandler;

    .line 97
    iput v3, p0, Lcom/vivo/settings/IndexSlipView;->mListSelection:I

    .line 98
    const/4 v4, -0x1

    iput v4, p0, Lcom/vivo/settings/IndexSlipView;->mListSelectionTmp:I

    .line 100
    iput v3, p0, Lcom/vivo/settings/IndexSlipView;->TOAST_POP_SHOW:I

    .line 101
    iput v2, p0, Lcom/vivo/settings/IndexSlipView;->TOAST_POP_HIDE:I

    .line 103
    iput v3, p0, Lcom/vivo/settings/IndexSlipView;->mAllDataCount:I

    .line 105
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    .line 106
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    .line 110
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/vivo/settings/IndexSlipView;->mTouchDownTimeMillis:J

    .line 114
    iput-boolean v2, p0, Lcom/vivo/settings/IndexSlipView;->mAutoVisibility:Z

    .line 115
    iput-boolean v3, p0, Lcom/vivo/settings/IndexSlipView;->mIsDistoryed:Z

    .line 117
    iput-boolean v3, p0, Lcom/vivo/settings/IndexSlipView;->isRtl:Z

    .line 118
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mDataSyncLocker:Ljava/lang/Object;

    .line 135
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "IndexSlipView version is "

    aput-object v5, v4, v3

    const v5, 0x782a0d8d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-direct {p0, v4}, Lcom/vivo/settings/IndexSlipView;->log([Ljava/lang/Object;)V

    .line 136
    iput-object p1, p0, Lcom/vivo/settings/IndexSlipView;->mContext:Landroid/content/Context;

    .line 137
    iget-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mPackageName:Ljava/lang/String;

    .line 139
    iget-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 140
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/vivo/settings/IndexSlipView;->ScreenWidth:I

    .line 141
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/vivo/settings/IndexSlipView;->ScreenDensity:F

    .line 143
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/vivo/settings/IndexSlipView;->isRtl:Z

    .line 144
    const/high16 v2, 0x41f00000    # 30.0f

    iget v4, p0, Lcom/vivo/settings/IndexSlipView;->ScreenDensity:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v0, v2

    .line 145
    .local v0, "mLimitWidth":I
    invoke-virtual {p0, v0}, Lcom/vivo/settings/IndexSlipView;->setMinimumWidth(I)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/vivo/settings/IndexSlipView;->setMaxWidth(I)V

    .line 147
    iget v2, p0, Lcom/vivo/settings/IndexSlipView;->mDefaultBgColor:I

    invoke-virtual {p0, v2}, Lcom/vivo/settings/IndexSlipView;->setBackgroundColor(I)V

    .line 148
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/vivo/settings/IndexSlipView;->setPaddingRelative(IIII)V

    .line 149
    invoke-virtual {p0, v3}, Lcom/vivo/settings/IndexSlipView;->setVisibility(I)V

    .line 151
    invoke-direct {p0}, Lcom/vivo/settings/IndexSlipView;->registerOnGlobalLayoutListener()V

    .line 152
    return-void

    .end local v0    # "mLimitWidth":I
    :cond_0
    move v2, v3

    .line 143
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/vivo/settings/IndexSlipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;

    .prologue
    .line 43
    iget v0, p0, Lcom/vivo/settings/IndexSlipView;->mMeasuredHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/vivo/settings/IndexSlipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;

    .prologue
    .line 43
    iget v0, p0, Lcom/vivo/settings/IndexSlipView;->ScreenWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/vivo/settings/IndexSlipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/vivo/settings/IndexSlipView;->mMeasuredHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/vivo/settings/IndexSlipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/vivo/settings/IndexSlipView;->isRtl:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/vivo/settings/IndexSlipView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vivo/settings/IndexSlipView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/IndexSlipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;

    .prologue
    .line 43
    iget v0, p0, Lcom/vivo/settings/IndexSlipView;->mOldMeasuredHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/vivo/settings/IndexSlipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/vivo/settings/IndexSlipView;->mOldMeasuredHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/vivo/settings/IndexSlipView;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchToastBgColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/IndexSlipView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchToastBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/IndexSlipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vivo/settings/IndexSlipView;->getTouchToastBackgroundColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/vivo/settings/IndexSlipView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/vivo/settings/IndexSlipView;->initTouchToastBackground(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/vivo/settings/IndexSlipView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vivo/settings/IndexSlipView;->initVisibility()V

    return-void
.end method

.method static synthetic access$800(Lcom/vivo/settings/IndexSlipView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mDataSyncLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vivo/settings/IndexSlipView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/IndexSlipView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vivo/settings/IndexSlipView;->updateIndexText()V

    return-void
.end method

.method private calculateIndexCanvasWidth(Landroid/graphics/Paint;)I
    .locals 6
    .param p1, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 596
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 598
    .local v2, "width":I
    iget-object v3, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 599
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/settings/IndexSlipView$Data;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 600
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/settings/IndexSlipView$Data;

    invoke-virtual {v3}, Lcom/vivo/settings/IndexSlipView$Data;->getSortKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 601
    .local v1, "textWidth":F
    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 602
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    goto :goto_0

    .line 606
    .end local v1    # "textWidth":F
    :cond_1
    return v2
.end method

.method private calculateShowingDatas(Ljava/util/LinkedList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vivo/settings/IndexSlipView$Data;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "datas":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/vivo/settings/IndexSlipView$Data;>;"
    const/4 v3, 0x0

    .line 492
    iget-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    .line 493
    :cond_0
    const/4 v3, -0x1

    .line 515
    :cond_1
    :goto_0
    return v3

    .line 496
    :cond_2
    iget-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 500
    const/16 v1, 0x1b

    .line 501
    .local v1, "limit":I
    iget-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    const-string v5, "\u2605"

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 502
    add-int/lit8 v1, v1, 0x1

    .line 505
    :cond_3
    iget-object v4, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v1, :cond_5

    const/4 v2, 0x1

    .line 507
    .local v2, "sort":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 508
    invoke-direct {p0, p1, v1}, Lcom/vivo/settings/IndexSlipView;->fillShowingDatasBySort(Ljava/util/LinkedList;I)V

    .line 515
    :cond_4
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    goto :goto_0

    .end local v2    # "sort":Z
    :cond_5
    move v2, v3

    .line 505
    goto :goto_1

    .line 510
    .restart local v2    # "sort":Z
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 511
    iget-object v3, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private changeListViewPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 460
    if-gez p1, :cond_0

    .line 461
    const/4 p1, 0x0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vivo/settings/IndexSlipView;->mAllDataCount:I

    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 467
    :cond_1
    return-void
.end method

.method private createColorDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    .line 655
    const/high16 v4, 0x40400000    # 3.0f

    iget v5, p0, Lcom/vivo/settings/IndexSlipView;->ScreenDensity:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float v0, v4, v5

    .line 656
    .local v0, "corner":F
    const/16 v4, 0x8

    new-array v2, v4, [F

    const/4 v4, 0x0

    aput v0, v2, v4

    const/4 v4, 0x1

    aput v0, v2, v4

    const/4 v4, 0x2

    aput v0, v2, v4

    const/4 v4, 0x3

    aput v0, v2, v4

    const/4 v4, 0x4

    aput v0, v2, v4

    const/4 v4, 0x5

    aput v0, v2, v4

    const/4 v4, 0x6

    aput v0, v2, v4

    const/4 v4, 0x7

    aput v0, v2, v4

    .line 673
    .local v2, "outerRadii":[F
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 674
    .local v3, "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 675
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 676
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 677
    return-object v1
.end method

.method private createIndexTextBitmap()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 566
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "createIndexTextBitmap"

    aput-object v13, v11, v12

    invoke-direct {p0, v11}, Lcom/vivo/settings/IndexSlipView;->log([Ljava/lang/Object;)V

    .line 567
    const/high16 v11, 0x41700000    # 15.0f

    iget v12, p0, Lcom/vivo/settings/IndexSlipView;->ScreenDensity:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float v8, v11, v12

    .line 568
    .local v8, "textSize":F
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 569
    .local v7, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 570
    iget v11, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyTextColor:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 572
    invoke-direct {p0, v7}, Lcom/vivo/settings/IndexSlipView;->calculateIndexCanvasWidth(Landroid/graphics/Paint;)I

    move-result v11

    iget v12, p0, Lcom/vivo/settings/IndexSlipView;->mMeasuredHeight:I

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, p0, Lcom/vivo/settings/IndexSlipView;->mIndexTextBitmap:Landroid/graphics/Bitmap;

    .line 574
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/vivo/settings/IndexSlipView;->mIndexTextBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 575
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v11, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 576
    .local v1, "count":I
    const/4 v4, 0x0

    .line 577
    .local v4, "index":I
    iget v11, p0, Lcom/vivo/settings/IndexSlipView;->mMeasuredHeight:I

    div-int v3, v11, v1

    .line 579
    .local v3, "drawHeight":I
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "mShowingDatas::size="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "\n"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    aput-object v13, v11, v12

    invoke-direct {p0, v11}, Lcom/vivo/settings/IndexSlipView;->log([Ljava/lang/Object;)V

    .line 580
    iget-object v11, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 581
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/settings/IndexSlipView$Data;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 582
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/IndexSlipView$Data;

    .line 583
    .local v2, "data":Lcom/vivo/settings/IndexSlipView$Data;
    invoke-virtual {v2}, Lcom/vivo/settings/IndexSlipView$Data;->getSortKey()Ljava/lang/String;

    move-result-object v6

    .line 585
    .local v6, "text":Ljava/lang/String;
    iget-object v11, p0, Lcom/vivo/settings/IndexSlipView;->mIndexTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float v9, v11, v12

    .line 586
    .local v9, "x":F
    mul-int v11, v3, v4

    div-int/lit8 v12, v3, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v8, v12

    add-float v10, v11, v12

    .line 587
    .local v10, "y":F
    invoke-virtual {v0, v6, v9, v10, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 588
    add-int/lit8 v4, v4, 0x1

    .line 589
    goto :goto_0

    .line 591
    .end local v2    # "data":Lcom/vivo/settings/IndexSlipView$Data;
    .end local v6    # "text":Ljava/lang/String;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_0
    iget-object v11, p0, Lcom/vivo/settings/IndexSlipView;->mIndexTextBitmap:Landroid/graphics/Bitmap;

    return-object v11
.end method

.method private createTouchPop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 626
    const/high16 v1, 0x42340000    # 45.0f

    iget v2, p0, Lcom/vivo/settings/IndexSlipView;->ScreenDensity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 627
    .local v0, "w_h_limit":I
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    invoke-direct {v1, v2, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopup:Landroid/widget/PopupWindow;

    .line 628
    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 630
    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 631
    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 632
    return-void
.end method

.method private fillShowingDatasBySort(Ljava/util/LinkedList;I)V
    .locals 3
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vivo/settings/IndexSlipView$Data;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, "datas":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/vivo/settings/IndexSlipView$Data;>;"
    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    new-instance v2, Lcom/vivo/settings/IndexSlipView$2;

    invoke-direct {v2, p0}, Lcom/vivo/settings/IndexSlipView$2;-><init>(Lcom/vivo/settings/IndexSlipView;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 531
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 532
    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    :cond_0
    new-instance v1, Lcom/vivo/settings/IndexSlipView$3;

    invoke-direct {v1, p0}, Lcom/vivo/settings/IndexSlipView$3;-><init>(Lcom/vivo/settings/IndexSlipView;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 546
    return-void
.end method

.method private getTouchIndexPosition(F)I
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 448
    iget-object v3, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 449
    .local v0, "indexCount":I
    iget v3, p0, Lcom/vivo/settings/IndexSlipView;->mMeasuredHeight:I

    div-int v1, v3, v0

    .line 450
    .local v1, "indexHeight":I
    int-to-float v3, v1

    div-float v3, p1, v3

    float-to-int v2, v3

    .line 451
    .local v2, "position":I
    if-gez v2, :cond_1

    .line 452
    const/4 v2, 0x0

    .line 456
    :cond_0
    :goto_0
    return v2

    .line 453
    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-le v2, v3, :cond_0

    .line 454
    add-int/lit8 v2, v0, -0x1

    goto :goto_0
.end method

.method private getTouchToastBackgroundColor()I
    .locals 3

    .prologue
    .line 618
    sget-object v1, Lcom/vivo/settings/IndexSlipView;->SUPPORTED_PACKAGES_LIST:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/vivo/settings/IndexSlipView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 619
    .local v0, "color":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 620
    const v1, -0xe33eaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 622
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getVersionCode()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x782a0d8d

    return v0
.end method

.method private hideTouchPop(Z)V
    .locals 4
    .param p1, "hideDelay"    # Z

    .prologue
    .line 648
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/IndexSlipView;->mPopHandler:Lcom/vivo/settings/IndexSlipView$ToastPopHandler;

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x1f4

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x64

    goto :goto_1
.end method

.method private initTouchToastBackground(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/vivo/settings/IndexSlipView;->createColorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private initVisibility()V
    .locals 2

    .prologue
    .line 391
    iget-boolean v1, p0, Lcom/vivo/settings/IndexSlipView;->mAutoVisibility:Z

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    .line 392
    .local v0, "visibility":I
    :goto_0
    iget-boolean v1, p0, Lcom/vivo/settings/IndexSlipView;->mAutoVisibility:Z

    invoke-virtual {p0, v1, v0}, Lcom/vivo/settings/IndexSlipView;->setVisibility(ZI)V

    .line 393
    return-void

    .line 391
    .end local v0    # "visibility":I
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/IndexSlipView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method private isSpecailData(Lcom/vivo/settings/IndexSlipView$Data;)Z
    .locals 3
    .param p1, "data"    # Lcom/vivo/settings/IndexSlipView$Data;

    .prologue
    .line 549
    invoke-virtual {p1}, Lcom/vivo/settings/IndexSlipView$Data;->getSortKey()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vivo/settings/IndexSlipView$Data;->getIndex()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    const-string v1, "\u2605"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    :cond_0
    const/4 v1, 0x1

    .line 555
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private varargs log([Ljava/lang/Object;)V
    .locals 7
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 772
    const-string v5, "IndexSlipView"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 773
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .local v4, "msgBuilder":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 775
    .local v3, "msg":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 774
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 777
    .end local v3    # "msg":Ljava/lang/Object;
    :cond_0
    const-string v5, "IndexSlipView"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "msgBuilder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private registerOnGlobalLayoutListener()V
    .locals 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/vivo/settings/IndexSlipView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vivo/settings/IndexSlipView$1;

    invoke-direct {v1, p0}, Lcom/vivo/settings/IndexSlipView$1;-><init>(Lcom/vivo/settings/IndexSlipView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 489
    return-void
.end method

.method private showTouchPop(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 635
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mPopHandler:Lcom/vivo/settings/IndexSlipView$ToastPopHandler;

    invoke-virtual {v0, v1}, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mPopHandler:Lcom/vivo/settings/IndexSlipView$ToastPopHandler;

    invoke-virtual {v0, v1}, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->removeMessages(I)V

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mPopHandler:Lcom/vivo/settings/IndexSlipView$ToastPopHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/settings/IndexSlipView$ToastPopHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private syncDatas()V
    .locals 14

    .prologue
    const v13, 0x7fffffff

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 292
    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    if-eqz v9, :cond_0

    .line 293
    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    .line 296
    :cond_0
    const/4 v8, 0x0

    .line 297
    .local v8, "specail_sortkey_count":I
    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    const-string v10, "\u2605"

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 298
    add-int/lit8 v8, v8, 0x1

    .line 300
    :cond_1
    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 301
    add-int/lit8 v8, v8, 0x1

    .line 304
    :cond_2
    const/4 v4, 0x0

    .line 305
    .local v4, "index":I
    const/4 v0, 0x0

    .line 306
    .local v0, "count":I
    const/4 v1, 0x0

    .line 307
    .local v1, "currentData":Lcom/vivo/settings/IndexSlipView$Data;
    const/4 v7, 0x0

    .line 309
    .local v7, "previousData":Lcom/vivo/settings/IndexSlipView$Data;
    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 310
    .local v3, "entrysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 311
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 313
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Lcom/vivo/settings/IndexSlipView$Data;

    .end local v1    # "currentData":Lcom/vivo/settings/IndexSlipView$Data;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v1, p0, v9, v10, v4}, Lcom/vivo/settings/IndexSlipView$Data;-><init>(Lcom/vivo/settings/IndexSlipView;Ljava/lang/String;II)V

    .line 315
    .restart local v1    # "currentData":Lcom/vivo/settings/IndexSlipView$Data;
    if-gtz v4, :cond_5

    move v5, v11

    .line 316
    .local v5, "isFirst":Z
    :goto_1
    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_6

    move v6, v11

    .line 318
    .local v6, "isLast":Z
    :goto_2
    if-eqz v5, :cond_7

    .line 319
    move-object v7, v1

    .line 320
    if-nez v8, :cond_3

    .line 321
    invoke-virtual {v7, v13}, Lcom/vivo/settings/IndexSlipView$Data;->setCount(I)V

    .line 334
    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    .line 335
    invoke-virtual {v1, v13}, Lcom/vivo/settings/IndexSlipView$Data;->setCount(I)V

    .line 336
    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    invoke-virtual {v9, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 339
    goto :goto_0

    .end local v5    # "isFirst":Z
    .end local v6    # "isLast":Z
    :cond_5
    move v5, v12

    .line 315
    goto :goto_1

    .restart local v5    # "isFirst":Z
    :cond_6
    move v6, v12

    .line 316
    goto :goto_2

    .line 324
    .restart local v6    # "isLast":Z
    :cond_7
    invoke-direct {p0, v7}, Lcom/vivo/settings/IndexSlipView;->isSpecailData(Lcom/vivo/settings/IndexSlipView$Data;)Z

    move-result v9

    if-nez v9, :cond_8

    if-ne v4, v8, :cond_9

    .line 325
    :cond_8
    const v0, 0x7fffffff

    .line 329
    :goto_4
    invoke-virtual {v7, v0}, Lcom/vivo/settings/IndexSlipView$Data;->setCount(I)V

    .line 330
    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    invoke-virtual {v9, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 331
    move-object v7, v1

    goto :goto_3

    .line 327
    :cond_9
    invoke-virtual {v1}, Lcom/vivo/settings/IndexSlipView$Data;->getPosition()I

    move-result v9

    invoke-virtual {v7}, Lcom/vivo/settings/IndexSlipView$Data;->getPosition()I

    move-result v10

    sub-int v0, v9, v10

    goto :goto_4

    .line 341
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "isFirst":Z
    .end local v6    # "isLast":Z
    :cond_a
    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    if-eqz v9, :cond_b

    .line 342
    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    .line 345
    :cond_b
    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    invoke-direct {p0, v9}, Lcom/vivo/settings/IndexSlipView;->calculateShowingDatas(Ljava/util/LinkedList;)I

    move-result v9

    if-gtz v9, :cond_c

    .line 346
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/vivo/settings/IndexSlipView;->setVisibility(I)V

    .line 351
    :goto_5
    return-void

    .line 350
    :cond_c
    invoke-direct {p0}, Lcom/vivo/settings/IndexSlipView;->updateIndexText()V

    goto :goto_5
.end method

.method private updateIndexText()V
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/vivo/settings/IndexSlipView;->mMeasuredHeight:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/vivo/settings/IndexSlipView;->createIndexTextBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/IndexSlipView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/IndexSlipView;->initVisibility()V

    .line 563
    return-void
.end method


# virtual methods
.method public changeIndexKeys(Ljava/util/LinkedHashMap;I)V
    .locals 3
    .param p2, "allDataCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "changeIndexKeys."

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/vivo/settings/IndexSlipView;->log([Ljava/lang/Object;)V

    .line 279
    if-nez p1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IndexKey-Position maps cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iput-object p1, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    .line 284
    iput p2, p0, Lcom/vivo/settings/IndexSlipView;->mAllDataCount:I

    .line 286
    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView;->mDataSyncLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/vivo/settings/IndexSlipView;->syncDatas()V

    .line 288
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeIndexKeys(Ljava/util/LinkedHashMap;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/vivo/settings/IndexSlipView;->changeIndexKeys(Ljava/util/LinkedHashMap;I)V

    .line 266
    return-void

    .line 265
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 234
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "IndexSlipView destroyed."

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/vivo/settings/IndexSlipView;->log([Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    :cond_3
    iput-boolean v3, p0, Lcom/vivo/settings/IndexSlipView;->mIsDistoryed:Z

    .line 254
    return-void
.end method

.method public init(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IndexSlipView initialized."

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/vivo/settings/IndexSlipView;->log([Ljava/lang/Object;)V

    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ListView cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/vivo/settings/IndexSlipView;->mListView:Landroid/widget/ListView;

    .line 167
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/settings/IndexSlipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    const/high16 v1, 0x41c80000    # 25.0f

    iget v2, p0, Lcom/vivo/settings/IndexSlipView;->ScreenDensity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 171
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 173
    iget-boolean v0, p0, Lcom/vivo/settings/IndexSlipView;->mIsDistoryed:Z

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    .line 175
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/vivo/settings/IndexSlipView;->createTouchPop()V

    .line 180
    iput-boolean v3, p0, Lcom/vivo/settings/IndexSlipView;->mIsDistoryed:Z

    .line 181
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 397
    const/16 v5, 0x8

    new-array v8, v5, [Ljava/lang/Object;

    const-string v5, "Event & y="

    aput-object v5, v8, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v6

    const/4 v5, 0x2

    const-string v9, "mIndexKeyMaps{NULL?}="

    aput-object v9, v8, v5

    const/4 v9, 0x3

    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    if-nez v5, :cond_1

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v5, 0x4

    const-string v9, "mIndexKeyMaps.isEmpty()="

    aput-object v9, v8, v5

    const/4 v5, 0x5

    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x6

    const-string v9, "mShowingDatas.isEmpty()="

    aput-object v9, v8, v5

    const/4 v5, 0x7

    iget-object v9, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-direct {p0, v8}, Lcom/vivo/settings/IndexSlipView;->log([Ljava/lang/Object;)V

    .line 399
    invoke-virtual {p0}, Lcom/vivo/settings/IndexSlipView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyMaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView;->mIndexDatas:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 444
    :goto_1
    return v6

    :cond_1
    move v5, v7

    .line 397
    goto :goto_0

    .line 403
    :cond_2
    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView;->mOnSlipTouchListener:Lcom/vivo/settings/IndexSlipView$OnSlipTouchListener;

    if-eqz v5, :cond_3

    .line 404
    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView;->mOnSlipTouchListener:Lcom/vivo/settings/IndexSlipView$OnSlipTouchListener;

    invoke-interface {v5, p1}, Lcom/vivo/settings/IndexSlipView$OnSlipTouchListener;->onTouch(Landroid/view/MotionEvent;)V

    .line 407
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/vivo/settings/IndexSlipView;->getTouchIndexPosition(F)I

    move-result v3

    .line 409
    .local v3, "touchPosition":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 412
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/vivo/settings/IndexSlipView;->mTouchDownTimeMillis:J

    .line 415
    :pswitch_1
    iget v5, p0, Lcom/vivo/settings/IndexSlipView;->mTouchedBgColor:I

    invoke-virtual {p0, v5}, Lcom/vivo/settings/IndexSlipView;->setBackgroundColor(I)V

    .line 417
    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView;->mShowingDatas:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/IndexSlipView$Data;

    .line 418
    .local v2, "touchData":Lcom/vivo/settings/IndexSlipView$Data;
    invoke-virtual {v2}, Lcom/vivo/settings/IndexSlipView$Data;->getSortKey()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "key":Ljava/lang/String;
    iget v5, p0, Lcom/vivo/settings/IndexSlipView;->mTouchedBgColor:I

    invoke-virtual {p0, v5}, Lcom/vivo/settings/IndexSlipView;->setBackgroundColor(I)V

    .line 420
    invoke-virtual {v2}, Lcom/vivo/settings/IndexSlipView$Data;->getPosition()I

    move-result v4

    .line 422
    .local v4, "value":I
    iget-object v5, p0, Lcom/vivo/settings/IndexSlipView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, p0, Lcom/vivo/settings/IndexSlipView;->mListSelection:I

    .line 423
    iget v5, p0, Lcom/vivo/settings/IndexSlipView;->mListSelection:I

    iget v7, p0, Lcom/vivo/settings/IndexSlipView;->mListSelectionTmp:I

    if-eq v5, v7, :cond_4

    .line 424
    iget v5, p0, Lcom/vivo/settings/IndexSlipView;->mListSelection:I

    invoke-direct {p0, v5}, Lcom/vivo/settings/IndexSlipView;->changeListViewPosition(I)V

    .line 426
    :cond_4
    iget v5, p0, Lcom/vivo/settings/IndexSlipView;->mListSelection:I

    iput v5, p0, Lcom/vivo/settings/IndexSlipView;->mListSelectionTmp:I

    .line 428
    invoke-direct {p0, v1}, Lcom/vivo/settings/IndexSlipView;->showTouchPop(Ljava/lang/String;)V

    goto :goto_1

    .line 433
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "touchData":Lcom/vivo/settings/IndexSlipView$Data;
    .end local v4    # "value":I
    :pswitch_2
    iget v5, p0, Lcom/vivo/settings/IndexSlipView;->mDefaultBgColor:I

    invoke-virtual {p0, v5}, Lcom/vivo/settings/IndexSlipView;->setBackgroundColor(I)V

    .line 436
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/vivo/settings/IndexSlipView;->mTouchDownTimeMillis:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1f4

    cmp-long v5, v8, v10

    if-gtz v5, :cond_5

    move v0, v6

    .line 437
    .local v0, "isQuickTap":Z
    :goto_2
    invoke-direct {p0, v0}, Lcom/vivo/settings/IndexSlipView;->hideTouchPop(Z)V

    .line 439
    const/4 v5, -0x1

    iput v5, p0, Lcom/vivo/settings/IndexSlipView;->mListSelectionTmp:I

    goto :goto_1

    .end local v0    # "isQuickTap":Z
    :cond_5
    move v0, v7

    .line 436
    goto :goto_2

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSlipTouchListener(Lcom/vivo/settings/IndexSlipView$OnSlipTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vivo/settings/IndexSlipView$OnSlipTouchListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/vivo/settings/IndexSlipView;->mOnSlipTouchListener:Lcom/vivo/settings/IndexSlipView$OnSlipTouchListener;

    .line 228
    return-void
.end method

.method public setToastBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchToastBgColor:Ljava/lang/Integer;

    .line 191
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchToastBgColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vivo/settings/IndexSlipView;->initTouchToastBackground(I)V

    .line 192
    return-void
.end method

.method public setToastBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/vivo/settings/IndexSlipView;->mTouchToastBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchPopupView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView;->mTouchToastBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setVisibility(ZI)V
    .locals 7
    .param p1, "auto"    # Z
    .param p2, "visibility"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 364
    if-eqz p1, :cond_3

    .line 365
    const/16 v0, 0x8

    .line 366
    .local v0, "visibility_status":I
    iget-object v2, p0, Lcom/vivo/settings/IndexSlipView;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/vivo/settings/IndexSlipView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/vivo/settings/IndexSlipView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v1, v2, v3

    .line 368
    .local v1, "visible_count":I
    iget v2, p0, Lcom/vivo/settings/IndexSlipView;->mAllDataCount:I

    if-le v1, v2, :cond_0

    .line 369
    const/4 v1, 0x0

    .line 372
    :cond_0
    iget v2, p0, Lcom/vivo/settings/IndexSlipView;->mAllDataCount:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_1

    iget v2, p0, Lcom/vivo/settings/IndexSlipView;->mAllDataCount:I

    if-le v2, v1, :cond_1

    .line 373
    const/4 v0, 0x0

    .line 377
    .end local v1    # "visible_count":I
    :cond_1
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "setVisibility & auto is true ; visible = "

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Lcom/vivo/settings/IndexSlipView;->log([Ljava/lang/Object;)V

    .line 379
    invoke-virtual {p0, v0}, Lcom/vivo/settings/IndexSlipView;->setVisibility(I)V

    .line 387
    .end local v0    # "visibility_status":I
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/vivo/settings/IndexSlipView;->mAutoVisibility:Z

    .line 388
    return-void

    .line 381
    :cond_3
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "setVisibility & auto is false ; visible = "

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Lcom/vivo/settings/IndexSlipView;->log([Ljava/lang/Object;)V

    .line 382
    const/16 v2, 0x8

    if-eq p2, v2, :cond_4

    const/4 v2, 0x4

    if-eq p2, v2, :cond_4

    if-nez p2, :cond_2

    .line 383
    :cond_4
    invoke-virtual {p0, p2}, Lcom/vivo/settings/IndexSlipView;->setVisibility(I)V

    goto :goto_0
.end method

.method public useBlackStyle(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    const v0, -0x9f9fa0

    iput v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchedBgColor:I

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyTextColor:I

    .line 220
    :goto_0
    invoke-direct {p0}, Lcom/vivo/settings/IndexSlipView;->updateIndexText()V

    .line 221
    return-void

    .line 217
    :cond_0
    const v0, -0x7f121213

    iput v0, p0, Lcom/vivo/settings/IndexSlipView;->mTouchedBgColor:I

    .line 218
    const v0, -0x50909091

    iput v0, p0, Lcom/vivo/settings/IndexSlipView;->mIndexKeyTextColor:I

    goto :goto_0
.end method
