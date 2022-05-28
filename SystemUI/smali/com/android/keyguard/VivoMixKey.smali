.class public Lcom/android/keyguard/VivoMixKey;
.super Landroid/widget/Button;
.source "VivoMixKey.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoMixKey"


# instance fields
.field mContext:Landroid/content/Context;

.field mDigit:I

.field private mListener:Landroid/view/View$OnClickListener;

.field private mPM:Landroid/os/PowerManager;

.field mTextView:Landroid/widget/TextView;

.field mTextViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/VivoMixKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/VivoMixKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/VivoMixKey;->mDigit:I

    .line 39
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/VivoMixKey;->mTextView:Landroid/widget/TextView;

    .line 43
    new-instance v2, Lcom/android/keyguard/VivoMixKey$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/VivoMixKey$1;-><init>(Lcom/android/keyguard/VivoMixKey;)V

    iput-object v2, p0, Lcom/android/keyguard/VivoMixKey;->mListener:Landroid/view/View$OnClickListener;

    .line 89
    iput-object p1, p0, Lcom/android/keyguard/VivoMixKey;->mContext:Landroid/content/Context;

    .line 90
    sget-object v2, Lcom/android/keyguard/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/keyguard/R$styleable;->NumPadKey_digit:I

    iget v3, p0, Lcom/android/keyguard/VivoMixKey;->mDigit:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/VivoMixKey;->mDigit:I

    .line 92
    sget v2, Lcom/android/keyguard/R$styleable;->NumPadKey_textView:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/VivoMixKey;->setTextViewResId(I)V

    .line 93
    iget-object v2, p0, Lcom/android/keyguard/VivoMixKey;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/keyguard/VivoMixKey;->mPM:Landroid/os/PowerManager;

    .line 95
    iget-object v2, p0, Lcom/android/keyguard/VivoMixKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/VivoMixKey;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v2, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {v2, p1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/VivoMixKey;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 97
    new-instance v2, Lcom/android/keyguard/ObscureSpeechDelegate;

    invoke-direct {v2, p1}, Lcom/android/keyguard/ObscureSpeechDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/VivoMixKey;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 98
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 99
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    iget v2, p0, Lcom/android/keyguard/VivoMixKey;->mDigit:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    const-string v2, "VivoMixKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "builder == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/keyguard/VivoMixKey;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/ObscureSpeechDelegate;->sAnnouncedHeadset:Z

    .line 110
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/keyguard/VivoMixKey;->mTextView:Landroid/widget/TextView;

    .line 114
    return-void
.end method

.method public setTextViewResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/VivoMixKey;->mTextView:Landroid/widget/TextView;

    .line 118
    iput p1, p0, Lcom/android/keyguard/VivoMixKey;->mTextViewResId:I

    .line 119
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/keyguard/VivoMixKey;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 77
    return-void
.end method
