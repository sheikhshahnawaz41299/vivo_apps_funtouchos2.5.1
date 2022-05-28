.class public Lcom/android/systemui/vivo/common/utils/BlurManager;
.super Ljava/lang/Object;
.source "BlurManager.java"


# static fields
.field public static final BLUR_TYPE_STATUS_BAR:I = 0x0

.field public static final BLUR_TYPE_UP_SLIDE:I = 0x1

.field private static final DEBUG_SAVE_FILE:Z = false

.field private static final SPECIAL_STATUS_BAR_BG_COLOR:I = -0x40000000

.field private static final SPECIAL_STATUS_BAR_BLUR_RADIUS:I = 0x19

.field private static final SPECIAL_STATUS_BAR_BLUR_SCALED:F = 4.0f

.field private static final SPECIAL_UP_SLIDE_BG_COLOR:I = -0x6f000001

.field private static final SPECIAL_UP_SLIDE_BLUR_RADIUS:I = 0x19

.field private static final SPECIAL_UP_SLIDE_BLUR_SCALED:F = 4.0f

.field private static final STATUS_BAR_BG_COLOR:I = -0x4c000000

.field private static final STATUS_BAR_BLUR_RADIUS:I = 0xf

.field private static final STATUS_BAR_BLUR_SCALED:F = 3.0f

.field private static final TAG:Ljava/lang/String; = "BlurManager"

.field private static final UP_SLIDE_BG_COLOR:I = 0x0

.field private static final UP_SLIDE_BLUR_RADIUS:I = 0x19

.field private static final UP_SLIDE_BLUR_SCALED:F = 3.0f

.field private static sInstance:Lcom/android/systemui/vivo/common/utils/BlurManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrRotation:I

.field private mDensity:F

.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private mRes:Landroid/content/res/Resources;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStatusBarBgColor:I

.field private mStatusBarRadius:I

.field private mStatusBarScaled:F

.field private mUpSlideBgColor:I

.field private mUpSlideRadius:I

