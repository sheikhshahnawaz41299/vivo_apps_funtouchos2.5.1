.class public Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;
.super Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
.source "KeyguardShortcut.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DOWNWARDS:I = 0x3f4

.field private static ICON_HEIGHT:I = 0x0

.field private static ICON_WIDTH:I = 0x0

.field private static final MOVETIMES:I = 0x3

.field private static MOVE_HIGHT:I = 0x0

.field private static final POSTDELAYTIME:I = 0x5

.field private static final REFRESH_CALL:I = 0x4b2

.field private static final REFRESH_SMS:I = 0x4b1

.field public static SCREEN_HEIGHT:I = 0x0

.field public static SCREEN_WIDTH:I = 0x0

.field private static final SETINTENT:I = 0x4b0

.field private static final SHORTCUT_NUM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyguardShortcut"

.field private static final UPWARDS:I = 0x3f3

.field private static mDefaultScreen:I

.field private static mSliderNum:I


# instance fields
.field public ASYNCSTAY:Z

.field blurPx:F

.field private comp:[Landroid/content/ComponentName;

.field index:I

.field private isBottom:Z

.field mActivityList:[Ljava/lang/String;

.field private mAniHandler:Landroid/os/Handler;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBackupPkgList:[Ljava/lang/String;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHomePressFirst:J

.field private mIcon:[Landroid/graphics/drawable/Drawable;

.field mIconHeight:I

.field mIconTextureHeight:I

.field mIconTextureWidth:I

.field mIconWidth:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsLiveWallpaper:Z

.field private mMissCall:I

.field private mMissSms:I

.field private mMoveView:Landroid/view/ViewGroup;

.field private mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

.field private mName:[Ljava/lang/CharSequence;

.field private mOnResume:Z

.field mPkgList:[Ljava/lang/String;

.field private mSettings:Landroid/content/SharedPreferences;

.field private mShortcutIntent:[Landroid/content/Intent;

.field private mShowMusicArea:Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

.field private mViewHeight:I

.field private rel_shortcut:Landroid/widget/RelativeLayout;

.field private shortcut_call_noread:Landroid/widget/TextView;

.field private shortcut_sms_noread:Landroid/widget/TextView;

.field private textview:[Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0xf

    sput v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->MOVE_HIGHT:I

    .line 124
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mSliderNum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mHomePressFirst:J

    .line 97
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mOnResume:Z

    .line 100
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mViewHeight:I

    .line 128
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMissSms:I

    .line 131
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMissCall:I

    .line 137
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.android.camera"

    aput-object v1, v0, v2

    const-string v1, "com.android.dialer"

    aput-object v1, v0, v3

    const-string v1, "com.android.mms"

    aput-object v1, v0, v4

    const-string v1, "com.vivo.browser"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mPkgList:[Ljava/lang/String;

    .line 143
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.android.camera.CameraActivity"

    aput-object v1, v0, v2

    const-string v1, "com.android.dialer.BBKTwelveKeyDialer"

    aput-object v1, v0, v3

    const-string v1, "com.android.mms.ui.ConversationList"

    aput-object v1, v0, v4

    const-string v1, "com.vivo.browser.BrowserActivity"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mActivityList:[Ljava/lang/String;

    .line 149
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.android.camera"

    aput-object v1, v0, v2

    const-string v1, "com.android.dialer"

    aput-object v1, v0, v3

    const-string v1, "com.android.mms"

    aput-object v1, v0, v4

    const-string v1, "com.vivo.browser"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mBackupPkgList:[Ljava/lang/String;

    .line 156
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ASYNCSTAY:Z

    .line 158
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->isBottom:Z

    .line 166
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mAniHandler:Landroid/os/Handler;

    .line 381
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIconTextureWidth:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIconTextureHeight:I

    .line 382
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIconWidth:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIconHeight:I

    .line 384
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->blurPx:F

    .line 200
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mContext:Landroid/content/Context;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mContext:Landroid/content/Context;

    const-string v1, "desktop_app_icon_badge"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mSettings:Landroid/content/SharedPreferences;

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->initLayout()V

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->setIntent()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->reFreshSms()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->reFreshCall()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->startUpAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->startDownAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mAniHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)Landroid/graphics/ColorFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;
    .param p1, "x1"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->isBottom:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->updateLayout()V

    return-void
.end method

.method private cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 293
    const-string v1, "KeyguardShortcut"

    const-string v2, "Shortcut textviews release the background drawables"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v0

    .line 290
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_2
    return-void
.end method

.method private initLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v2, 0x1

    .line 207
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mContext:Landroid/content/Context;

    const-string v4, "bbk_lockscreen_shortcut"

    invoke-static {v1, v4, v7}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mSliderNum:I

    .line 208
    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mSliderNum:I

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    sput v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mDefaultScreen:I

    .line 210
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040059

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    .line 213
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    const v4, 0x7f11016b

    invoke-virtual {v1, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_call_noread:Landroid/widget/TextView;

    .line 214
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    const v4, 0x7f11016c

    invoke-virtual {v1, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_sms_noread:Landroid/widget/TextView;

    .line 215
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_call_noread:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_sms_noread:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    new-array v1, v6, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    .line 218
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    const v5, 0x7f110167

    invoke-virtual {v1, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v4, v3

    .line 219
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    const v4, 0x7f110168

    invoke-virtual {v1, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v2

    .line 220
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    const v4, 0x7f110169

    invoke-virtual {v1, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 221
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    const v3, 0x7f11016a

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v7

    .line 223
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    const v2, 0x7f110165

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShowMusicArea:Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    .line 225
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    sget v2, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mDefaultScreen:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->setDefaultScreen(I)V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mViewHeight:I

    .line 229
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 230
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ajustConfig()V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mAniHandler:Landroid/os/Handler;

    const/16 v2, 0x4b0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->setVisibility(I)V

    .line 237
    return-void

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    move v1, v3

    .line 208
    goto/16 :goto_0
.end method

.method private reFreshCall()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 314
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMissCall:I

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_call_noread:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v3

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 324
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_call_noread:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_call_noread:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMissCall:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_call_noread:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    mul-int/lit8 v1, v1, 0xd

    div-int/lit8 v1, v1, 0x20

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method private reFreshSms()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x2

    .line 338
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMissSms:I

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_sms_noread:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v3

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 349
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v3

    .line 343
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_sms_noread:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_sms_noread:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    mul-int/lit8 v1, v1, 0x15

    div-int/lit8 v1, v1, 0x20

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_sms_noread:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMissSms:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private reFrshCallView(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMissCall:I

    .line 309
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mAniHandler:Landroid/os/Handler;

    const/16 v1, 0x4b2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 311
    return-void
.end method

.method private reFrshSmsView(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 332
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMissSms:I

    .line 333
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mAniHandler:Landroid/os/Handler;

    const/16 v1, 0x4b1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    return-void
.end method

.method private resetView()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMoveView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->downwardsAnimation()V

    goto :goto_0
.end method

.method private setIntent()V
    .locals 17

    .prologue
    .line 394
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 395
    .local v8, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 396
    .local v11, "resources":Landroid/content/res/Resources;
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 397
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    .line 398
    .local v5, "density":F
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->blurPx:F

    .line 399
    sget v12, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    div-int/lit8 v12, v12, 0x6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIconWidth:I

    .line 401
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    .line 402
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mName:[Ljava/lang/CharSequence;

    .line 403
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->comp:[Landroid/content/ComponentName;

    .line 404
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/content/Intent;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    .line 406
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    const/4 v13, 0x4

    if-ge v12, v13, :cond_7

    .line 407
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    aput-object v14, v12, v13

    .line 408
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    const-string v13, "android.intent.action.MAIN"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    const-string v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mPkgList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mActivityList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 414
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mPkgList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 415
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 416
    .local v9, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v8, v13}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 418
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    if-nez v12, :cond_5

    .line 419
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.android.camera"

    const-string v15, "com.android.camera.CameraActivity"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 421
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v8, v13}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 422
    if-eqz v1, :cond_0

    .line 423
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mName:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    invoke-virtual {v1, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v12, v13

    .line 424
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v14, v14, v15

    invoke-virtual {v8, v14}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v12, v13

    .line 427
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mName:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    if-nez v12, :cond_3

    .line 428
    :cond_1
    const-string v12, "KeyguardShortcut"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mName:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "- "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mBackupPkgList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mActivityList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 431
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v8, v13}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 432
    .local v2, "aiBack":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_2

    .line 433
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mName:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    invoke-virtual {v2, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v12, v13

    .line 435
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mBackupPkgList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 436
    .local v4, "appInfoBack":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 437
    .local v10, "rBack":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v14, v14, v15

    invoke-virtual {v8, v14}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "aiBack":Landroid/content/pm/ActivityInfo;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "appInfoBack":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "r":Landroid/content/res/Resources;
    .end local v10    # "rBack":Landroid/content/res/Resources;
    :cond_3
    :goto_1
    const-string v12, "KeyguardShortcut"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mName:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "- "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mName:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    if-eqz v12, :cond_4

    .line 454
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIconWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->blurPx:F

    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIconTextureHeight:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIconTextureWidth:I

    .line 455
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIconTextureWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIconTextureHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 456
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v14, v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mName:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setId(I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->textview:[Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v12, v12, v13

    new-instance v13, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 406
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    goto/16 :goto_0

    .line 440
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "r":Landroid/content/res/Resources;
    :cond_5
    if-eqz v1, :cond_6

    .line 441
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mName:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    invoke-virtual {v1, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v12, v13

    .line 443
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIcon:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShortcutIntent:[Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->index:I

    aget-object v14, v14, v15

    invoke-virtual {v8, v14}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v12, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 445
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v6

    .line 446
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    const-string v12, "KeyguardShortcut"

    const-string v13, "Exception "

    invoke-static {v12, v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 494
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    return-void
.end method

.method private startDownAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 531
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 532
    .local v0, "anims":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 533
    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMoveView:Landroid/view/ViewGroup;

    const-string v3, "translationY"

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 534
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIsLiveWallpaper:Z

    if-eqz v1, :cond_0

    .line 535
    new-array v1, v7, [Landroid/animation/Animator;

    const-string v2, "translationY"

    new-array v3, v7, [F

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mViewHeight:I

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 537
    :cond_0
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$4;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 552
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 553
    return-void
.end method

.method private startUpAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 506
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 507
    .local v0, "anims":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 508
    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMoveView:Landroid/view/ViewGroup;

    const-string v3, "translationY"

    new-array v4, v7, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mViewHeight:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 509
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIsLiveWallpaper:Z

    if-eqz v1, :cond_0

    .line 510
    new-array v1, v7, [Landroid/animation/Animator;

    const-string v2, "translationY"

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 512
    :cond_0
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 526
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 527
    return-void
.end method

.method private updateLayout()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 556
    const-string v1, "KeyguardShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLayout, isBottom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->isBottom:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ASYNCSTAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ASYNCSTAY:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ASYNCSTAY:Z

    if-eqz v1, :cond_1

    .line 558
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->isBottom:Z

    if-eqz v1, :cond_2

    .line 559
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    sget v2, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mSliderNum:I

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreen(I)V

    .line 569
    :cond_1
    :goto_0
    return-void

    .line 561
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMultiScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreen(I)V

    .line 562
    sget v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mSliderNum:I

    if-lez v0, :cond_1

    .line 563
    sget v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mSliderNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mSliderNum:I

    .line 565
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mContext:Landroid/content/Context;

    const-string v1, "bbk_lockscreen_shortcut"

    sget v2, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mSliderNum:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->putIntToSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateNumVisibility()V
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 651
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mSettings:Landroid/content/SharedPreferences;

    const-string v5, "com.android.dialer"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 652
    .local v0, "showCallNum":Z
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mSettings:Landroid/content/SharedPreferences;

    const-string v5, "com.android.mms"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 653
    .local v1, "showSmsNum":Z
    const-string v2, "KeyguardShortcut"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show call num: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", show sms num: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_call_noread:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMissCall:I

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 655
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->shortcut_sms_noread:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMissSms:I

    if-lez v5, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    return-void

    :cond_0
    move v2, v4

    .line 654
    goto :goto_0

    :cond_1
    move v3, v4

    .line 655
    goto :goto_1
.end method


# virtual methods
.method public ajustConfig()V
    .locals 8

    .prologue
    const/16 v7, 0x87

    const/16 v6, 0x5a

    const/16 v5, 0x4b

    const/16 v4, 0x3c

    const/16 v3, 0x1e0

    .line 254
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    .line 255
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_HEIGHT:I

    .line 256
    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    sget v2, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_HEIGHT:I

    if-le v1, v2, :cond_0

    .line 257
    sget v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_HEIGHT:I

    .line 258
    .local v0, "tmp":I
    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    sput v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_HEIGHT:I

    .line 259
    sput v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    .line 262
    .end local v0    # "tmp":I
    :cond_0
    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_2

    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_HEIGHT:I

    if-ne v1, v3, :cond_2

    .line 263
    sput v4, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ICON_WIDTH:I

    .line 264
    sput v4, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ICON_HEIGHT:I

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    if-ne v1, v3, :cond_3

    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_HEIGHT:I

    const/16 v2, 0x320

    if-eq v1, v2, :cond_4

    :cond_3
    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    if-ne v1, v3, :cond_5

    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_HEIGHT:I

    const/16 v2, 0x356

    if-ne v1, v2, :cond_5

    .line 267
    :cond_4
    sput v5, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ICON_WIDTH:I

    .line 268
    sput v5, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ICON_HEIGHT:I

    goto :goto_0

    .line 269
    :cond_5
    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    const/16 v2, 0x21c

    if-ne v1, v2, :cond_6

    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_HEIGHT:I

    const/16 v2, 0x3c0

    if-ne v1, v2, :cond_6

    .line 270
    sput v6, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ICON_WIDTH:I

    .line 271
    sput v6, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ICON_HEIGHT:I

    goto :goto_0

    .line 272
    :cond_6
    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_7

    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_HEIGHT:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_7

    .line 273
    sput v7, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ICON_WIDTH:I

    .line 274
    sput v7, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ICON_HEIGHT:I

    .line 275
    const/16 v1, 0x19

    sput v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->MOVE_HIGHT:I

    goto :goto_0

    .line 276
    :cond_7
    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_WIDTH:I

    const/16 v2, 0x438

    if-ne v1, v2, :cond_1

    sget v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->SCREEN_HEIGHT:I

    const/16 v2, 0x780

    if-ne v1, v2, :cond_1

    .line 277
    const/16 v1, 0xb4

    sput v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ICON_WIDTH:I

    .line 278
    const/16 v1, 0xb4

    sput v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ICON_HEIGHT:I

    .line 279
    const/16 v1, 0x28

    sput v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->MOVE_HIGHT:I

    goto :goto_0
.end method

.method public downwardsAnimation()V
    .locals 4

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ASYNCSTAY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->isBottom:Z

    if-nez v0, :cond_0

    .line 369
    const-string v0, "KeyguardShortcut"

    const-string v1, "downAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mAniHandler:Landroid/os/Handler;

    const/16 v1, 0x3f4

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 372
    :cond_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mAniHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onCleanup()V
    .locals 0

    .prologue
    .line 601
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->cleanup()V

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->setIntent()V

    .line 245
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onDetachedFromWindow()V

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->cleanup()V

    .line 287
    return-void
.end method

.method public onHide(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->onPause()V

    .line 606
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->userActivity()V

    .line 250
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressed(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 615
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->isSecure()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->userActivity()V

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 620
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mHomePressFirst:J

    sub-long v0, v2, v4

    .line 621
    .local v0, "diff":J
    const-string v4, "KeyguardShortcut"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyPressed,diff = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-wide/16 v4, 0x190

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 623
    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mOnResume:Z

    if-eqz v4, :cond_0

    .line 624
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isPowerSaveMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 626
    const-string v4, "KeyguardShortcut"

    const-string v5, "show lockshortcut screen"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->updateNumVisibility()V

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->upwardsAnimation()V

    .line 632
    :cond_0
    iput-wide v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mHomePressFirst:J

    .line 635
    .end local v0    # "diff":J
    .end local v2    # "now":J
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->isBottom:Z

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eq v4, v8, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 639
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->resetView()V

    .line 642
    :cond_3
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onKeyPressed(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mAniHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 594
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->resetView()V

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mOnResume:Z

    .line 596
    return-void
.end method

.method public onRefreshInfo(II)V
    .locals 0
    .param p1, "msgNum"    # I
    .param p2, "callNum"    # I

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->reFrshSmsView(I)V

    .line 611
    invoke-direct {p0, p2}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->reFrshCallView(I)V

    .line 612
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mAniHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mOnResume:Z

    .line 588
    return-void
.end method

.method public onWallpaperChanged()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->ifShowLiveWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIsLiveWallpaper:Z

    .line 648
    return-void
.end method

.method public setMoveView(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "moveView"    # Landroid/view/ViewGroup;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMoveView:Landroid/view/ViewGroup;

    .line 573
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mMoveView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut$5;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 582
    return-void
.end method

.method public upwardsAnimation()V
    .locals 4

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->ASYNCSTAY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->isBottom:Z

    if-eqz v0, :cond_0

    .line 356
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mIsLiveWallpaper:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mViewHeight:I

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->setTranslationY(F)V

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mShowMusicArea:Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->startService()V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->mAniHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 362
    :cond_0
    return-void

    .line 356
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
