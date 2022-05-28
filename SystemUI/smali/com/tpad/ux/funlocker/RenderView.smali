.class public Lcom/tpad/ux/funlocker/RenderView;
.super Landroid/view/View;
.source "RenderView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;,
        Lcom/tpad/ux/funlocker/RenderView$JSHandler;,
        Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;,
        Lcom/tpad/ux/funlocker/RenderView$TimerClock;,
        Lcom/tpad/ux/funlocker/RenderView$TouchListener;,
        Lcom/tpad/ux/funlocker/RenderView$UXEngine;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$tpad$ux$funlocker$RenderCondition:[I = null

.field static final AnalyzeData:Ljava/lang/String; = "AnalyzeData"

.field private static CURR_ACTION_RECEIVED_JS_INVOKED:Ljava/lang/String; = null

.field static final DEFAULT:I = 0x0

.field static final DEFAULT_IMEI:Ljava/lang/String; = "123456789012345"

.field public static final Engine_Addr:Ljava/lang/String; = "Eng_Addr"

.field public static final Engine_Ret:Ljava/lang/String; = "Eng_Ret"

.field public static final GENERAL_CURR_DIY_IMG:Ljava/lang/String; = "general_curr_diy_img.jpg"

.field public static final GENERAL_CURR_UX_NAME:Ljava/lang/String; = "general_curr_ux_name.ux"

.field static final MAX_DEBUGS:I = 0xf

.field static MScreeModeA:[[J = null

.field static MScreeModeB:[[J = null

.field static MScreeModeC:[[J = null

.field static final NotifyBlowWheat:Ljava/lang/String; = "NotifyBlowWheat"

.field static final NotifyData:Ljava/lang/String; = "NotifyData"

.field static final NotifyDate:Ljava/lang/String; = "NotifyDate"

.field static final NotifyLanguage:Ljava/lang/String; = "NotifyLanguage"

.field static final NotifyMailAndCall:Ljava/lang/String; = "NotifyMailAndCall"

.field static final NotifyRecord:Ljava/lang/String; = "NotifyRecord"

.field static final NotifySetCount:Ljava/lang/String; = "NotifySetCount"

.field static final NotifySetDataOne:Ljava/lang/String; = "NotifySetDataOne"

.field static final NotifySetDataTwo:Ljava/lang/String; = "NotifySetDataTwo"

.field static final NotifySetDay:Ljava/lang/String; = "NotifySetDay"

.field static final NotifySetMail:Ljava/lang/String; = "NotifySetMail"

.field static final NotifySetModeData:Ljava/lang/String; = "NotifySetModeData"

.field static final NotifySetPhone:Ljava/lang/String; = "NotifySetPhone"

.field static final NotifyShake:Ljava/lang/String; = "NotifySnake"

.field static final NotifyTouch:Ljava/lang/String; = "NotifyTouch"

.field static final NotifyUXMute:Ljava/lang/String; = "NotifyUXMute"

.field static final NotifyUXReset:Ljava/lang/String; = "NotifyUXReset"

.field static final NotifyUXShake:Ljava/lang/String; = "NotifyUXShake"

.field public static final PERMISSION_JS_INVOKED:Ljava/lang/String; = "ki.tp.permission.JS_INVOKED"

.field static final SPEED:I = 0x2

.field static ScreeModeA:[[J = null

.field static ScreeModeB:[[J = null

.field static ScreeModeC:[[J = null

.field static ScreeModeVGA:[[J = null

.field static ScreeModeWVGA:[[J = null

.field public static final TAG:Ljava/lang/String; = "RenderView"

.field public static final TYPE_ENGINE_BUFFER:I = 0x10

.field public static final TYPE_ENGINE_PATH:I = 0x20

.field private static h_scale:F

.field private static mContext:Landroid/content/Context;

.field private static mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

.field private static mListener:Lcom/tpad/ux/funlocker/JSListener;

.field private static mMatrixDy:F

.field private static mRenderView:Lcom/tpad/ux/funlocker/RenderView;

.field private static ux_object:Lcom/tpad/ux/funlocker/UXObject;

.field private static w_scale:F


# instance fields
.field private DebugInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Touch_x:I

.field public Touch_y:I

.field private debugPaint:Landroid/graphics/Paint;

.field private dirtyRect:Landroid/graphics/Rect;

.field private engine_raw:Z

.field public invalidate:Z

.field private invokedReceiver:Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;

.field private jsHandler:Lcom/tpad/ux/funlocker/RenderView$JSHandler;

.field private jsListener:Lcom/tpad/ux/funlocker/JSListener;

.field private mEngineCallBack:Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;

.field private mEngineStartType:I

.field private mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

.field private mTimerTask:Lcom/tpad/ux/funlocker/RenderView$TimerClock;

.field private mTouchListener:Lcom/tpad/ux/funlocker/RenderView$TouchListener;

.field private matrix:Landroid/graphics/Matrix;

.field private refreshHandler:Landroid/os/Handler;

.field renderBmp:I

.field private saveData1:Ljava/lang/String;

.field private saveData2:Ljava/lang/String;

.field private saveData3:Ljava/lang/String;

.field private transmitFlag:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$tpad$ux$funlocker$RenderCondition()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->$SWITCH_TABLE$com$tpad$ux$funlocker$RenderCondition:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tpad/ux/funlocker/RenderCondition;->values()[Lcom/tpad/ux/funlocker/RenderCondition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_PAUSE:Lcom/tpad/ux/funlocker/RenderCondition;

    invoke-virtual {v1}, Lcom/tpad/ux/funlocker/RenderCondition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_START:Lcom/tpad/ux/funlocker/RenderCondition;

    invoke-virtual {v1}, Lcom/tpad/ux/funlocker/RenderCondition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_STOP:Lcom/tpad/ux/funlocker/RenderCondition;

    invoke-virtual {v1}, Lcom/tpad/ux/funlocker/RenderCondition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->$SWITCH_TABLE$com$tpad$ux$funlocker$RenderCondition:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 106
    const/4 v0, 0x7

    new-array v0, v0, [[J

    new-array v1, v3, [J

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [J

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [J

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    .line 107
    new-array v1, v3, [J

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [J

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [J

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [J

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    .line 106
    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeA:[[J

    .line 109
    new-array v0, v3, [[J

    new-array v1, v3, [J

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v3, [J

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeB:[[J

    .line 110
    new-array v0, v5, [[J

    new-array v1, v3, [J

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeC:[[J

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [[J

    new-array v1, v3, [J

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v3, [J

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    new-array v1, v3, [J

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    .line 113
    new-array v1, v3, [J

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [J

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [J

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    .line 112
    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->MScreeModeA:[[J

    .line 115
    new-array v0, v3, [[J

    new-array v1, v3, [J

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    new-array v1, v3, [J

    fill-array-data v1, :array_11

    aput-object v1, v0, v5

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->MScreeModeB:[[J

    .line 116
    new-array v0, v5, [[J

    new-array v1, v3, [J

    fill-array-data v1, :array_12

    aput-object v1, v0, v4

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->MScreeModeC:[[J

    .line 118
    new-array v0, v3, [[J

    new-array v1, v3, [J

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    new-array v1, v3, [J

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeVGA:[[J

    .line 119
    new-array v0, v3, [[J

    new-array v1, v3, [J

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    new-array v1, v3, [J

    fill-array-data v1, :array_16

    aput-object v1, v0, v5

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeWVGA:[[J

    .line 299
    const-string v0, ""

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->CURR_ACTION_RECEIVED_JS_INVOKED:Ljava/lang/String;

    .line 305
    sput v6, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    .line 306
    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    .line 312
    const/4 v0, 0x0

    sput v0, Lcom/tpad/ux/funlocker/RenderView;->mMatrixDy:F

    .line 1598
    return-void

    .line 106
    :array_0
    .array-data 8
        0x140
        0x1e0
    .end array-data

    :array_1
    .array-data 8
        0x1e0
        0x320
    .end array-data

    :array_2
    .array-data 8
        0x1e0
        0x356
    .end array-data

    .line 107
    :array_3
    .array-data 8
        0x21c
        0x3c0
    .end array-data

    :array_4
    .array-data 8
        0x2d0
        0x4a0
    .end array-data

    :array_5
    .array-data 8
        0x2d0
        0x500
    .end array-data

    :array_6
    .array-data 8
        0x320
        0x500
    .end array-data

    .line 109
    :array_7
    .array-data 8
        0xf0
        0x140
    .end array-data

    :array_8
    .array-data 8
        0x1e0
        0x2d0
    .end array-data

    .line 110
    :array_9
    .array-data 8
        0x280
        0x3c0
    .end array-data

    .line 112
    :array_a
    .array-data 8
        0x1e0
        0x320
    .end array-data

    :array_b
    .array-data 8
        0x1e0
        0x356
    .end array-data

    :array_c
    .array-data 8
        0x21c
        0x3c0
    .end array-data

    .line 113
    :array_d
    .array-data 8
        0x2d0
        0x4a0
    .end array-data

    :array_e
    .array-data 8
        0x2d0
        0x500
    .end array-data

    :array_f
    .array-data 8
        0x320
        0x500
    .end array-data

    .line 115
    :array_10
    .array-data 8
        0xf0
        0x140
    .end array-data

    :array_11
    .array-data 8
        0x140
        0x1e0
    .end array-data

    .line 116
    :array_12
    .array-data 8
        0x280
        0x3c0
    .end array-data

    .line 118
    :array_13
    .array-data 8
        0x1e0
        0x2bc
    .end array-data

    :array_14
    .array-data 8
        0x1e0
        0x356
    .end array-data

    .line 119
    :array_15
    .array-data 8
        0x2d0
        0x400
    .end array-data

    :array_16
    .array-data 8
        0x2d0
        0x500
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tpad/ux/funlocker/JSCallback;Lcom/tpad/ux/funlocker/ActionType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "jsCallback"    # Lcom/tpad/ux/funlocker/JSCallback;
    .param p4, "flag"    # Lcom/tpad/ux/funlocker/ActionType;

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v0, Lcom/tpad/ux/funlocker/RenderView$1;

    invoke-direct {v0, p0}, Lcom/tpad/ux/funlocker/RenderView$1;-><init>(Lcom/tpad/ux/funlocker/RenderView;)V

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->jsListener:Lcom/tpad/ux/funlocker/JSListener;

    .line 291
    new-instance v0, Lcom/tpad/ux/funlocker/RenderView$JSHandler;

    invoke-direct {v0, p0}, Lcom/tpad/ux/funlocker/RenderView$JSHandler;-><init>(Lcom/tpad/ux/funlocker/RenderView;)V

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->jsHandler:Lcom/tpad/ux/funlocker/RenderView$JSHandler;

    .line 328
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData1:Ljava/lang/String;

    .line 329
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData2:Ljava/lang/String;

    .line 330
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData3:Ljava/lang/String;

    .line 1662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView;->engine_raw:Z

    .line 377
    const/4 v0, 0x0

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    .line 378
    const/16 v0, 0x10

    iput v0, p0, Lcom/tpad/ux/funlocker/RenderView;->mEngineStartType:I

    .line 379
    new-instance v0, Lcom/tpad/ux/funlocker/UXObject;

    invoke-static {p1, p2}, Lcom/tpad/ux/funlocker/Utils;->getBytesFromUX(Landroid/content/Context;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tpad/ux/funlocker/UXObject;-><init>([B)V

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    .line 380
    invoke-direct {p0, p1, p4, p3}, Lcom/tpad/ux/funlocker/RenderView;->init(Landroid/content/Context;Lcom/tpad/ux/funlocker/ActionType;Lcom/tpad/ux/funlocker/JSCallback;)V

    .line 381
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tpad/ux/funlocker/JSCallback;Lcom/tpad/ux/funlocker/ActionType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ux_Path"    # Ljava/lang/String;
    .param p3, "jsCallback"    # Lcom/tpad/ux/funlocker/JSCallback;
    .param p4, "flag"    # Lcom/tpad/ux/funlocker/ActionType;

    .prologue
    const/4 v1, 0x0

    .line 395
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v0, Lcom/tpad/ux/funlocker/RenderView$1;

    invoke-direct {v0, p0}, Lcom/tpad/ux/funlocker/RenderView$1;-><init>(Lcom/tpad/ux/funlocker/RenderView;)V

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->jsListener:Lcom/tpad/ux/funlocker/JSListener;

    .line 291
    new-instance v0, Lcom/tpad/ux/funlocker/RenderView$JSHandler;

    invoke-direct {v0, p0}, Lcom/tpad/ux/funlocker/RenderView$JSHandler;-><init>(Lcom/tpad/ux/funlocker/RenderView;)V

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->jsHandler:Lcom/tpad/ux/funlocker/RenderView$JSHandler;

    .line 328
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData1:Ljava/lang/String;

    .line 329
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData2:Ljava/lang/String;

    .line 330
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData3:Ljava/lang/String;

    .line 1662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView;->engine_raw:Z

    .line 396
    const/4 v0, 0x0

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    .line 397
    const/16 v0, 0x20

    iput v0, p0, Lcom/tpad/ux/funlocker/RenderView;->mEngineStartType:I

    .line 398
    new-instance v0, Lcom/tpad/ux/funlocker/UXObject;

    invoke-direct {v0, p2}, Lcom/tpad/ux/funlocker/UXObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    .line 399
    invoke-direct {p0, p1, p4, p3}, Lcom/tpad/ux/funlocker/RenderView;->init(Landroid/content/Context;Lcom/tpad/ux/funlocker/ActionType;Lcom/tpad/ux/funlocker/JSCallback;)V

    .line 401
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BLcom/tpad/ux/funlocker/JSCallback;Lcom/tpad/ux/funlocker/ActionType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uxbuffer"    # [B
    .param p3, "jsCallback"    # Lcom/tpad/ux/funlocker/JSCallback;
    .param p4, "flag"    # Lcom/tpad/ux/funlocker/ActionType;

    .prologue
    const/4 v1, 0x0

    .line 358
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v0, Lcom/tpad/ux/funlocker/RenderView$1;

    invoke-direct {v0, p0}, Lcom/tpad/ux/funlocker/RenderView$1;-><init>(Lcom/tpad/ux/funlocker/RenderView;)V

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->jsListener:Lcom/tpad/ux/funlocker/JSListener;

    .line 291
    new-instance v0, Lcom/tpad/ux/funlocker/RenderView$JSHandler;

    invoke-direct {v0, p0}, Lcom/tpad/ux/funlocker/RenderView$JSHandler;-><init>(Lcom/tpad/ux/funlocker/RenderView;)V

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->jsHandler:Lcom/tpad/ux/funlocker/RenderView$JSHandler;

    .line 328
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData1:Ljava/lang/String;

    .line 329
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData2:Ljava/lang/String;

    .line 330
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData3:Ljava/lang/String;

    .line 1662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView;->engine_raw:Z

    .line 359
    const/4 v0, 0x0

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    .line 360
    const/16 v0, 0x10

    iput v0, p0, Lcom/tpad/ux/funlocker/RenderView;->mEngineStartType:I

    .line 361
    new-instance v0, Lcom/tpad/ux/funlocker/UXObject;

    invoke-direct {v0, p2}, Lcom/tpad/ux/funlocker/UXObject;-><init>([B)V

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    .line 362
    invoke-direct {p0, p1, p4, p3}, Lcom/tpad/ux/funlocker/RenderView;->init(Landroid/content/Context;Lcom/tpad/ux/funlocker/ActionType;Lcom/tpad/ux/funlocker/JSCallback;)V

    .line 363
    return-void
.end method

.method public static CallBack(IIIIII)Ljava/lang/String;
    .locals 6
    .param p0, "eng"    # I
    .param p1, "ver"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "trans"    # I
    .param p5, "opengl"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1352
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v0, p2}, Lcom/tpad/ux/funlocker/UXObject;->setUx_width(I)V

    .line 1354
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v0, p3}, Lcom/tpad/ux/funlocker/UXObject;->setUx_height(I)V

    .line 1356
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v0, p4}, Lcom/tpad/ux/funlocker/UXObject;->setSupportTransparent(I)V

    .line 1358
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v0, p5}, Lcom/tpad/ux/funlocker/UXObject;->setSupport3D(I)V

    .line 1360
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0, p1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$14(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V

    .line 1362
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    .line 1363
    if-ne p4, v5, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1362
    :goto_0
    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$15(Lcom/tpad/ux/funlocker/RenderView$UXEngine;Landroid/graphics/Bitmap;)V

    .line 1365
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0, v4}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$16(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V

    .line 1366
    invoke-static {}, Lcom/tpad/ux/funlocker/RenderView;->ischeckMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1367
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {p2, p3}, Lcom/tpad/ux/funlocker/RenderView;->calcCutMode(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$17(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V

    .line 1371
    :goto_1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%d %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v3}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$7(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1372
    sget-object v3, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v3}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$8(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1371
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1363
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 1369
    :cond_1
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {p2, p3}, Lcom/tpad/ux/funlocker/RenderView;->calcCut(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$17(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V

    goto :goto_1
.end method

.method public static UXLaunch(ILjava/lang/String;)V
    .locals 2
    .param p0, "eng"    # I
    .param p1, "ret"    # Ljava/lang/String;

    .prologue
    .line 1329
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    iget-boolean v1, v1, Lcom/tpad/ux/funlocker/RenderView;->invalidate:Z

    if-nez v1, :cond_0

    .line 1337
    :goto_0
    return-void

    .line 1332
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v1, p0, p1}, Lcom/tpad/ux/funlocker/RenderView;->dispatchFunc(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1333
    :catch_0
    move-exception v0

    .line 1335
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->CURR_ACTION_RECEIVED_JS_INVOKED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tpad/ux/funlocker/RenderView;)Lcom/tpad/ux/funlocker/RenderView$JSHandler;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->jsHandler:Lcom/tpad/ux/funlocker/RenderView$JSHandler;

    return-object v0
.end method

.method static synthetic access$2()Lcom/tpad/ux/funlocker/RenderView$UXEngine;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tpad/ux/funlocker/RenderView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->refreshHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private analysEngineDirty(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dirty"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 525
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    const/4 v1, 0x1

    .line 528
    :goto_0
    return v1

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static calcCut(II)I
    .locals 13
    .param p0, "w"    # I
    .param p1, "h"    # I

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1383
    const/4 v3, 0x0

    .line 1384
    .local v3, "temp":I
    const/4 v4, 0x0

    .line 1385
    .local v4, "topSide":I
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/tpad/ux/funlocker/Utils;->GetScreenWidth(Landroid/content/Context;)I

    move-result v5

    .line 1386
    .local v5, "width":I
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/tpad/ux/funlocker/Utils;->GetScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 1387
    .local v0, "height":I
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/tpad/ux/funlocker/Utils;->getStatusBar(Landroid/content/Context;)I

    move-result v2

    .line 1389
    .local v2, "statusbarHeight":I
    const/4 v2, 0x0

    .line 1391
    if-le v5, v0, :cond_0

    .line 1392
    move v3, v5

    .line 1393
    move v5, v0

    .line 1394
    move v0, v3

    .line 1396
    :cond_0
    int-to-float v6, v5

    mul-float/2addr v6, v12

    int-to-float v7, p0

    div-float/2addr v6, v7

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    .line 1397
    int-to-float v6, v0

    mul-float/2addr v6, v12

    int-to-float v7, p1

    div-float/2addr v6, v7

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    .line 1399
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeVGA:[[J

    aget-object v6, v6, v10

    aget-wide v6, v6, v10

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1400
    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeVGA:[[J

    aget-object v8, v8, v10

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeVGA:[[J

    aget-object v8, v8, v11

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 1401
    int-to-float v6, p1

    int-to-float v7, v0

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v7, v2

    mul-float/2addr v7, v12

    .line 1402
    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    .line 1401
    add-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v4, v6, 0x2

    .line 1403
    sget v6, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    .line 1406
    :cond_1
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeWVGA:[[J

    aget-object v6, v6, v10

    aget-wide v6, v6, v10

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1407
    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeVGA:[[J

    aget-object v8, v8, v10

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeVGA:[[J

    aget-object v8, v8, v11

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 1408
    int-to-float v6, p1

    int-to-float v7, v0

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v7, v2

    mul-float/2addr v7, v12

    .line 1409
    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    .line 1408
    add-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v4, v6, 0x2

    .line 1410
    sget v6, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    .line 1413
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeA:[[J

    array-length v6, v6

    if-lt v1, v6, :cond_3

    .line 1424
    :goto_1
    const/4 v1, 0x0

    :goto_2
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeB:[[J

    array-length v6, v6

    if-lt v1, v6, :cond_5

    .line 1439
    :goto_3
    const/4 v1, 0x0

    :goto_4
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeC:[[J

    array-length v6, v6

    if-lt v1, v6, :cond_7

    .line 1454
    :goto_5
    rsub-int/lit8 v6, v4, 0x0

    return v6

    .line 1414
    :cond_3
    int-to-long v6, v5

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeA:[[J

    aget-object v8, v8, v1

    aget-wide v8, v8, v10

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1415
    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeA:[[J

    aget-object v8, v8, v1

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1416
    int-to-float v6, p1

    int-to-float v7, v0

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v7, v2

    .line 1417
    mul-float/2addr v7, v12

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    .line 1416
    add-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v4, v6, 0x2

    .line 1418
    sget v6, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    goto :goto_1

    .line 1413
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1425
    :cond_5
    int-to-long v6, v5

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeB:[[J

    aget-object v8, v8, v1

    aget-wide v8, v8, v10

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 1426
    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeB:[[J

    aget-object v8, v8, v1

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 1428
    int-to-float v6, p1

    int-to-float v7, v0

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v7, v2

    .line 1429
    mul-float/2addr v7, v12

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    .line 1428
    add-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v4, v6, 0x2

    .line 1431
    add-int/lit8 v4, v4, -0x14

    .line 1433
    sub-int v6, v0, v4

    int-to-float v6, v6

    mul-float/2addr v6, v12

    int-to-float v7, p1

    div-float/2addr v6, v7

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    goto :goto_3

    .line 1424
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1440
    :cond_7
    int-to-long v6, v5

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeC:[[J

    aget-object v8, v8, v1

    aget-wide v8, v8, v10

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    .line 1442
    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeC:[[J

    aget-object v8, v8, v1

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    .line 1444
    int-to-float v6, p1

    int-to-float v7, v0

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v7, v2

    .line 1445
    mul-float/2addr v7, v12

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    .line 1444
    add-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v4, v6, 0x2

    .line 1447
    add-int/lit8 v4, v4, 0xa

    .line 1448
    sget v6, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    goto/16 :goto_5

    .line 1439
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method

.method private static calcCutMode(II)I
    .locals 13
    .param p0, "w"    # I
    .param p1, "h"    # I

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1458
    const/4 v3, 0x0

    .line 1459
    .local v3, "temp":I
    const/4 v4, 0x0

    .line 1460
    .local v4, "topSide":I
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/tpad/ux/funlocker/Utils;->GetScreenWidth(Landroid/content/Context;)I

    move-result v5

    .line 1461
    .local v5, "width":I
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/tpad/ux/funlocker/Utils;->GetScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 1463
    .local v0, "height":I
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/tpad/ux/funlocker/Utils;->getStatusBar(Landroid/content/Context;)I

    move-result v2

    .line 1465
    .local v2, "statusbarHeight":I
    const/4 v2, 0x0

    .line 1467
    if-le v5, v0, :cond_0

    .line 1468
    move v3, v5

    .line 1469
    move v5, v0

    .line 1470
    move v0, v3

    .line 1472
    :cond_0
    int-to-float v6, v5

    mul-float/2addr v6, v12

    int-to-float v7, p0

    div-float/2addr v6, v7

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    .line 1473
    int-to-float v6, v0

    mul-float/2addr v6, v12

    int-to-float v7, p1

    div-float/2addr v6, v7

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    .line 1475
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeVGA:[[J

    aget-object v6, v6, v10

    aget-wide v6, v6, v10

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1476
    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeVGA:[[J

    aget-object v8, v8, v10

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeVGA:[[J

    aget-object v8, v8, v11

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 1477
    int-to-float v6, p1

    int-to-float v7, v0

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v7, v2

    mul-float/2addr v7, v12

    .line 1478
    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    .line 1477
    add-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v4, v6, 0x2

    .line 1479
    sget v6, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    .line 1482
    :cond_1
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeWVGA:[[J

    aget-object v6, v6, v10

    aget-wide v6, v6, v10

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1483
    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeVGA:[[J

    aget-object v8, v8, v10

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeVGA:[[J

    aget-object v8, v8, v11

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 1484
    int-to-float v6, p1

    int-to-float v7, v0

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v7, v2

    mul-float/2addr v7, v12

    .line 1485
    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    .line 1484
    add-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v4, v6, 0x2

    .line 1486
    sget v6, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    .line 1490
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->MScreeModeA:[[J

    array-length v6, v6

    if-lt v1, v6, :cond_3

    .line 1501
    :goto_1
    const/4 v1, 0x0

    :goto_2
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->MScreeModeB:[[J

    array-length v6, v6

    if-lt v1, v6, :cond_5

    .line 1511
    :goto_3
    const/4 v1, 0x0

    :goto_4
    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->MScreeModeC:[[J

    array-length v6, v6

    if-lt v1, v6, :cond_7

    .line 1523
    :goto_5
    rsub-int/lit8 v6, v4, 0x0

    return v6

    .line 1491
    :cond_3
    int-to-long v6, v5

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->MScreeModeA:[[J

    aget-object v8, v8, v1

    aget-wide v8, v8, v10

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1492
    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->MScreeModeA:[[J

    aget-object v8, v8, v1

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1493
    int-to-float v6, p1

    int-to-float v7, v0

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v7, v2

    .line 1494
    mul-float/2addr v7, v12

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    .line 1493
    add-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v4, v6, 0x2

    .line 1495
    sget v6, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    goto :goto_1

    .line 1490
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1502
    :cond_5
    int-to-long v6, v5

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->MScreeModeB:[[J

    aget-object v8, v8, v1

    aget-wide v8, v8, v10

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 1503
    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->MScreeModeB:[[J

    aget-object v8, v8, v1

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 1504
    int-to-float v6, p1

    int-to-float v7, v0

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 1505
    sget v6, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    goto :goto_3

    .line 1501
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1512
    :cond_7
    int-to-long v6, v5

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->MScreeModeC:[[J

    aget-object v8, v8, v1

    aget-wide v8, v8, v10

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    .line 1513
    int-to-long v6, v0

    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ScreeModeC:[[J

    aget-object v8, v8, v1

    aget-wide v8, v8, v11

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    .line 1514
    int-to-float v6, p1

    int-to-float v7, v0

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    int-to-float v7, v2

    .line 1515
    mul-float/2addr v7, v12

    sget v8, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v7, v8

    .line 1514
    add-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v4, v6, 0x2

    .line 1516
    add-int/lit8 v4, v4, 0xa

    .line 1517
    sget v6, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    sput v6, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    goto :goto_5

    .line 1511
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method

.method public static getObject(I)Ljava/lang/Object;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 1319
    const/4 v0, 0x0

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/tpad/ux/funlocker/ActionType;Lcom/tpad/ux/funlocker/JSCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # Lcom/tpad/ux/funlocker/ActionType;
    .param p3, "jsCallback"    # Lcom/tpad/ux/funlocker/JSCallback;

    .prologue
    .line 407
    sput-object p0, Lcom/tpad/ux/funlocker/RenderView;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    .line 408
    sput-object p1, Lcom/tpad/ux/funlocker/RenderView;->mContext:Landroid/content/Context;

    .line 409
    iput-object p3, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    .line 410
    invoke-virtual {p2}, Lcom/tpad/ux/funlocker/ActionType;->Value()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->CURR_ACTION_RECEIVED_JS_INVOKED:Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->jsListener:Lcom/tpad/ux/funlocker/JSListener;

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->mListener:Lcom/tpad/ux/funlocker/JSListener;

    .line 412
    invoke-static {}, Lcom/tpad/ux/funlocker/ExternalUtils;->initEngineCallback()V

    .line 413
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    .line 414
    new-instance v0, Lcom/tpad/ux/funlocker/RenderView$TimerClock;

    invoke-direct {v0, p0}, Lcom/tpad/ux/funlocker/RenderView$TimerClock;-><init>(Lcom/tpad/ux/funlocker/RenderView;)V

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->mTimerTask:Lcom/tpad/ux/funlocker/RenderView$TimerClock;

    .line 415
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->refreshHandler:Landroid/os/Handler;

    .line 416
    return-void
.end method

.method private invokedJS(Ljava/lang/String;I)I
    .locals 1
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "param"    # I

    .prologue
    .line 717
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 718
    const/4 v0, -0x1

    .line 719
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/tpad/ux/funlocker/ExternalUtils;->InvokeJS(ILjava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private invokedJS(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 702
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 703
    const/4 v0, -0x1

    .line 704
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/tpad/ux/funlocker/ExternalUtils;->InvokeJSWithString(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private isRefreshDirty(Ljava/lang/String;)Z
    .locals 9
    .param p1, "dirty"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 498
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "params":[Ljava/lang/String;
    aget-object v7, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 500
    .local v3, "x":I
    aget-object v7, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 501
    .local v4, "y":I
    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 502
    .local v2, "w":I
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 503
    .local v0, "h":I
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v5, v6

    .line 514
    :goto_0
    return v5

    .line 506
    :cond_1
    iget-object v6, p0, Lcom/tpad/ux/funlocker/RenderView;->dirtyRect:Landroid/graphics/Rect;

    if-nez v6, :cond_2

    .line 507
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v2

    add-int v8, v4, v0

    invoke-direct {v6, v3, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/tpad/ux/funlocker/RenderView;->dirtyRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 509
    :cond_2
    iget-object v6, p0, Lcom/tpad/ux/funlocker/RenderView;->dirtyRect:Landroid/graphics/Rect;

    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 510
    iget-object v6, p0, Lcom/tpad/ux/funlocker/RenderView;->dirtyRect:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->top:I

    .line 511
    iget-object v6, p0, Lcom/tpad/ux/funlocker/RenderView;->dirtyRect:Landroid/graphics/Rect;

    add-int v7, v3, v2

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 512
    iget-object v6, p0, Lcom/tpad/ux/funlocker/RenderView;->dirtyRect:Landroid/graphics/Rect;

    add-int v7, v4, v0

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public static ischeckMode()Z
    .locals 6

    .prologue
    .line 1560
    const/4 v2, 0x0

    .line 1561
    .local v2, "retb":Z
    const/4 v1, 0x0

    .line 1565
    .local v1, "retMode":I
    const/4 v0, 0x0

    .line 1567
    .local v0, "Ux_buffer":[B
    sget-object v3, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v3}, Lcom/tpad/ux/funlocker/UXObject;->getUx_buffer()[B

    move-result-object v3

    if-nez v3, :cond_0

    .line 1568
    sget-object v3, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v3}, Lcom/tpad/ux/funlocker/UXObject;->getUx_Path()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tpad/ux/funlocker/Utils;->getBytesFromUX(Ljava/lang/String;)[B

    move-result-object v0

    .line 1572
    :goto_0
    const/16 v3, 0x21f

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    const/16 v4, 0x220

    aget-byte v4, v0, v4

    shl-int/lit8 v4, v4, 0x10

    .line 1573
    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    .line 1572
    or-int/2addr v3, v4

    .line 1573
    const/16 v4, 0x221

    aget-byte v4, v0, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    .line 1572
    or-int/2addr v3, v4

    .line 1574
    const/16 v4, 0x222

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 1572
    or-int v1, v3, v4

    .line 1575
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1576
    const/4 v2, 0x1

    .line 1580
    :goto_1
    return v2

    .line 1570
    :cond_0
    sget-object v3, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v3}, Lcom/tpad/ux/funlocker/UXObject;->getUx_buffer()[B

    move-result-object v0

    goto :goto_0

    .line 1578
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private registerAction()V
    .locals 3

    .prologue
    .line 422
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->invokedReceiver:Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;

    if-nez v1, :cond_0

    .line 423
    new-instance v1, Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;

    invoke-direct {v1, p0}, Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;-><init>(Lcom/tpad/ux/funlocker/RenderView;)V

    iput-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->invokedReceiver:Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;

    .line 424
    new-instance v0, Landroid/content/IntentFilter;

    .line 425
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->CURR_ACTION_RECEIVED_JS_INVOKED:Ljava/lang/String;

    .line 424
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tpad/ux/funlocker/RenderView;->invokedReceiver:Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releaseBitmap()V
    .locals 2

    .prologue
    .line 442
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$2(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$2(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$2(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 444
    const-string v0, "RenderView"

    const-string v1, "release bitmap success !!!"

    invoke-static {v0, v1}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_0
    return-void
.end method

.method private releaseData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    if-eqz v0, :cond_0

    .line 453
    sput-object v1, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    .line 454
    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-eqz v0, :cond_1

    .line 455
    sput-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    .line 456
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 457
    return-void
.end method

.method private varargs splicingString([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p1, "integers"    # [Ljava/lang/Integer;

    .prologue
    .line 482
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 483
    .local v1, "sb":Ljava/lang/StringBuffer;
    if-nez p1, :cond_0

    .line 484
    const/4 v2, 0x0

    .line 488
    :goto_0
    return-object v2

    .line 485
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 488
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 486
    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private varargs splicingString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 466
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 467
    .local v1, "sb":Ljava/lang/StringBuffer;
    if-nez p1, :cond_0

    .line 468
    const/4 v2, 0x0

    .line 472
    :goto_0
    return-object v2

    .line 469
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 472
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 470
    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private unregisterAction()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->invokedReceiver:Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;

    if-eqz v0, :cond_0

    .line 435
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->invokedReceiver:Lcom/tpad/ux/funlocker/RenderView$JS_InvokedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 436
    :cond_0
    return-void
.end method


# virtual methods
.method protected DebugView(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 590
    iget-object v3, p0, Lcom/tpad/ux/funlocker/RenderView;->DebugInfos:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 591
    iget-object v3, p0, Lcom/tpad/ux/funlocker/RenderView;->DebugInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 593
    .local v1, "debugSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 598
    .end local v1    # "debugSize":I
    .end local v2    # "index":I
    :cond_0
    return-void

    .line 594
    .restart local v1    # "debugSize":I
    .restart local v2    # "index":I
    :cond_1
    iget-object v3, p0, Lcom/tpad/ux/funlocker/RenderView;->DebugInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 595
    .local v0, "debugInfo":Ljava/lang/String;
    const/high16 v3, 0x41a00000    # 20.0f

    add-int/lit8 v4, v2, 0x1

    mul-int/lit8 v4, v4, 0x28

    int-to-float v4, v4

    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected JS_CallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 687
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 688
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 689
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 690
    return-void
.end method

.method protected JS_Debug(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentValue"    # Ljava/lang/String;

    .prologue
    .line 566
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->DebugInfos:Ljava/util/List;

    if-nez v1, :cond_0

    .line 567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->DebugInfos:Ljava/util/List;

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->debugPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 569
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->debugPaint:Landroid/graphics/Paint;

    .line 570
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->debugPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 571
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->debugPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 573
    :cond_1
    if-eqz p1, :cond_2

    .line 574
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->DebugInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 575
    .local v0, "debugSize":I
    const/16 v1, 0xf

    if-ge v0, v1, :cond_3

    .line 576
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->DebugInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    .end local v0    # "debugSize":I
    :cond_2
    :goto_0
    return-void

    .line 578
    .restart local v0    # "debugSize":I
    :cond_3
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->DebugInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 579
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->DebugInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected JS_SaveData1(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 538
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData1:Ljava/lang/String;

    .line 539
    return-void
.end method

.method protected JS_SaveData2(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 547
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData2:Ljava/lang/String;

    .line 548
    return-void
.end method

.method protected JS_SaveData3(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 556
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData3:Ljava/lang/String;

    .line 557
    return-void
.end method

.method protected dispatchFunc(ILjava/lang/String;)V
    .locals 11
    .param p1, "eng"    # I
    .param p2, "ret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 609
    sget-object v5, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v5}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 676
    new-instance v5, Ljava/lang/Exception;

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 677
    const-string v7, "UX-VERSION [ %d ]   JS-Invoked Error!!!"

    new-array v8, v9, [Ljava/lang/Object;

    sget-object v9, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v9}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 676
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 612
    :pswitch_0
    const-string v5, "debug"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 613
    if-nez p2, :cond_1

    const-string v0, ""

    .line 615
    .local v0, "Value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tpad/ux/funlocker/RenderView;->JS_Debug(Ljava/lang/String;)V

    .line 679
    .end local v0    # "Value":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 614
    :cond_1
    const-string v5, "["

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "]"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 613
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 616
    :cond_2
    const-string v5, "http://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 617
    invoke-virtual {p0, p2}, Lcom/tpad/ux/funlocker/RenderView;->JS_CallBack(Ljava/lang/String;)V

    goto :goto_1

    .line 618
    :cond_3
    const-string v5, "thirdmarket:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 619
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    if-eqz v5, :cond_0

    .line 620
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    const-string v6, "thirdmarket:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-interface {v5, v6}, Lcom/tpad/ux/funlocker/JSCallback;->JS_StartThirdApp(Ljava/lang/String;)V

    goto :goto_1

    .line 621
    :cond_4
    const-string v5, "setValue"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 622
    if-nez p2, :cond_5

    .line 624
    .restart local v0    # "Value":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v5, "RenderView"

    .line 626
    const-string v6, "saveData1[%s],saveData2[%s],saveData3[%s]"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData1:Ljava/lang/String;

    aput-object v8, v7, v10

    .line 627
    iget-object v8, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData2:Ljava/lang/String;

    aput-object v8, v7, v9

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData3:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 625
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 629
    iget-object v6, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 630
    iget-object v6, p0, Lcom/tpad/ux/funlocker/RenderView;->saveData3:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    if-eqz v5, :cond_0

    .line 632
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/tpad/ux/funlocker/JSCallback;->JS_SavedValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 623
    .end local v0    # "Value":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_5
    const-string v5, "["

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "]"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 622
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 634
    :cond_6
    const-string v5, "setDataCount"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 635
    if-nez p2, :cond_7

    .line 637
    .restart local v0    # "Value":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/tpad/ux/funlocker/RenderView;->JS_SaveData1(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 636
    .end local v0    # "Value":Ljava/lang/String;
    :cond_7
    const-string v5, "["

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "]"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 635
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 638
    :cond_8
    const-string v5, "saveDataOne"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 639
    if-nez p2, :cond_9

    .line 641
    .restart local v0    # "Value":Ljava/lang/String;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/tpad/ux/funlocker/RenderView;->JS_SaveData2(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 640
    .end local v0    # "Value":Ljava/lang/String;
    :cond_9
    const-string v5, "["

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "]"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 639
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 642
    :cond_a
    const-string v5, "saveDataTwo"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 643
    if-nez p2, :cond_b

    .line 645
    .restart local v0    # "Value":Ljava/lang/String;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/tpad/ux/funlocker/RenderView;->JS_SaveData3(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 644
    .end local v0    # "Value":Ljava/lang/String;
    :cond_b
    const-string v5, "["

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "]"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 643
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 647
    :cond_c
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    if-eqz v5, :cond_0

    .line 648
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    invoke-interface {v5, p2}, Lcom/tpad/ux/funlocker/JSCallback;->JS_StartCommonFunc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 652
    :pswitch_1
    if-nez p2, :cond_d

    const-string v1, ""

    .line 654
    .local v1, "contentValue":Ljava/lang/String;
    :goto_6
    const-string v5, "RenderView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ContentValue:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v5, "setValue"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 656
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    if-eqz v5, :cond_0

    .line 657
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    invoke-interface {v5, v1}, Lcom/tpad/ux/funlocker/JSCallback;->JS_SavedValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 653
    .end local v1    # "contentValue":Ljava/lang/String;
    :cond_d
    const-string v5, "["

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "]"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 652
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 658
    .restart local v1    # "contentValue":Ljava/lang/String;
    :cond_e
    const-string v5, "startBrowser"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 659
    invoke-virtual {p0, v1}, Lcom/tpad/ux/funlocker/RenderView;->JS_CallBack(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 660
    :cond_f
    const-string v5, "startThirdApp"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 661
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    if-eqz v5, :cond_0

    .line 662
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    invoke-interface {v5, v1}, Lcom/tpad/ux/funlocker/JSCallback;->JS_StartThirdApp(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 663
    :cond_10
    const-string v5, "startCommonFunc"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 664
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    if-eqz v5, :cond_0

    .line 665
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    invoke-interface {v5, v1}, Lcom/tpad/ux/funlocker/JSCallback;->JS_StartCommonFunc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 666
    :cond_11
    const-string v5, "debug"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 667
    invoke-virtual {p0, v1}, Lcom/tpad/ux/funlocker/RenderView;->JS_Debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 668
    :cond_12
    const-string v5, "playMedia"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 669
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v10

    .line 670
    .local v2, "mediaPath":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 671
    .local v4, "type":I
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    if-eqz v5, :cond_0

    .line 672
    iget-object v5, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    invoke-interface {v5, v2, v4}, Lcom/tpad/ux/funlocker/JSCallback;->JS_PlayMedia(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRendViewBottom()F
    .locals 2

    .prologue
    .line 1688
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    .line 1689
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 1690
    .local v0, "value":[F
    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1692
    const/4 v1, 0x5

    aget v1, v0, v1

    .line 1694
    .end local v0    # "value":[F
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUXEngine()Lcom/tpad/ux/funlocker/RenderView$UXEngine;
    .locals 1

    .prologue
    .line 1147
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    return-object v0
.end method

.method public getUXHeight()I
    .locals 1

    .prologue
    .line 1120
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/UXObject;->getUx_height()I

    move-result v0

    goto :goto_0
.end method

.method public getUXObject()Lcom/tpad/ux/funlocker/UXObject;
    .locals 1

    .prologue
    .line 1156
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    return-object v0
.end method

.method public getUXOpenGL()I
    .locals 1

    .prologue
    .line 1129
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/UXObject;->getSupport3D()I

    move-result v0

    goto :goto_0
.end method

.method public getUXTransparent()I
    .locals 1

    .prologue
    .line 1138
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/UXObject;->getSupportTransparent()I

    move-result v0

    goto :goto_0
.end method

.method public getUXWidth()I
    .locals 1

    .prologue
    .line 1111
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/UXObject;->getUx_width()I

    move-result v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 1527
    iget-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView;->invalidate:Z

    if-nez v0, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return v1

    .line 1529
    :cond_1
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$0(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    invoke-virtual {p0}, Lcom/tpad/ux/funlocker/RenderView;->invalidate()V

    goto :goto_0
.end method

.method public mute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 820
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mEngine is null!!!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 831
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 832
    const-string v2, "UX-VERSION [ %d ]   JS-Invoked Error!!!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v4}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 831
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :pswitch_0
    const-string v0, "NotifyTouch"

    const/high16 v1, 0x21000000

    invoke-direct {p0, v0, v1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    .line 834
    :goto_0
    return-void

    .line 828
    :pswitch_1
    const-string v0, "NotifyUXMute"

    invoke-direct {p0, v0, v5}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    goto :goto_0

    .line 822
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1214
    iget-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView;->invalidate:Z

    if-nez v0, :cond_0

    .line 1235
    :goto_0
    return-void

    .line 1216
    :cond_0
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1219
    iget-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView;->engine_raw:Z

    if-eqz v0, :cond_1

    .line 1220
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v1

    .line 1221
    sget-object v2, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v2}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$2(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1220
    invoke-static {v1, v2}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineRender(ILandroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$10(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V

    .line 1222
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->mEngineCallBack:Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;

    if-eqz v0, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->mEngineCallBack:Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;

    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-interface {v0, v1}, Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;->callback(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)V

    .line 1225
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tpad/ux/funlocker/RenderView;->renderView(Landroid/graphics/Canvas;)V

    .line 1226
    invoke-virtual {p0, p1}, Lcom/tpad/ux/funlocker/RenderView;->DebugView(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 1295
    iget-boolean v2, p0, Lcom/tpad/ux/funlocker/RenderView;->invalidate:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/tpad/ux/funlocker/RenderView;->engine_raw:Z

    if-nez v2, :cond_1

    .line 1296
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1315
    :goto_0
    return v5

    .line 1301
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v3, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/tpad/ux/funlocker/RenderView;->Touch_x:I

    .line 1302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lcom/tpad/ux/funlocker/RenderView;->mMatrixDy:F

    sub-float/2addr v2, v3

    sget v3, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    div-float/2addr v2, v3

    sget-object v3, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v3}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$8(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/tpad/ux/funlocker/RenderView;->Touch_y:I

    .line 1303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1304
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1305
    .local v1, "pointerCount":I
    if-nez v0, :cond_2

    .line 1306
    iput-boolean v5, p0, Lcom/tpad/ux/funlocker/RenderView;->transmitFlag:Z

    .line 1307
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1308
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tpad/ux/funlocker/RenderView;->transmitFlag:Z

    .line 1309
    :cond_3
    iget-boolean v2, p0, Lcom/tpad/ux/funlocker/RenderView;->transmitFlag:Z

    if-nez v2, :cond_4

    if-ne v0, v5, :cond_5

    .line 1310
    :cond_4
    sget-object v2, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v2}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v2

    iget v3, p0, Lcom/tpad/ux/funlocker/RenderView;->Touch_x:I

    iget v4, p0, Lcom/tpad/ux/funlocker/RenderView;->Touch_y:I

    invoke-static {v2, v3, v4, v0}, Lcom/tpad/ux/funlocker/ExternalUtils;->EnginePushTPEvent(IIII)V

    .line 1312
    :cond_5
    iget-object v2, p0, Lcom/tpad/ux/funlocker/RenderView;->mTouchListener:Lcom/tpad/ux/funlocker/RenderView$TouchListener;

    if-eqz v2, :cond_6

    .line 1313
    iget-object v2, p0, Lcom/tpad/ux/funlocker/RenderView;->mTouchListener:Lcom/tpad/ux/funlocker/RenderView$TouchListener;

    invoke-interface {v2, p1}, Lcom/tpad/ux/funlocker/RenderView$TouchListener;->onTouch(Landroid/view/MotionEvent;)V

    .line 1314
    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public readFile(Ljava/lang/String;)[B
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1585
    :try_start_0
    sget-object v4, Lcom/tpad/ux/funlocker/RenderView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 1586
    .local v2, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 1587
    .local v3, "length":I
    new-array v0, v3, [B

    .line 1588
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 1589
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    .end local v0    # "buffer":[B
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "length":I
    :goto_0
    return-object v0

    .line 1591
    :catch_0
    move-exception v1

    .line 1592
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1593
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected renderBitmap()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1264
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1265
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$11(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1266
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    .line 1267
    sget-object v2, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v2}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v2

    sget-object v3, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v3}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$2(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1266
    invoke-static {v2, v3}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineRenderArea(ILandroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$12(Lcom/tpad/ux/funlocker/RenderView$UXEngine;Ljava/lang/String;)V

    .line 1269
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$13(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1270
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$13(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tpad/ux/funlocker/RenderView;->analysEngineDirty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1271
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$13(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tpad/ux/funlocker/RenderView;->isRefreshDirty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1287
    :goto_0
    return v0

    .line 1271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1273
    :cond_1
    const-string v1, "RenderView"

    sget-object v2, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v2}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$13(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1277
    :cond_2
    const-string v1, "RenderView"

    const-string v2, "UXEngine DirtyRenderRet is null !!!"

    invoke-static {v1, v2}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1281
    :cond_3
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    .line 1282
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v1

    sget-object v2, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v2}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$2(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1281
    invoke-static {v1, v2}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineRender(ILandroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$10(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V

    .line 1283
    const/4 v0, 0x2

    goto :goto_0

    .line 1286
    :cond_4
    const-string v1, "RenderView"

    const-string v2, "UXEngine Start Error !!!! "

    invoke-static {v1, v2}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected renderView(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 1253
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$2(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1255
    :cond_0
    return-void
.end method

.method public resetMatrix()V
    .locals 3

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1674
    const/4 v0, 0x0

    sput v0, Lcom/tpad/ux/funlocker/RenderView;->mMatrixDy:F

    .line 1675
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    sget v1, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    sget v2, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1677
    :cond_0
    return-void
.end method

.method public resetView()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 843
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 857
    :goto_0
    return-void

    .line 845
    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 854
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 855
    const-string v2, "UX-VERSION [ %d ]   JS-Invoked Error!!!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v4}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 854
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :pswitch_0
    const-string v0, "NotifyTouch"

    const/high16 v1, 0x19000000

    invoke-direct {p0, v0, v1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    goto :goto_0

    .line 851
    :pswitch_1
    const-string v0, "NotifyUXReset"

    invoke-direct {p0, v0, v5}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    goto :goto_0

    .line 845
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public restoreValue(Ljava/lang/String;)V
    .locals 11
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 963
    sget-object v5, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v5, :cond_0

    .line 964
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "mEngine is null!!!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 965
    :cond_0
    if-eqz p1, :cond_1

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 966
    const/4 v3, 0x0

    .line 967
    .local v3, "values":[Ljava/lang/String;
    sget-object v5, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v5}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1004
    new-instance v5, Ljava/lang/Exception;

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 1005
    const-string v7, "UX-VERSION [ %d ]   JS-Invoked Error!!!"

    new-array v8, v8, [Ljava/lang/Object;

    .line 1006
    sget-object v9, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v9}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 1004
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 971
    :pswitch_0
    :try_start_0
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 972
    const/4 v5, 0x0

    aget-object v4, v3, v5

    .line 974
    .local v4, "vas":Ljava/lang/String;
    sget-object v5, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v5}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v5

    invoke-static {v5, v4}, Lcom/tpad/ux/funlocker/ExternalUtils;->RestoreVlaue(ILjava/lang/String;)I

    .line 975
    const/4 v5, 0x1

    aget-object v5, v3, v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, "das":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 977
    const-string v5, "RenderView"

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 978
    const-string v7, "value1[%s],value2[%s],value3[%s]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v0, v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 979
    const/4 v10, 0x1

    aget-object v10, v0, v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    aget-object v10, v0, v10

    aput-object v10, v8, v9

    .line 977
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v5, "NotifySetCount"

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    .line 981
    const-string v5, "NotifySetDataOne"

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    .line 982
    const-string v5, "NotifySetDataTwo"

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    .end local v0    # "das":[Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    .end local v4    # "vas":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 984
    .restart local v3    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 985
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "RenderView"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :try_start_1
    sget-object v5, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v5}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v5

    invoke-static {v5, p1}, Lcom/tpad/ux/funlocker/ExternalUtils;->RestoreVlaue(ILjava/lang/String;)I

    .line 988
    const-string v5, "NotifySetCount"

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    .line 989
    const-string v5, "NotifySetDataOne"

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    .line 990
    const-string v5, "NotifySetDataTwo"

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 991
    :catch_1
    move-exception v2

    .line 992
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "RenderView"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 998
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ex":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    const-string v5, "NotifyRecord"

    invoke-direct {p0, v5, p1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 999
    :catch_2
    move-exception v1

    .line 1000
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "RenderView"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 967
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public restoreValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "d1"    # Ljava/lang/String;
    .param p3, "d2"    # Ljava/lang/String;
    .param p4, "d3"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1024
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v1, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 1027
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1045
    const-string v1, "RenderView"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 1046
    const-string v3, "UX-VERSION [ %d ]   JS-Invoked Error!!!"

    new-array v4, v4, [Ljava/lang/Object;

    .line 1047
    sget-object v5, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v5}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1045
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    :pswitch_0
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v1

    invoke-static {v1, p1}, Lcom/tpad/ux/funlocker/ExternalUtils;->RestoreVlaue(ILjava/lang/String;)I

    .line 1031
    const-string v1, "NotifySetCount"

    invoke-direct {p0, v1, p2}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const-string v1, "NotifySetDataOne"

    invoke-direct {p0, v1, p3}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const-string v1, "NotifySetDataTwo"

    invoke-direct {p0, v1, p4}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1036
    :pswitch_1
    const/4 v0, 0x0

    .line 1037
    .local v0, "values":[Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1038
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1039
    :cond_2
    if-eqz v0, :cond_0

    .line 1040
    const-string v1, "NotifyRecord"

    .line 1041
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aget-object v3, v0, v6

    aput-object v3, v2, v6

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    aget-object v3, v0, v5

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Lcom/tpad/ux/funlocker/RenderView;->splicingString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1040
    invoke-direct {p0, v1, v2}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBlowWheat(I)V
    .locals 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1628
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 1629
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mEngine is null!!!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1631
    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1640
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 1641
    const-string v2, "UX-VERSION [ %d ]   JS-Invoked Error!!!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v5}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1640
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1634
    :pswitch_0
    const-string v0, "NotifyBlowWheat"

    invoke-direct {p0, v0, p1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    .line 1643
    :goto_0
    return-void

    .line 1637
    :pswitch_1
    const-string v0, "NotifyBlowWheat"

    invoke-direct {p0, v0, p1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    goto :goto_0

    .line 1631
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCountOfCallAndSms(II)V
    .locals 6
    .param p1, "unread"    # I
    .param p2, "missed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 935
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 936
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mEngine is null!!!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 947
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 948
    const-string v2, "UX-VERSION [ %d ]   JS-Invoked Error!!!"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v4}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 947
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/tpad/ux/funlocker/RenderView;->setUnreadSmsCount(I)V

    .line 941
    invoke-virtual {p0, p2}, Lcom/tpad/ux/funlocker/RenderView;->setMissedCallCount(I)V

    .line 950
    :goto_0
    return-void

    .line 944
    :pswitch_1
    const-string v0, "NotifyMailAndCall"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lcom/tpad/ux/funlocker/RenderView;->splicingString([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 937
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEngineCallBack(Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;)V
    .locals 0
    .param p1, "engineCallBack"    # Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView;->mEngineCallBack:Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;

    .line 747
    return-void
.end method

.method public setJSCallback(Lcom/tpad/ux/funlocker/JSCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/tpad/ux/funlocker/JSCallback;

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/tpad/ux/funlocker/RenderView;->registerAction()V

    .line 756
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView;->mJSCallback:Lcom/tpad/ux/funlocker/JSCallback;

    .line 757
    return-void
.end method

.method public setLogState(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 737
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineSetLogLevel(II)V

    .line 738
    return-void

    .line 737
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMatrix(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1667
    sget v0, Lcom/tpad/ux/funlocker/RenderView;->mMatrixDy:F

    add-float/2addr v0, p2

    sput v0, Lcom/tpad/ux/funlocker/RenderView;->mMatrixDy:F

    .line 1669
    :cond_0
    return-void
.end method

.method public setMissedCallCount(I)V
    .locals 3
    .param p1, "missedCallCount"    # I

    .prologue
    .line 914
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 921
    :goto_0
    return-void

    .line 917
    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 918
    const-string v2, " 31"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 917
    invoke-static {v0, v1}, Lcom/tpad/ux/funlocker/ExternalUtils;->UpdateInfo(ILjava/lang/String;)I

    .line 920
    const-string v0, "NotifySetPhone"

    invoke-direct {p0, v0, p1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    goto :goto_0
.end method

.method public setModeData(Ljava/lang/String;)V
    .locals 6
    .param p1, "modedata"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1543
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 1544
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mEngine is null!!!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1545
    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1554
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 1555
    const-string v2, "UX-VERSION [ %d ]   JS-Invoked Error!!!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v5}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1554
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1548
    :pswitch_0
    const-string v0, "NotifySetModeData"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    .line 1557
    :goto_0
    return-void

    .line 1551
    :pswitch_1
    const-string v0, "NotifySetModeData"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    goto :goto_0

    .line 1545
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setNotifyLanguage(I)V
    .locals 6
    .param p1, "modedata"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1646
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 1647
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mEngine is null!!!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1648
    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1657
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 1658
    const-string v2, "UX-VERSION [ %d ]   JS-Invoked Error!!!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v5}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1657
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1651
    :pswitch_0
    const-string v0, "NotifyLanguage"

    invoke-direct {p0, v0, p1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    .line 1660
    :goto_0
    return-void

    .line 1654
    :pswitch_1
    const-string v0, "NotifyLanguage"

    invoke-direct {p0, v0, p1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    goto :goto_0

    .line 1648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPlayPhoto(Ljava/lang/String;)V
    .locals 7
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 1601
    const/4 v5, 0x0

    .line 1602
    .local v5, "buff":[B
    sget-object v0, Lcom/tpad/ux/funlocker/Elmtype;->UI_ELMTYPE_IMAGE_JPEG:Lcom/tpad/ux/funlocker/Elmtype;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/Elmtype;->Value()I

    move-result v4

    .line 1603
    .local v4, "pictype":I
    if-nez p1, :cond_4

    const-string v6, ""

    .line 1605
    .local v6, "Value":Ljava/lang/String;
    :goto_0
    const-string v0, "jpg"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "JPG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1606
    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/Elmtype;->UI_ELMTYPE_IMAGE_JPEG:Lcom/tpad/ux/funlocker/Elmtype;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/Elmtype;->Value()I

    move-result v4

    .line 1614
    :goto_1
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mContext:Landroid/content/Context;

    const-string v1, "general_curr_diy_img.jpg"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1615
    const-string v0, "general_curr_diy_img.jpg"

    invoke-virtual {p0, v0}, Lcom/tpad/ux/funlocker/RenderView;->readFile(Ljava/lang/String;)[B

    move-result-object v5

    .line 1617
    :cond_1
    if-nez v5, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1618
    invoke-static {p1}, Lcom/tpad/ux/funlocker/Utils;->getBytesFromUX(Ljava/lang/String;)[B

    move-result-object v5

    .line 1621
    :cond_2
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    .line 1622
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    const/4 v1, -0x1

    .line 1623
    sget-object v2, Lcom/tpad/ux/funlocker/Sntype;->UI_SNTYPE_IMAGE:Lcom/tpad/ux/funlocker/Sntype;

    invoke-virtual {v2}, Lcom/tpad/ux/funlocker/Sntype;->Value()I

    move-result v2

    const/16 v3, 0x21fc

    .line 1622
    invoke-static/range {v0 .. v5}, Lcom/tpad/ux/funlocker/ExternalUtils;->SetElmData(IIIII[B)I

    .line 1625
    :cond_3
    return-void

    .line 1604
    .end local v6    # "Value":Ljava/lang/String;
    :cond_4
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1603
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1607
    .restart local v6    # "Value":Ljava/lang/String;
    :cond_5
    const-string v0, "png"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "PNG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1608
    :cond_6
    sget-object v0, Lcom/tpad/ux/funlocker/Elmtype;->UI_ELMTYPE_IMAGE_PNG:Lcom/tpad/ux/funlocker/Elmtype;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/Elmtype;->Value()I

    move-result v4

    .line 1609
    goto :goto_1

    :cond_7
    const-string v0, "gif"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "GIF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1610
    :cond_8
    sget-object v0, Lcom/tpad/ux/funlocker/Elmtype;->UI_ELMTYPE_IMAGE_GIF:Lcom/tpad/ux/funlocker/Elmtype;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/Elmtype;->Value()I

    move-result v4

    .line 1611
    goto/16 :goto_1

    .line 1612
    :cond_9
    sget-object v0, Lcom/tpad/ux/funlocker/Elmtype;->UI_ELMTYPE_IMAGE_JPEG:Lcom/tpad/ux/funlocker/Elmtype;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/Elmtype;->Value()I

    move-result v4

    goto/16 :goto_1
.end method

.method public setRenderPause()V
    .locals 1

    .prologue
    .line 1680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView;->engine_raw:Z

    .line 1681
    return-void
.end method

.method public setRenderResume()V
    .locals 1

    .prologue
    .line 1684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView;->engine_raw:Z

    .line 1685
    return-void
.end method

.method public setRenderScale(FF)V
    .locals 3
    .param p1, "scale_w"    # F
    .param p2, "scale_h"    # F

    .prologue
    .line 767
    sput p1, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    .line 769
    sput p2, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    .line 771
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    sget v1, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    sget v2, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 772
    return-void
.end method

.method public setRenderState(Lcom/tpad/ux/funlocker/RenderCondition;)V
    .locals 3
    .param p1, "state"    # Lcom/tpad/ux/funlocker/RenderCondition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 793
    invoke-static {}, Lcom/tpad/ux/funlocker/RenderView;->$SWITCH_TABLE$com$tpad$ux$funlocker$RenderCondition()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/tpad/ux/funlocker/RenderCondition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 811
    :goto_0
    return-void

    .line 795
    :pswitch_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$6(Lcom/tpad/ux/funlocker/RenderView$UXEngine;Z)V

    goto :goto_0

    .line 798
    :pswitch_1
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0, v2}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$6(Lcom/tpad/ux/funlocker/RenderView$UXEngine;Z)V

    goto :goto_0

    .line 801
    :pswitch_2
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0, v2}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$6(Lcom/tpad/ux/funlocker/RenderView$UXEngine;Z)V

    .line 802
    iput-boolean v2, p0, Lcom/tpad/ux/funlocker/RenderView;->invalidate:Z

    .line 804
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    invoke-static {v0}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineExit(I)V

    .line 805
    invoke-direct {p0}, Lcom/tpad/ux/funlocker/RenderView;->releaseBitmap()V

    goto :goto_0

    .line 793
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTouchListener(Lcom/tpad/ux/funlocker/RenderView$TouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tpad/ux/funlocker/RenderView$TouchListener;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/tpad/ux/funlocker/RenderView;->mTouchListener:Lcom/tpad/ux/funlocker/RenderView$TouchListener;

    .line 729
    return-void
.end method

.method public setUnreadSmsCount(I)V
    .locals 3
    .param p1, "unReadSmsCount"    # I

    .prologue
    .line 899
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 906
    :goto_0
    return-void

    .line 902
    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 903
    const-string v2, " 32"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 902
    invoke-static {v0, v1}, Lcom/tpad/ux/funlocker/ExternalUtils;->UpdateInfo(ILjava/lang/String;)I

    .line 905
    const-string v0, "NotifySetMail"

    invoke-direct {p0, v0, p1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    goto :goto_0
.end method

.method public shakeView(III)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "shake"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 872
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 874
    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 888
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 889
    const-string v2, "UX-VERSION [ %d ]   JS-Invoked Error!!!"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v4}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 888
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :pswitch_0
    const-string v0, "AnalyzeData"

    shl-int/lit8 v1, p2, 0xc

    or-int/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    .line 878
    if-ne p3, v3, :cond_1

    .line 879
    const-string v0, "NotifySnake"

    invoke-direct {p0, v0, v5}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    .line 880
    const-string v0, "NotifyTouch"

    const/high16 v1, -0x38000000    # -131072.0f

    invoke-direct {p0, v0, v1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    .line 882
    :cond_1
    const-string v0, "NotifyUXShake"

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Lcom/tpad/ux/funlocker/RenderView;->splicingString([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 885
    :pswitch_1
    const-string v0, "NotifyUXShake"

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Lcom/tpad/ux/funlocker/RenderView;->splicingString([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 874
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startEngine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 1188
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 1189
    new-instance v0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-direct {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;-><init>()V

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    .line 1191
    :cond_0
    iget v0, p0, Lcom/tpad/ux/funlocker/RenderView;->mEngineStartType:I

    sparse-switch v0, :sswitch_data_0

    .line 1204
    :goto_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1205
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Engine Start Error!!!!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1193
    :sswitch_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    .line 1194
    invoke-virtual {v1}, Lcom/tpad/ux/funlocker/UXObject;->getUx_buffer()[B

    move-result-object v1

    const-string v2, "123456789012345"

    sget-object v3, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v3}, Lcom/tpad/ux/funlocker/UXObject;->getEnc_type()Lcom/tpad/ux/funlocker/EncType;

    move-result-object v3

    .line 1195
    invoke-virtual {v3}, Lcom/tpad/ux/funlocker/EncType;->Value()I

    move-result v3

    .line 1193
    invoke-static {v1, v2, v3, v4}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineStartFromBuffer([BLjava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$9(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V

    goto :goto_0

    .line 1198
    :sswitch_1
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    .line 1199
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v1}, Lcom/tpad/ux/funlocker/UXObject;->getUx_Path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "123456789012345"

    sget-object v3, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    .line 1200
    invoke-virtual {v3}, Lcom/tpad/ux/funlocker/UXObject;->getEnc_type()Lcom/tpad/ux/funlocker/EncType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tpad/ux/funlocker/EncType;->Value()I

    move-result v3

    .line 1198
    invoke-static {v1, v2, v3, v4}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineStart(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$9(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V

    goto :goto_0

    .line 1206
    :cond_1
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1207
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->matrix:Landroid/graphics/Matrix;

    sget v1, Lcom/tpad/ux/funlocker/RenderView;->w_scale:F

    sget v2, Lcom/tpad/ux/funlocker/RenderView;->h_scale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpad/ux/funlocker/RenderView;->invalidate:Z

    .line 1209
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->mTimerTask:Lcom/tpad/ux/funlocker/RenderView$TimerClock;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/RenderView$TimerClock;->start()V

    .line 1210
    return-void

    .line 1191
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public startEngine(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)V
    .locals 11
    .param p1, "uxEngine"    # Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    .prologue
    const/4 v9, 0x1

    .line 1168
    sput-object p1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    .line 1169
    sget-object v10, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$7(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    .line 1170
    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$8(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v1

    sget-object v2, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v2}, Lcom/tpad/ux/funlocker/UXObject;->getUx_width()I

    move-result v2

    .line 1171
    sget-object v3, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v3}, Lcom/tpad/ux/funlocker/UXObject;->getUx_height()I

    move-result v3

    sget-object v4, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v4}, Lcom/tpad/ux/funlocker/UXObject;->getUx_buffer()[B

    move-result-object v4

    .line 1172
    const-string v5, "123456789012345"

    sget-object v6, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v6}, Lcom/tpad/ux/funlocker/UXObject;->getEnc_type()Lcom/tpad/ux/funlocker/EncType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tpad/ux/funlocker/EncType;->Value()I

    move-result v6

    const/4 v7, 0x2

    .line 1173
    sget-object v8, Lcom/tpad/ux/funlocker/RenderView;->ux_object:Lcom/tpad/ux/funlocker/UXObject;

    invoke-virtual {v8}, Lcom/tpad/ux/funlocker/UXObject;->getSupport3D()I

    move-result v8

    if-ne v8, v9, :cond_1

    move v8, v9

    .line 1169
    :goto_0
    invoke-static/range {v0 .. v8}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineStartBuffer(IIII[BLjava/lang/String;III)I

    move-result v0

    invoke-static {v10, v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$9(Lcom/tpad/ux/funlocker/RenderView$UXEngine;I)V

    .line 1174
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->mEngineCallBack:Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->mEngineCallBack:Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;

    sget-object v1, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-interface {v0, v1}, Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;->callback(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)V

    .line 1176
    :cond_0
    iput-boolean v9, p0, Lcom/tpad/ux/funlocker/RenderView;->invalidate:Z

    .line 1177
    iget-object v0, p0, Lcom/tpad/ux/funlocker/RenderView;->mTimerTask:Lcom/tpad/ux/funlocker/RenderView$TimerClock;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/RenderView$TimerClock;->start()V

    .line 1178
    return-void

    .line 1173
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public updateDay(I)V
    .locals 1
    .param p1, "day"    # I

    .prologue
    .line 1054
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1056
    :cond_0
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1060
    :pswitch_0
    const-string v0, "NotifySetDay"

    invoke-direct {p0, v0, p1}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;I)I

    goto :goto_0

    .line 1056
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateTime(Ljava/lang/String;)V
    .locals 13
    .param p1, "time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 1076
    sget-object v7, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v7, :cond_0

    .line 1077
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "mEngine is null!!!"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1078
    :cond_0
    sget-object v7, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v7}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1100
    new-instance v7, Ljava/lang/Exception;

    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 1101
    const-string v9, "UX-VERSION [ %d ]   JS-Invoked Error!!!"

    new-array v10, v10, [Ljava/lang/Object;

    sget-object v11, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v11}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$3(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    .line 1100
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1081
    :pswitch_0
    sget-object v7, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-static {v7}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$4(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)I

    move-result v7

    invoke-static {v7, p1}, Lcom/tpad/ux/funlocker/ExternalUtils;->UpdateTime(ILjava/lang/String;)I

    .line 1103
    :goto_0
    return-void

    .line 1084
    :pswitch_1
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 1086
    .local v2, "part":[Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    :try_start_0
    aget-object v3, v2, v7

    .line 1087
    .local v3, "part1":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v4, v2, v7

    .line 1088
    .local v4, "part2":Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v5, v2, v7

    .line 1089
    .local v5, "part3":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "hms":[Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1092
    .local v6, "ymd":[Ljava/lang/String;
    const-string v7, "NotifyDate"

    .line 1093
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v6, v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget-object v10, v6, v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    aget-object v10, v6, v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aget-object v10, v1, v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aget-object v10, v1, v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 1094
    const/4 v10, 0x2

    aget-object v10, v1, v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    aput-object v5, v8, v9

    .line 1093
    invoke-direct {p0, v8}, Lcom/tpad/ux/funlocker/RenderView;->splicingString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1091
    invoke-direct {p0, v7, v8}, Lcom/tpad/ux/funlocker/RenderView;->invokedJS(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1095
    .end local v1    # "hms":[Ljava/lang/String;
    .end local v3    # "part1":Ljava/lang/String;
    .end local v4    # "part2":Ljava/lang/String;
    .end local v5    # "part3":Ljava/lang/String;
    .end local v6    # "ymd":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "RenderView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tpad/ux/funlocker/Utils;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1084
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "part":[Ljava/lang/String;
    :cond_1
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public useDirtyArea()V
    .locals 2

    .prologue
    .line 780
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    invoke-direct {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;-><init>()V

    sput-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    .line 782
    sget-object v0, Lcom/tpad/ux/funlocker/RenderView;->mEngine:Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->access$5(Lcom/tpad/ux/funlocker/RenderView$UXEngine;Z)V

    .line 784
    :cond_0
    return-void
.end method
