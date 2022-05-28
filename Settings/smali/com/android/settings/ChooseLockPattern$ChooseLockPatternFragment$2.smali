.class Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/SetPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patternInProgress()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b0330

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->access$500(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;Z)V

    .line 267
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->access$200(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SetPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v1, "ChooseLockPattern"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooseLockPatternFragment--onPatternDetected-----mIsVistMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->access$000()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->access$300(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 221
    .local v0, "utils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->access$400(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->access$400(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_3

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 226
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->settPattern()V

    .line 255
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->access$400(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->access$400(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->access$400(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Choicerepeated:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->access$400(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Choicerepeated_visit:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_8

    .line 234
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    .line 235
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 238
    :cond_5
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkNormalPattern(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 239
    const-string v1, "ChooseLockPattern"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooseLockPatternFragment--Choicerepeated mIsVistMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->access$000()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Choicerepeated:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 241
    :cond_6
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->access$000()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkVisitModePattern(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visit_password"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 242
    const-string v1, "ChooseLockPattern"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooseLockPatternFragment--Choicerepeated_visit mIsVistMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->access$000()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Choicerepeated_visit:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0

    .line 247
    :cond_7
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 248
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 249
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->settPattern()V

    goto/16 :goto_0

    .line 252
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected stage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->access$400(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "entering the pattern."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->access$200(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SetPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 209
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;->patternInProgress()V

    .line 210
    return-void
.end method
