.class Lcom/android/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;,
        Lcom/android/keyguard/KeyguardMessageArea$Helper;
    }
.end annotation


# static fields
.field private static final ANNOUNCEMENT_DELAY:J = 0xfaL

.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;

.field protected static final FADE_DURATION:I = 0x2ee

.field static final SECURITY_MESSAGE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "KeyguardMessageArea"


# instance fields
.field mClearMessageRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMessage:Ljava/lang/CharSequence;

.field private mSeparator:Ljava/lang/CharSequence;

.field mShowingBouncer:Z

.field mShowingMessage:Z

.field mTimeout:J

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 62
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 71
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 150
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setLayerType(ILandroid/graphics/Paint;)V

    .line 152
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 155
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 159
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040620

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardMessageArea;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->hideMessage(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMessageArea;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->showMessage(I)V

    return-void
.end method

.method private hideMessage(IZ)V
    .locals 5
    .param p1, "duration"    # I
    .param p2, "thenUpdate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 204
    if-lez p1, :cond_2

    .line 205
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 206
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 207
    if-eqz p2, :cond_0

    .line 208
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$3;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 222
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 218
    if-eqz p2, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    goto :goto_0
.end method

.method private showMessage(I)V
    .locals 5
    .param p1, "duration"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 225
    if-lez p1, :cond_0

    .line 226
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 227
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 228
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 232
    .end local v0    # "anim":Landroid/animation/Animator;
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method getCurrentMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .line 168
    .local v0, "screenOn":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 169
    return-void
.end method

.method public securityMessageChanged()V
    .locals 1

    .prologue
    .line 172
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 174
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 182
    return-void
.end method

.method update()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    new-instance v0, Landroid/util/MutableInt;

    invoke-direct {v0, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 193
    .local v0, "icon":Landroid/util/MutableInt;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 194
    .local v1, "status":Ljava/lang/CharSequence;
    iget v2, v0, Landroid/util/MutableInt;->value:I

    invoke-virtual {p0, v2, v3, v3, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method
