.class public Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;
.super Ljava/lang/Object;
.source "BrightnessHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;
    }
.end annotation


# static fields
.field private static final DELTA_PROGRESS:I = 0xa

.field private static final MSG_SET_BRIGHTNESS:I = 0x3e8

.field private static final MSG_UPDATE_BRIGHTNESS_MODE:I = 0x3e9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBrightnessButtonClickListener:Landroid/view/View$OnClickListener;

.field mBrightnessHandler:Landroid/os/Handler;

.field private mBrightnessImg:Landroid/widget/ImageView;

.field private mBrightnessLayout:Landroid/widget/LinearLayout;

.field mBrightnessModeObserver:Landroid/database/ContentObserver;

.field mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBrightnessSeekBar:Landroid/widget/SeekBar;

.field private mBrightnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mBrightnessThreadHandler:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;

.field private mBrightnessValue:I

.field private mCollectData:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

.field private mContext:Landroid/content/Context;

.field private mFingerDown:Z

.field private mMirrorController:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;

.field private mSeekBar:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mSettingImg:Landroid/widget/ImageView;

.field private mSettingsButtonListener:Landroid/view/View$OnClickListener;

.field private mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "upSlideHelper"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mSeekBar:Ljava/lang/Class;

    .line 45
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mFingerDown:Z

    .line 49
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$1;-><init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$2;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$2;-><init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 82
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$3;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$3;-><init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 92
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$4;-><init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 143
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$5;-><init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessButtonClickListener:Landroid/view/View$OnClickListener;

    .line 173
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$6;-><init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 187
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .line 189
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mCollectData:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getBrightnessMirrorController()Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mMirrorController:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->updateSeekBarProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->updateBrightButton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mCollectData:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mFingerDown:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mFingerDown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mMirrorController:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessThreadHandler:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->setBrightness(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessValue:I

    return v0
.end method

.method private getBrightness()I
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mContext:Landroid/content/Context;

    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getBrightnessMode(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 248
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 249
    .local v2, "power":Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 250
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mContext:Landroid/content/Context;

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 252
    .local v0, "brightnessMode":I
    if-ne v0, v3, :cond_0

    .line 257
    .end local v0    # "brightnessMode":I
    .end local v2    # "power":Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0    # "brightnessMode":I
    .restart local v2    # "power":Landroid/os/IPowerManager;
    :cond_0
    move v3, v4

    .line 252
    goto :goto_0

    .line 254
    .end local v0    # "brightnessMode":I
    .end local v2    # "power":Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightnessMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 257
    goto :goto_0
.end method

.method private refreshUI()V
    .locals 3

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mSettingImg:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 300
    sget-object v1, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->TAG:Ljava/lang/String;

    const-string v2, "mSettingImg is null re-init it"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getViewRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->init(Landroid/view/View;)V

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 304
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mSettingImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->updateBrightnessLayout()V

    .line 306
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mContext:Landroid/content/Context;

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 277
    return-void
.end method

.method private updateBrightButton()V
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v0

    .line 231
    .local v0, "auto":Z
    const/4 v1, 0x0

    .line 232
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 237
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    return-void

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private updateBrightnessLayout()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->updateBrightButton()V

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->updateSeekBarProgress()V

    .line 269
    return-void
.end method

.method private updateSeekBarProgress()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->getBrightness()I

    move-result v1

    sget v2, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessConstants;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->getBrightness()I

    move-result v1

    sget v2, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessConstants;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;)V
    .locals 9
    .param p1, "mRoot"    # Landroid/view/View;

    .prologue
    .line 199
    const v4, 0x7f11026b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessLayout:Landroid/widget/LinearLayout;

    .line 200
    const v4, 0x7f11026c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mSettingImg:Landroid/widget/ImageView;

    .line 201
    const v4, 0x7f11026e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessImg:Landroid/widget/ImageView;

    .line 202
    const v4, 0x7f11026d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    .line 203
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    sget v5, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessConstants;->MAXIMUM_BACKLIGHT:I

    sget v6, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessConstants;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 204
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 205
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessImg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :try_start_0
    const-string v4, "android.widget.SeekBar"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mSeekBar:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mSeekBar:Ljava/lang/Class;

    const-string v5, "setNonClick"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 215
    .local v3, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mSettingImg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->updateBrightnessLayout()V

    .line 223
    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "second thread"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 225
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 226
    .local v2, "looper":Landroid/os/Looper;
    new-instance v4, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;-><init>(Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessThreadHandler:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper$BrightnessHander;

    .line 227
    return-void

    .line 210
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    .end local v2    # "looper":Landroid/os/Looper;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->refreshUI()V

    .line 296
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 67
    return-void
.end method
