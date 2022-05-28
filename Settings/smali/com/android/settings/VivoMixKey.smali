.class public Lcom/android/settings/VivoMixKey;
.super Landroid/widget/Button;
.source "VivoMixKey.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoMixKey"


# instance fields
.field mContext:Landroid/content/Context;

.field mDigit:I

.field private mListener:Landroid/view/View$OnClickListener;

.field mTextView:Landroid/widget/TextView;

.field mTextViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/VivoMixKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/VivoMixKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/VivoMixKey;->mDigit:I

    .line 40
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/VivoMixKey;->mTextView:Landroid/widget/TextView;

    .line 43
    new-instance v2, Lcom/android/settings/VivoMixKey$1;

    invoke-direct {v2, p0}, Lcom/android/settings/VivoMixKey$1;-><init>(Lcom/android/settings/VivoMixKey;)V

    iput-object v2, p0, Lcom/android/settings/VivoMixKey;->mListener:Landroid/view/View$OnClickListener;

    .line 91
    iput-object p1, p0, Lcom/android/settings/VivoMixKey;->mContext:Landroid/content/Context;

    .line 92
    sget-object v2, Lcom/android/settings/R$styleable;->VivoMixKey:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/android/settings/VivoMixKey;->mDigit:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/VivoMixKey;->mDigit:I

    .line 94
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/VivoMixKey;->setTextViewResId(I)V

    .line 96
    iget-object v2, p0, Lcom/android/settings/VivoMixKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Lcom/android/settings/VivoMixKey;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v2, Lcom/android/settings/LiftToActivateListener;

    invoke-direct {v2, p1}, Lcom/android/settings/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/VivoMixKey;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 98
    new-instance v2, Lcom/android/settings/ObscureSpeechDelegate;

    invoke-direct {v2, p1}, Lcom/android/settings/ObscureSpeechDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/VivoMixKey;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 99
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 100
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    iget v2, p0, Lcom/android/settings/VivoMixKey;->mDigit:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 101
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

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/settings/VivoMixKey;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ObscureSpeechDelegate;->sAnnouncedHeadset:Z

    .line 111
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/VivoMixKey;->mTextView:Landroid/widget/TextView;

    .line 115
    return-void
.end method

.method public setTextViewResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/VivoMixKey;->mTextView:Landroid/widget/TextView;

    .line 119
    iput p1, p0, Lcom/android/settings/VivoMixKey;->mTextViewResId:I

    .line 120
    return-void
.end method
