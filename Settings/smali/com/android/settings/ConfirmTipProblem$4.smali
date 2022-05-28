.class Lcom/android/settings/ConfirmTipProblem$4;
.super Ljava/lang/Object;
.source "ConfirmTipProblem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmTipProblem;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmTipProblem;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmTipProblem;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 129
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v3}, Lcom/android/settings/ConfirmTipProblem;->access$300(Lcom/android/settings/ConfirmTipProblem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    iget-object v3, v3, Lcom/android/settings/ConfirmTipProblem;->myHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "questionData":Ljava/lang/String;
    const/4 v2, 0x0

    .line 134
    .local v2, "summaries":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v3}, Lcom/android/settings/ConfirmTipProblem;->access$400(Lcom/android/settings/ConfirmTipProblem;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmTipProblem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 141
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v3}, Lcom/android/settings/ConfirmTipProblem;->access$500(Lcom/android/settings/ConfirmTipProblem;)I

    move-result v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 142
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v3}, Lcom/android/settings/ConfirmTipProblem;->access$500(Lcom/android/settings/ConfirmTipProblem;)I

    move-result v3

    aget-object v3, v2, v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    :goto_1
    const-string v3, "ConfirmTipProblem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the location is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmTipProblem;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bbk_problem"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmTipProblem;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bbk_answer"

    iget-object v5, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    iget-object v6, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v6}, Lcom/android/settings/ConfirmTipProblem;->access$100(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/ConfirmTipProblem;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/ConfirmTipProblem;->setResult(I)V

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.vivo.secure.keyguard.enable.or.disable"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "enable"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-virtual {v3, v0}, Lcom/android/settings/ConfirmTipProblem;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmTipProblem;->finish()V

    .line 162
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "questionData":Ljava/lang/String;
    .end local v2    # "summaries":[Ljava/lang/CharSequence;
    :goto_2
    return-void

    .line 138
    .restart local v1    # "questionData":Ljava/lang/String;
    .restart local v2    # "summaries":[Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmTipProblem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_0

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v3}, Lcom/android/settings/ConfirmTipProblem;->access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 160
    .end local v1    # "questionData":Ljava/lang/String;
    .end local v2    # "summaries":[Ljava/lang/CharSequence;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem$4;->this$0:Lcom/android/settings/ConfirmTipProblem;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/ConfirmTipProblem;->setResult(I)V

    goto :goto_2
.end method
