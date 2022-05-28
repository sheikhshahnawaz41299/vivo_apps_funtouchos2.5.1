.class Lcom/android/settings/VivoMixKey$1;
.super Ljava/lang/Object;
.source "VivoMixKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VivoMixKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VivoMixKey;


# direct methods
.method constructor <init>(Lcom/android/settings/VivoMixKey;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "thisView"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x64

    const/4 v0, 0x0

    .line 46
    iget-object v2, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget-object v2, v2, Lcom/android/settings/VivoMixKey;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 47
    const-string v2, "VivoMixKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTextViewResId == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget v4, v4, Lcom/android/settings/VivoMixKey;->mTextViewResId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget v2, v2, Lcom/android/settings/VivoMixKey;->mTextViewResId:I

    if-lez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    invoke-virtual {v2}, Lcom/android/settings/VivoMixKey;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget v3, v3, Lcom/android/settings/VivoMixKey;->mTextViewResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "v":Landroid/view/View;
    iput-object v1, v2, Lcom/android/settings/VivoMixKey;->mTextView:Landroid/widget/TextView;

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget-object v2, v2, Lcom/android/settings/VivoMixKey;->mTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget-object v2, v2, Lcom/android/settings/VivoMixKey;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string v2, "VivoMixKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTextView.getFilters().length == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget-object v4, v4, Lcom/android/settings/VivoMixKey;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget-object v2, v2, Lcom/android/settings/VivoMixKey;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vivo_mix_maxlength"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget-object v2, v2, Lcom/android/settings/VivoMixKey;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v5, :cond_2

    .line 63
    iget-object v2, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget-object v2, v2, Lcom/android/settings/VivoMixKey;->mContext:Landroid/content/Context;

    const v3, 0x7f0b089f

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    const-string v2, "VivoMixKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget v4, v4, Lcom/android/settings/VivoMixKey;->mDigit:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v2, "VivoMixKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "char == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget v4, v4, Lcom/android/settings/VivoMixKey;->mDigit:I

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget-object v2, v2, Lcom/android/settings/VivoMixKey;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vivo_mix_password_keyguard_upper"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 70
    .local v0, "IsUpper":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 71
    iget-object v2, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget-object v2, v2, Lcom/android/settings/VivoMixKey;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget v3, v3, Lcom/android/settings/VivoMixKey;->mDigit:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    .end local v0    # "IsUpper":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 73
    .restart local v0    # "IsUpper":Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget-object v2, v2, Lcom/android/settings/VivoMixKey;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/VivoMixKey$1;->this$0:Lcom/android/settings/VivoMixKey;

    iget v3, v3, Lcom/android/settings/VivoMixKey;->mDigit:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
