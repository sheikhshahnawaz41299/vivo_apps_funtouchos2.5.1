.class Lcom/android/keyguard/VivoMixKey$1;
.super Ljava/lang/Object;
.source "VivoMixKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoMixKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoMixKey;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoMixKey;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "thisView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v2, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget-object v2, v2, Lcom/android/keyguard/VivoMixKey;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 47
    const-string v2, "VivoMixKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTextViewResId == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget v4, v4, Lcom/android/keyguard/VivoMixKey;->mTextViewResId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget v2, v2, Lcom/android/keyguard/VivoMixKey;->mTextViewResId:I

    if-lez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    invoke-virtual {v2}, Lcom/android/keyguard/VivoMixKey;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget v3, v3, Lcom/android/keyguard/VivoMixKey;->mTextViewResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "v":Landroid/view/View;
    iput-object v1, v2, Lcom/android/keyguard/VivoMixKey;->mTextView:Landroid/widget/TextView;

    .line 56
    :cond_0
    const-string v2, "VivoMixKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTextView == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget-object v4, v4, Lcom/android/keyguard/VivoMixKey;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isEnabled == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget-object v4, v4, Lcom/android/keyguard/VivoMixKey;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v2, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    invoke-virtual {v2}, Lcom/android/keyguard/VivoMixKey;->userActivity()V

    .line 58
    iget-object v2, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget-object v2, v2, Lcom/android/keyguard/VivoMixKey;->mTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget-object v2, v2, Lcom/android/keyguard/VivoMixKey;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string v2, "VivoMixKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTextView.getText().length() == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget-object v4, v4, Lcom/android/keyguard/VivoMixKey;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v2, "VivoMixKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget v4, v4, Lcom/android/keyguard/VivoMixKey;->mDigit:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v2, "VivoMixKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "char == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget v4, v4, Lcom/android/keyguard/VivoMixKey;->mDigit:I

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v2, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget-object v2, v2, Lcom/android/keyguard/VivoMixKey;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vivo_mix_password_keyguard_upper"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 65
    .local v0, "IsUpper":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 66
    iget-object v2, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget-object v2, v2, Lcom/android/keyguard/VivoMixKey;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget v3, v3, Lcom/android/keyguard/VivoMixKey;->mDigit:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 72
    .end local v0    # "IsUpper":Z
    :cond_1
    :goto_1
    return-void

    .line 64
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    .restart local v0    # "IsUpper":Z
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget-object v2, v2, Lcom/android/keyguard/VivoMixKey;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/VivoMixKey$1;->this$0:Lcom/android/keyguard/VivoMixKey;

    iget v3, v3, Lcom/android/keyguard/VivoMixKey;->mDigit:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
