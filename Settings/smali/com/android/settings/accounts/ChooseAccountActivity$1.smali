.class Lcom/android/settings/accounts/ChooseAccountActivity$1;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ChooseAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string v5, "ChooseAccountActivity"

    const-string v6, "mCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v2, 0x1

    .line 105
    .local v2, "done":Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 107
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "intent"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 108
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 109
    const/4 v2, 0x0

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "addAccountOptions":Landroid/os/Bundle;
    const-string v5, "pendingIntent"

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-static {v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 112
    const-string v5, "hasMultipleUsers"

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-static {v6}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    const-string v5, "android.intent.extra.USER"

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-static {v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUserHandle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-static {v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 117
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-static {v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/settings/accounts/ChooseAccountActivity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 126
    .end local v0    # "addAccountOptions":Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_1
    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCallback, done="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v2, :cond_2

    .line 136
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 139
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 119
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->setResult(I)V

    .line 120
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    .line 122
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$002(Lcom/android/settings/accounts/ChooseAccountActivity;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Landroid/accounts/OperationCanceledException;
    :try_start_2
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "ChooseAccountActivity"

    const-string v6, "addAccount was canceled"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :cond_4
    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCallback, done="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v2, :cond_2

    .line 136
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_1

    .line 129
    .end local v3    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v3

    .line 130
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    :cond_5
    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCallback, done="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v2, :cond_2

    .line 136
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto/16 :goto_1

    .line 131
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 132
    .local v3, "e":Landroid/accounts/AuthenticatorException;
    :try_start_4
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    :cond_6
    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCallback, done="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v2, :cond_2

    .line 136
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto/16 :goto_1

    .line 134
    .end local v3    # "e":Landroid/accounts/AuthenticatorException;
    :catchall_0
    move-exception v5

    const-string v6, "ChooseAccountActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCallback, done="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v2, :cond_7

    .line 136
    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    :cond_7
    throw v5
.end method
