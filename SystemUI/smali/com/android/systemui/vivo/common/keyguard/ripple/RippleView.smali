.class public Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;
.super Landroid/renderscript/RSSurfaceView;
.source "RippleView.java"


# static fields
.field private static final MSG_DROP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RippleView"


# instance fields
.field private dismissing:Z

.field private downX:F

.field private downY:F

.field private dropX:F

.field private dropY:F

.field private ifDoubleFinger:Z

.field private lcdHeight:I

.field private lcdWidth:I

.field private mBackgroundImage:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardRipple:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

.field private mMoveSlop:I

.field private mMoveTime:J

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRender:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

.field private mSoundPool:Landroid/media/SoundPool;

.field private secondFingerPressed:Z

.field private soundId:[I

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/renderscript/RSSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->visible:Z

    .line 35
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->secondFingerPressed:Z

    .line 36
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->ifDoubleFinger:Z

    .line 37
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dismissing:Z

    .line 38
    const/16 v1, 0x23

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mMoveSlop:I

    .line 42
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mContext:Landroid/content/Context;

    .line 62
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v6, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mSoundPool:Landroid/media/SoundPool;

    .line 63
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->soundId:[I

    .line 64
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->soundId:[I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f080000

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v5

    .line 65
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->soundId:[I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mContext:Landroid/content/Context;

    const v4, 0x7f080008

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v6

    .line 67
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 68
    .local v0, "density":F
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mMoveSlop:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mMoveSlop:I

    .line 69
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->lcdWidth:I

    .line 70
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->lcdHeight:I

    .line 71
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 206
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mSoundPool:Landroid/media/SoundPool;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mBackgroundImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 210
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 212
    :cond_1
    return-void
.end method

.method public drop(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRender:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRender:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->addDrop(FF)V

    .line 104
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dropX:F

    .line 105
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dropY:F

    .line 107
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onAttachedToWindow()V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRender:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

    if-eqz v0, :cond_0

    .line 218
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRender:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->destroyRenderScriptGL()V

    .line 222
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 224
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRender:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRender:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->clean()V

    .line 230
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mKeyguardRipple:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mKeyguardRipple:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->userActivity()V

    .line 114
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mKeyguardRipple:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mKeyguardRipple:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->touchDown()V

    .line 121
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->ifDoubleFinger:Z

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dismissing:Z

    .line 125
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    .line 126
    .local v11, "msgDown":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->soundId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 131
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->downX:F

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->downY:F

    .line 133
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->downX:F

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dropX:F

    .line 134
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->downY:F

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dropY:F

    goto :goto_0

    .line 139
    .end local v11    # "msgDown":Landroid/os/Message;
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->secondFingerPressed:Z

    if-eqz v0, :cond_4

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->downX:F

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->downY:F

    goto :goto_0

    .line 145
    :cond_4
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->downX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v8, v0, v1

    .line 146
    .local v8, "dx1":F
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->downY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v10, v0, v1

    .line 147
    .local v10, "dy1":F
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dismissing:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->ifDoubleFinger:Z

    if-nez v0, :cond_5

    mul-float v0, v8, v8

    mul-float v1, v10, v10

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->lcdHeight:I

    div-int/lit8 v2, v2, 0x3

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mKeyguardRipple:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    if-eqz v0, :cond_5

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dismissing:Z

    .line 150
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mKeyguardRipple:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->dismiss()V

    .line 153
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    .line 154
    .local v13, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    .line 155
    .local v14, "y":F
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dropX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v7, v0, v1

    .line 156
    .local v7, "dx":F
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dropY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v9, v0, v1

    .line 157
    .local v9, "dy":F
    mul-float v0, v7, v7

    mul-float v1, v9, v9

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mMoveSlop:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    float-to-int v2, v13

    float-to-int v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 160
    .local v12, "msgMove":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dropX:F

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dropY:F

    .line 163
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mMoveTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mMoveTime:J

    .line 165
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->soundId:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto/16 :goto_0

    .line 171
    .end local v7    # "dx":F
    .end local v8    # "dx1":F
    .end local v9    # "dy":F
    .end local v10    # "dy1":F
    .end local v12    # "msgMove":Landroid/os/Message;
    .end local v13    # "x":F
    .end local v14    # "y":F
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mKeyguardRipple:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->dismissing:Z

    if-nez v0, :cond_6

    .line 172
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mKeyguardRipple:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->touchUp()V

    .line 175
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->ifDoubleFinger:Z

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 181
    :pswitch_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->secondFingerPressed:Z

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->ifDoubleFinger:Z

    goto/16 :goto_0

    .line 185
    :pswitch_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->secondFingerPressed:Z

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->downX:F

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->downY:F

    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->lcdWidth:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->lcdHeight:I

    if-eq v0, v2, :cond_3

    .line 75
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 76
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->lcdWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v0, v2

    .line 77
    .local v9, "scaleX":F
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->lcdHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v0, v2

    .line 78
    .local v10, "scaleY":F
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 81
    .local v7, "resizeBmp":Landroid/graphics/Bitmap;
    iput-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 86
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "resizeBmp":Landroid/graphics/Bitmap;
    .end local v9    # "scaleX":F
    .end local v10    # "scaleY":F
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-nez v0, :cond_1

    .line 87
    new-instance v8, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v8}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 88
    .local v8, "sc":Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    invoke-virtual {p0, v8}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 90
    .end local v8    # "sc":Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRender:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

    if-nez v0, :cond_2

    .line 91
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->lcdWidth:I

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->lcdHeight:I

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRender:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRender:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;ZLandroid/graphics/Bitmap;)V

    .line 95
    return-void

    .line 83
    :cond_3
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mBackgroundImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mKeyguardRipple:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    .line 99
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/renderscript/RSSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRender:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->mRender:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;

    invoke-virtual {v0, p3, p4}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleRS;->resize(II)V

    .line 201
    :cond_0
    return-void
.end method