.field private mUpSlideScaled:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/BlurManager;->sInstance:Lcom/android/systemui/vivo/common/utils/BlurManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    const/16 v3, 0x19

    const/high16 v2, 0x40400000    # 3.0f

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mDensity:F

    .line 66
    iput v5, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mCurrRotation:I

    .line 67
    const/16 v0, 0x438

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenWidth:I

    .line 68
    const/16 v0, 0x780

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenHeight:I

    .line 79
    new-instance v0, Lcom/android/systemui/vivo/common/utils/BlurManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/utils/BlurManager$1;-><init>(Lcom/android/systemui/vivo/common/utils/BlurManager;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mDensity:F

    .line 103
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRenderScript:Landroid/renderscript/RenderScript;

    new-instance v1, Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-direct {v1}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenWidth:I

    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenHeight:I

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->initRotationWatcher()V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->refreshScreenMetrics()V

    .line 112
    const-string v0, "QCOM8939"

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "QCOM8916"

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    :cond_1
    const v0, -0x6f000001

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mUpSlideBgColor:I

    .line 115
    iput v3, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mUpSlideRadius:I

    .line 116
    iput v4, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mUpSlideScaled:F

    .line 118
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mStatusBarBgColor:I

    .line 119
    iput v3, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mStatusBarRadius:I

    .line 120
    iput v4, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mStatusBarScaled:F

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_2
    iput v5, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mUpSlideBgColor:I

    .line 123
    iput v3, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mUpSlideRadius:I

    .line 124
    iget v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mDensity:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mUpSlideScaled:F

    .line 126
    const/high16 v0, -0x4c000000

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mStatusBarBgColor:I

    .line 127
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mStatusBarRadius:I

    .line 128
    iget v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mDensity:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mStatusBarScaled:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/utils/BlurManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/BlurManager;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mCurrRotation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/utils/BlurManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/BlurManager;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mCurrRotation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/utils/BlurManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/BlurManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->refreshScreenMetrics()V

    return-void
.end method

.method private blur(Landroid/graphics/Rect;IIF)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "bgColor"    # I
    .param p3, "radius"    # I
    .param p4, "scaled"    # F

    .prologue
    .line 179
    const/4 v6, 0x0

    .line 180
    .local v6, "result":Landroid/graphics/Bitmap;
    move/from16 v0, p4

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->takeScreenShot(Landroid/graphics/Rect;F)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 185
    .local v7, "shotBitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10, v7}, Lcom/android/systemui/vivo/common/utils/BlurManager;->isTransparentBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 186
    const-string v10, "BlurManager"

    const-string v11, "shotBitmap is a Transparent Bitmap ! "

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v10, 0x0

    .line 217
    :goto_0
    return-object v10

    .line 189
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 190
    .local v8, "startTime":J
    if-eqz v7, :cond_1

    .line 191
    if-eqz p1, :cond_3

    .line 192
    iget v10, p1, Landroid/graphics/Rect;->top:I

    iget v11, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v7, v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 193
    .local v4, "destBitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    move/from16 v0, p3

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->doBlurByRenderScript(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 200
    .end local v4    # "destBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    shr-int/lit8 v10, p2, 0x18

    and-int/lit16 v2, v10, 0xff

    .line 201
    .local v2, "a":I
    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    .line 203
    :try_start_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 204
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    :goto_2
    const-string v10, "BlurManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "blur time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v6

    .line 217
    goto :goto_0

    .line 196
    .end local v2    # "a":I
    :cond_3
    move/from16 v0, p3

    invoke-direct {p0, v7, v0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->doBlurByRenderScript(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 206
    .restart local v2    # "a":I
    :catch_0
    move-exception v5

    .line 207
    .local v5, "e":Ljava/lang/Exception;
    const-string v10, "BlurManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "drawColor error! e: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private doBlurByRenderScript(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    const/4 v4, 0x0

    .line 247
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRenderScript:Landroid/renderscript/RenderScript;

    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v7, 0x1

    invoke-static {v5, p1, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 249
    .local v1, "input":Landroid/renderscript/Allocation;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 250
    .local v2, "output":Landroid/renderscript/Allocation;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 251
    .local v3, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    int-to-float v5, p2

    invoke-virtual {v3, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 252
    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 253
    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 254
    invoke-virtual {v2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 257
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 258
    invoke-virtual {v3}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 259
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 260
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1    # "input":Landroid/renderscript/Allocation;
    .end local v2    # "output":Landroid/renderscript/Allocation;
    .end local v3    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    .end local p1    # "src":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 261
    .restart local p1    # "src":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v4

    .line 263
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/BlurManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Lcom/android/systemui/vivo/common/utils/BlurManager;->sInstance:Lcom/android/systemui/vivo/common/utils/BlurManager;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/systemui/vivo/common/utils/BlurManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/utils/BlurManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/BlurManager;->sInstance:Lcom/android/systemui/vivo/common/utils/BlurManager;

    .line 96
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/BlurManager;->sInstance:Lcom/android/systemui/vivo/common/utils/BlurManager;

    return-object v0
.end method

.method private initRotationWatcher()V
    .locals 5

    .prologue
    .line 133
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 135
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BlurManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init RotationWatcher error! e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshScreenMetrics()V
    .locals 3

    .prologue
    .line 142
    iget v1, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mCurrRotation:I

    if-nez v1, :cond_1

    .line 143
    iget v1, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenWidth:I

    iget v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenHeight:I

    if-le v1, v2, :cond_0

    .line 144
    iget v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenHeight:I

    .line 145
    .local v0, "temp":I
    iget v1, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenWidth:I

    iput v1, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenHeight:I

    .line 146
    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenWidth:I

    .line 155
    .end local v0    # "temp":I
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenHeight:I

    iget v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenWidth:I

    if-le v1, v2, :cond_0

    .line 150
    iget v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenHeight:I

    .line 151
    .restart local v0    # "temp":I
    iget v1, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenWidth:I

    iput v1, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenHeight:I

    .line 152
    iput v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenWidth:I

    goto :goto_0
.end method

.method private takeScreenShot(Landroid/graphics/Rect;F)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "scaled"    # F

    .prologue
    .line 221
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    .line 222
    .local v12, "startTime":J
    const/4 v11, 0x0

    .line 224
    .local v11, "result":Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenWidth:I

    int-to-float v0, v0

    div-float v0, v0, p2

    float-to-int v2, v0

    .line 225
    .local v2, "w":I
    iget v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenHeight:I

    int-to-float v0, v0

    div-float v0, v0, p2

    float-to-int v1, v0

    .line 227
    .local v1, "h":I
    if-nez p1, :cond_0

    .line 228
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "rect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 230
    .restart local p1    # "rect":Landroid/graphics/Rect;
    :cond_0
    if-le v2, v1, :cond_2

    .line 231
    const/4 v3, 0x0

    const v4, 0x226c8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 236
    :goto_0
    const/4 v10, 0x0

    .line 237
    .local v10, "copyResult":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_1

    .line 238
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v11, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 239
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    :cond_1
    const-string v0, "BlurManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shot time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-object v10

    .line 233
    .end local v10    # "copyResult":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v6, 0x0

    const v7, 0x226c8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move v4, v2

    move v5, v1

    invoke-static/range {v3 .. v9}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_0
.end method

.method private updateRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientationDegree"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 356
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 357
    .local v2, "m":Landroid/graphics/Matrix;
    int-to-float v9, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 359
    const/16 v9, 0x5a

    if-ne p2, v9, :cond_0

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v4, v9

    .line 361
    .local v4, "targetX":F
    const/4 v5, 0x0

    .line 369
    .local v5, "targetY":F
    :goto_0
    const/16 v9, 0x9

    new-array v6, v9, [F

    .line 370
    .local v6, "values":[F
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 372
    const/4 v9, 0x2

    aget v7, v6, v9

    .line 373
    .local v7, "x1":F
    const/4 v9, 0x5

    aget v8, v6, v9

    .line 374
    .local v8, "y1":F
    sub-float v9, v4, v7

    sub-float v10, v5, v8

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 375
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 377
    .local v1, "destBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 378
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 379
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 380
    iget-object v9, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 381
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "destBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "targetX":F
    .end local v5    # "targetY":F
    .end local v6    # "values":[F
    .end local v7    # "x1":F
    .end local v8    # "y1":F
    :goto_1
    return-object v1

    .line 362
    :cond_0
    const/16 v9, -0x5a

    if-ne p2, v9, :cond_1

    .line 363
    const/4 v4, 0x0

    .line 364
    .restart local v4    # "targetX":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v5, v9

    .restart local v5    # "targetY":F
    goto :goto_0

    .line 366
    .end local v4    # "targetX":F
    .end local v5    # "targetY":F
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static writeFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 385
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v3, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 391
    :goto_0
    const/4 v1, 0x0

    .line 393
    .local v1, "fOut":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .local v2, "fOut":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 397
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    :goto_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 399
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 404
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 409
    :goto_3
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 400
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 401
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 405
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 406
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 388
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getBlurBackground(Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    const/16 v9, -0x5a

    const v8, 0x7f0205cd

    const/16 v7, 0x30

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "blurBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 272
    .local v1, "blurDrawable":Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_3

    .line 273
    iget v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mStatusBarBgColor:I

    iget v3, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mStatusBarRadius:I

    iget v4, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mStatusBarScaled:F

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/systemui/vivo/common/utils/BlurManager;->blur(Landroid/graphics/Rect;IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    iget v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mCurrRotation:I

    packed-switch v2, :pswitch_data_0

    .line 327
    :goto_0
    :pswitch_0
    return-object v1

    .line 276
    :pswitch_1
    if-eqz v0, :cond_0

    .line 277
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    .end local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2, v7, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .restart local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->getDefaultStatusbarDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 281
    goto :goto_0

    .line 283
    :pswitch_2
    if-eqz v0, :cond_1

    .line 284
    invoke-direct {p0, v0, v9}, Lcom/android/systemui/vivo/common/utils/BlurManager;->updateRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    .end local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2, v7, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .restart local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->getDefaultStatusbarDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 289
    goto :goto_0

    .line 291
    :pswitch_3
    if-eqz v0, :cond_2

    .line 292
    const/16 v2, 0x5a

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/vivo/common/utils/BlurManager;->updateRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    .end local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2, v7, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .restart local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->getDefaultStatusbarDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 300
    :cond_3
    iget v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mUpSlideBgColor:I

    iget v3, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mUpSlideRadius:I

    iget v4, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mUpSlideScaled:F

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/systemui/vivo/common/utils/BlurManager;->blur(Landroid/graphics/Rect;IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    iget v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mCurrRotation:I

    packed-switch v2, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 303
    :pswitch_5
    if-eqz v0, :cond_4

    .line 304
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    .end local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .restart local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 306
    :cond_4
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    .end local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 308
    .restart local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 310
    :pswitch_6
    if-eqz v0, :cond_5

    .line 311
    invoke-direct {p0, v0, v9}, Lcom/android/systemui/vivo/common/utils/BlurManager;->updateRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    .end local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v6}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .restart local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 314
    :cond_5
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    .end local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v6}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 316
    .restart local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 318
    :pswitch_7
    if-eqz v0, :cond_6

    .line 319
    const/16 v2, 0x5a

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/vivo/common/utils/BlurManager;->updateRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    .end local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v6}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .restart local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 322
    :cond_6
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    .end local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v6}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .restart local v1    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 301
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public getBlurMaxLevel()I
    .locals 2

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "result":I
    iget v1, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mCurrRotation:I

    packed-switch v1, :pswitch_data_0

    .line 352
    :goto_0
    :pswitch_0
    return v0

    .line 345
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenHeight:I

    .line 346
    goto :goto_0

    .line 349
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mScreenWidth:I

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getDefaultStatusbarDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x2

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "blurDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getCurrentPkgName()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "currentpkg":Ljava/lang/String;
    const-string v2, "com.bbk.launcher2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithShade()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    .end local v0    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f020317

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v2, v5, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 338
    .restart local v0    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 336
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    .end local v0    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f020316

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v2, v5, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .restart local v0    # "blurDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public isTransparentBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 159
    if-eqz p2, :cond_2

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-static {p1}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getStatusBarHeight()I

    move-result v7

    .line 161
    .local v7, "height":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr v0, v7

    new-array v1, v0, [I

    .line 162
    .local v1, "argb":[I
    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 163
    move-object v8, v1

    .local v8, "arr$":[I
    array-length v12, v8

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_1

    aget v10, v8, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .local v10, "i":I
    and-int/lit8 v0, v10, -0x1

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 174
    .end local v1    # "argb":[I
    .end local v7    # "height":I
    .end local v8    # "arr$":[I
    .end local v10    # "i":I
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :goto_1
    return v0

    .line 163
    .restart local v1    # "argb":[I
    .restart local v7    # "height":I
    .restart local v8    # "arr$":[I
    .restart local v10    # "i":I
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 168
    .end local v10    # "i":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 170
    .end local v1    # "argb":[I
    .end local v7    # "height":I
    .end local v8    # "arr$":[I
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :catch_0
    move-exception v9

    .line 172
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "BlurManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTransparentBitmap error! e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
