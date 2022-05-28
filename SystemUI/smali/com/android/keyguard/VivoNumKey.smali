.class public Lcom/android/keyguard/VivoNumKey;
.super Landroid/view/ViewGroup;
.source "VivoNumKey.java"


# static fields
.field static sKlondike:[Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDigit:I

.field private mEnableHaptics:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field private mPM:Landroid/os/PowerManager;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mTextView:Lcom/android/keyguard/PasswordTextView;

.field private mTextViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/VivoNumKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/VivoNumKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const-string v1, "VivoNumKey"

    iput-object v1, p0, Lcom/android/keyguard/VivoNumKey;->TAG:Ljava/lang/String;

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/VivoNumKey;->mDigit:I

    .line 50
    new-instance v1, Lcom/android/keyguard/VivoNumKey$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/VivoNumKey$1;-><init>(Lcom/android/keyguard/VivoNumKey;)V

    iput-object v1, p0, Lcom/android/keyguard/VivoNumKey;->mListener:Landroid/view/View$OnClickListener;

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/VivoNumKey;->setFocusable(Z)V

    .line 91
    sget-object v1, Lcom/android/keyguard/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey;->TAG:Ljava/lang/String;

    const-string v2, "VivoNumKey = "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :try_start_0
    sget v1, Lcom/android/keyguard/R$styleable;->NumPadKey_digit:I

    iget v2, p0, Lcom/android/keyguard/VivoNumKey;->mDigit:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/VivoNumKey;->mDigit:I

    .line 96
    sget v1, Lcom/android/keyguard/R$styleable;->NumPadKey_textView:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/VivoNumKey;->mTextViewResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDigit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/VivoNumKey;->mDigit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mTextViewResId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/VivoNumKey;->mTextViewResId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/VivoNumKey;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v1, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {v1, p1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/VivoNumKey;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 104
    new-instance v1, Lcom/android/keyguard/ObscureSpeechDelegate;

    invoke-direct {v1, p1}, Lcom/android/keyguard/ObscureSpeechDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/VivoNumKey;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 106
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/VivoNumKey;->mEnableHaptics:Z

    .line 108
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/keyguard/VivoNumKey;->mPM:Landroid/os/PowerManager;

    .line 109
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/VivoNumKey;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 110
    return-void

    .line 98
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/keyguard/VivoNumKey;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoNumKey;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/VivoNumKey;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/VivoNumKey;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoNumKey;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/keyguard/VivoNumKey;->mDigit:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/VivoNumKey;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoNumKey;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/keyguard/VivoNumKey;->mTextViewResId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/VivoNumKey;)Lcom/android/keyguard/PasswordTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoNumKey;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/VivoNumKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/VivoNumKey;Lcom/android/keyguard/PasswordTextView;)Lcom/android/keyguard/PasswordTextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/VivoNumKey;
    .param p1, "x1"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/keyguard/VivoNumKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/VivoNumKey;)Lcom/android/keyguard/KeyguardSecurityModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoNumKey;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/VivoNumKey;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    return-object v0
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/keyguard/VivoNumKey;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/VivoNumKey;->performHapticFeedback(II)Z

    .line 141
    :cond_0
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/ObscureSpeechDelegate;->sAnnouncedHeadset:Z

    .line 118
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 128
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/VivoNumKey;->measureChildren(II)V

    .line 124
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/keyguard/VivoNumKey;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 77
    return-void
.end method
