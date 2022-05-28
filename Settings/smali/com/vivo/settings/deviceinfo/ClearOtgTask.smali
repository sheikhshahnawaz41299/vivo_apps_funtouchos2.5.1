.class public Lcom/vivo/settings/deviceinfo/ClearOtgTask;
.super Landroid/os/AsyncTask;
.source "ClearOtgTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final DIR_OTG:Ljava/lang/String; = "/storage/otg"

.field private static final TAG:Ljava/lang/String; = "ClearOtgTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;

.field private otgStoragePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    .line 47
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 48
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 49
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 50
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 52
    iput-object p2, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->otgStoragePath:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    .line 112
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 113
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 114
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 115
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mContext:Landroid/content/Context;

    const v2, 0x1040580

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 117
    const-string v0, "ClearOtgTask"

    const-string v1, "showDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method


# virtual methods
.method public deleteFiles(Ljava/io/File;)V
    .locals 12
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    const/16 v11, 0xa

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 133
    .local v2, "fileList":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 184
    :cond_0
    return-void

    .line 137
    :cond_1
    iget-object v8, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->otgStoragePath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v7, v8, 0x1

    .line 139
    .local v7, "length":I
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_7

    aget-object v1, v0, v5

    .line 141
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "filePath":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v7, :cond_2

    .line 139
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    const-string v8, "ClearOtgTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "++++++filePath:++++ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "file.isDirectory()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v8, "ClearOtgTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file.getAbsolutePath(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/storage/otg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 154
    sget-boolean v8, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->DBG:Z

    if-eqz v8, :cond_3

    .line 156
    const-string v8, "ClearOtgTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete dir: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_3
    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->deleteFiles(Ljava/io/File;)V

    .line 173
    :cond_4
    const-wide/16 v8, 0x32

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 174
    :catch_0
    move-exception v8

    goto/16 :goto_1

    .line 163
    :cond_5
    sget-boolean v8, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->DBG:Z

    if-eqz v8, :cond_6

    .line 165
    const-string v8, "ClearOtgTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_6
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v11, :cond_4

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_4

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 180
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v11, :cond_0

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_0

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 68
    const-string v0, "ClearOtgTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++++++++++++DBG: ++++++++"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->DBG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->otgStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-boolean v0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->DBG:Z

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "==== dump delete file ====="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->otgStoragePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->deleteFiles(Ljava/io/File;)V

    .line 77
    sget-boolean v0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->DBG:Z

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "==== end dump delete file ====="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->cancel(Z)Z

    .line 103
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->stopProcess()V

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.formatotg"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "mediaIntent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->otgStoragePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 94
    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 63
    return-void
.end method

.method public stopProcess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 122
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 125
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/ClearOtgTask;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0898

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    return-void
.end method
