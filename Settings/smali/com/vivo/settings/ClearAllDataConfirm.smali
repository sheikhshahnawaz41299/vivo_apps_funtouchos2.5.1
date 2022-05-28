.class public Lcom/vivo/settings/ClearAllDataConfirm;
.super Lcom/vivo/settings/VivoFragment;
.source "ClearAllDataConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_CLEAR_DATA_IN_MAIN_THREAD:I = 0x4

.field private static final MSG_DIALOG_NO_CONNECTION_DLG:I = 0x3

.field private static final MSG_DIMISS_PROGRESS:I = 0x2

.field private static final MSG_SEND_MASTER_CLEAR_BROADCAST:I = 0x5

.field private static final MSG_SHOW_PROGRESS:I = 0x1

.field private static final MSG_SHOW_TOAST:I = 0x0

.field private static final STAT_CONNECT_ERROR:I = 0x2

.field private static final STAT_PASSWORD_ERROR:I = 0x1

.field private static final STAT_SUCCEED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ClearAllDataConfirm"


# instance fields
.field private EXTERNAL_SD_PATH:Ljava/lang/String;

.field private INTERNAL_SD_PATH:Ljava/lang/String;

.field private volatile isCanceled:Z

.field private volatile isDlgShow:Z

.field private mEraseSdCard:Z

.field private mEraseUsbCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFindPhoneNeeded:Z

.field private mHandler:Landroid/os/Handler;

.field private mInternalStorageVolume:Landroid/os/storage/StorageVolume;

.field private mMarkupView:Lcom/vivo/common/MarkupView;

.field private mNetworkSetDlg:Landroid/app/AlertDialog;

.field private mPassword:Landroid/widget/EditText;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mToast:Landroid/widget/Toast;

.field private mVivoAccountExplain:Landroid/widget/TextView;

.field private mWipeOut:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->INTERNAL_SD_PATH:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->EXTERNAL_SD_PATH:Ljava/lang/String;

    .line 64
    iput-boolean v2, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseSdCard:Z

    .line 65
    iput-boolean v2, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseUsbCard:Z

    .line 66
    iput-boolean v2, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mWipeOut:Z

    .line 67
    iput-boolean v2, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mFindPhoneNeeded:Z

    .line 72
    iput-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 73
    iput-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 74
    iput-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 75
    iput-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mInternalStorageVolume:Landroid/os/storage/StorageVolume;

    .line 80
    new-instance v0, Lcom/vivo/settings/ClearAllDataConfirm$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/ClearAllDataConfirm$1;-><init>(Lcom/vivo/settings/ClearAllDataConfirm;)V

    iput-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 188
    iput-boolean v2, p0, Lcom/vivo/settings/ClearAllDataConfirm;->isCanceled:Z

    .line 189
    iput-boolean v2, p0, Lcom/vivo/settings/ClearAllDataConfirm;->isDlgShow:Z

    .line 190
    iput-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 262
    new-instance v0, Lcom/vivo/settings/ClearAllDataConfirm$4;

    invoke-direct {v0, p0}, Lcom/vivo/settings/ClearAllDataConfirm$4;-><init>(Lcom/vivo/settings/ClearAllDataConfirm;)V

    iput-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/ClearAllDataConfirm;)Lcom/vivo/settings/StorageManagerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vivo/settings/ClearAllDataConfirm;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseSdCard:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vivo/settings/ClearAllDataConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->checkPasswdAndReboot()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vivo/settings/ClearAllDataConfirm;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vivo/settings/ClearAllDataConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStatusBar:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/vivo/settings/ClearAllDataConfirm;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;
    .param p1, "x1"    # Landroid/app/StatusBarManager;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStatusBar:Landroid/app/StatusBarManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mNetworkSetDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/vivo/settings/ClearAllDataConfirm;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mNetworkSetDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/vivo/settings/ClearAllDataConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ClearAllDataConfirm;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->clearAllData()V

    return-void
.end method

.method private checkPassWdOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 384
    const-string v12, "ClearAllDataConfirm"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkPasswd uuid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "passwd:*******"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 386
    .local v6, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "uuid"

    move-object/from16 v0, p2

    invoke-direct {v12, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "pwd"

    move-object/from16 v0, p3

    invoke-direct {v12, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v12, "UTF-8"

    invoke-static {v6, v12}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, "param":Ljava/lang/String;
    const-string v11, "https://usrsys.inner.bbk.com/v2/main/verifyPwd"

    .line 391
    .local v11, "url":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 392
    .local v3, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-static {}, Lcom/vivo/settings/BBKSSLSocketFactory;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 395
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 396
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 397
    .local v10, "statusCode":I
    const/16 v12, 0xc8

    if-ne v10, v12, :cond_1

    .line 398
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-static {v12, v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, "result":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 400
    .local v4, "jsonResult":Lorg/json/JSONObject;
    const-string v12, "stat"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 401
    .local v9, "stat":I
    const-string v12, "ClearAllDataConfirm"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "resutl stat = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 402
    const/16 v12, 0xc8

    if-ne v9, v12, :cond_0

    .line 403
    const/4 v12, 0x0

    .line 417
    .end local v4    # "jsonResult":Lorg/json/JSONObject;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "stat":I
    .end local v10    # "statusCode":I
    :goto_0
    return v12

    .line 405
    .restart local v4    # "jsonResult":Lorg/json/JSONObject;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "result":Ljava/lang/String;
    .restart local v9    # "stat":I
    .restart local v10    # "statusCode":I
    :cond_0
    const/4 v12, 0x1

    goto :goto_0

    .line 408
    .end local v4    # "jsonResult":Lorg/json/JSONObject;
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "stat":I
    :cond_1
    const/4 v12, 0x2

    goto :goto_0

    .line 410
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "statusCode":I
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v12, "ClearAllDataConfirm"

    const-string v13, "checkPassWdOnline"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_1
    const/4 v12, 0x2

    goto :goto_0

    .line 412
    :catch_1
    move-exception v1

    .line 413
    .local v1, "e":Ljava/io/IOException;
    const-string v12, "ClearAllDataConfirm"

    const-string v13, "checkPassWdOnline"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 414
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 415
    .local v1, "e":Lorg/json/JSONException;
    const-string v12, "ClearAllDataConfirm"

    const-string v13, "checkPassWdOnline"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private checkPasswdAndReboot()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    iput-boolean v3, p0, Lcom/vivo/settings/ClearAllDataConfirm;->isCanceled:Z

    .line 193
    iput-boolean v3, p0, Lcom/vivo/settings/ClearAllDataConfirm;->isDlgShow:Z

    .line 194
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vivo/settings/ClearAllDataConfirm;->isPasswordOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 195
    .local v0, "success":Z
    iget-boolean v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->isCanceled:Z

    if-nez v1, :cond_0

    .line 196
    if-eqz v0, :cond_1

    .line 197
    iget-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    if-nez v0, :cond_0

    .line 199
    iget-boolean v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->isDlgShow:Z

    if-nez v1, :cond_2

    .line 200
    const v1, 0x7f0b07dd

    invoke-direct {p0, v1}, Lcom/vivo/settings/ClearAllDataConfirm;->toast(I)V

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 203
    iget-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private clearAllData()V
    .locals 4

    .prologue
    .line 215
    iget-boolean v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mWipeOut:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseUsbCard:Z

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "ClearAllDataConfirm"

    const-string v2, "set property persist.sys.need_format to 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v1, "persist.sys.need_format"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-boolean v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mWipeOut:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseSdCard:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mWipeOut:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseSdCard:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseUsbCard:Z

    if-eqz v1, :cond_5

    .line 220
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "vivo.settings.service.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/vivo/settings/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    iget-boolean v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseSdCard:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_3

    .line 225
    const-string v1, "ClearAllDataConfirm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set format external volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    :cond_3
    iget-boolean v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mWipeOut:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseUsbCard:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mInternalStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_4

    .line 230
    const-string v1, "ClearAllDataConfirm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set format internal volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mInternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v1, "second_volume"

    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mInternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    :cond_4
    const-string v1, "ClearAllDataConfirm"

    const-string v2, "start service to format and factory reset"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 254
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 237
    :cond_5
    invoke-static {}, Lcom/android/settings/AppFeature;->needClearNetworkLock()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 238
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/settings/ClearAllDataConfirm;->startBootAnimation(Landroid/content/Context;)V

    .line 239
    new-instance v1, Lcom/vivo/settings/ClearAllDataConfirm$3;

    invoke-direct {v1, p0}, Lcom/vivo/settings/ClearAllDataConfirm$3;-><init>(Lcom/vivo/settings/ClearAllDataConfirm;)V

    invoke-virtual {v1}, Lcom/vivo/settings/ClearAllDataConfirm$3;->start()V

    goto :goto_0

    .line 250
    :cond_6
    iget-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 251
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/settings/ClearAllDataConfirm;->startBootAnimation(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "conentView"    # Landroid/view/View;

    .prologue
    .line 158
    const v0, 0x7f0e006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/MarkupView;

    iput-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mMarkupView:Lcom/vivo/common/MarkupView;

    .line 160
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mMarkupView:Lcom/vivo/common/MarkupView;

    invoke-virtual {v0}, Lcom/vivo/common/MarkupView;->initDeleteLayout()V

    .line 161
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mMarkupView:Lcom/vivo/common/MarkupView;

    invoke-virtual {v0}, Lcom/vivo/common/MarkupView;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mFinalButton:Landroid/widget/Button;

    .line 162
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mFinalButton:Landroid/widget/Button;

    const v1, 0x7f0b02e7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mFinalButton:Landroid/widget/Button;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 164
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mFinalButton:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 165
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v0, 0x7f0e006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mVivoAccountExplain:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f0e006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mPassword:Landroid/widget/EditText;

    .line 169
    return-void
.end method

.method public static isFindPhoneNeeded(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "isFindPhoneOpened"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static startBootAnimation(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 429
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 430
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const v1, 0x7f0b0809

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 431
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 432
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 433
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 434
    const-string v1, "ClearAllDataConfirm"

    const-string v2, "show progress dialog before reboot"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method private toast(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 330
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 331
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 332
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 333
    iget-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    return-void
.end method


# virtual methods
.method public isPasswordOk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 338
    const/4 v2, 0x0

    .line 340
    .local v2, "accounts":[Landroid/accounts/Account;
    :try_start_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 341
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string v8, "BBKOnLineService"

    invoke-virtual {v0, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 346
    const/4 v1, 0x0

    .line 347
    .local v1, "accountObj":Landroid/accounts/Account;
    array-length v8, v2

    if-lez v8, :cond_0

    .line 348
    const/4 v8, 0x0

    aget-object v1, v2, v8

    .line 350
    :cond_0
    if-nez v1, :cond_1

    .line 351
    const/4 v8, 0x1

    .line 377
    .end local v0    # "accountManager":Landroid/accounts/AccountManager;
    .end local v1    # "accountObj":Landroid/accounts/Account;
    :goto_0
    return v8

    .line 342
    :catch_0
    move-exception v3

    .line 343
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    const/4 v8, 0x0

    goto :goto_0

    .line 353
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "accountManager":Landroid/accounts/AccountManager;
    .restart local v1    # "accountObj":Landroid/accounts/Account;
    :cond_1
    invoke-static {}, Lcom/android/settings/AppFeature;->getROMVersion()D

    move-result-wide v8

    const-wide v10, 0x4003eb851eb851ecL    # 2.49

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 354
    const-string v5, ""

    .line 356
    .local v5, "pass":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 361
    if-eqz v5, :cond_2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 362
    const/4 v8, 0x1

    goto :goto_0

    .line 357
    :catch_1
    move-exception v3

    .line 358
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v8, "ClearAllDataConfirm"

    const-string v9, "getAccount pass"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    const/4 v8, 0x0

    goto :goto_0

    .line 365
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "pass":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/vivo/settings/VivoUtils;->getConnectionType(Landroid/content/Context;)I

    move-result v4

    .line 366
    .local v4, "networkType":I
    const/16 v8, 0x3e9

    if-ne v4, v8, :cond_3

    .line 367
    iget-object v8, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 368
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vivo/settings/ClearAllDataConfirm;->isDlgShow:Z

    .line 377
    const/4 v8, 0x0

    goto :goto_0

    .line 370
    :cond_3
    iget-object v8, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 371
    const-string v8, "uuid"

    invoke-virtual {v0, v1, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, "uuid":Ljava/lang/String;
    const-string v8, "ClearAllDataConfirm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {p0, v8, v7, p2}, Lcom/vivo/settings/ClearAllDataConfirm;->checkPassWdOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 374
    .local v6, "stat":I
    const-string v8, "ClearAllDataConfirm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result stat = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    if-nez v6, :cond_4

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->isCanceled:Z

    .line 423
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 426
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mFinalButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 174
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-boolean v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mFindPhoneNeeded:Z

    if-eqz v0, :cond_2

    .line 177
    new-instance v0, Lcom/vivo/settings/ClearAllDataConfirm$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/ClearAllDataConfirm$2;-><init>(Lcom/vivo/settings/ClearAllDataConfirm;)V

    invoke-virtual {v0}, Lcom/vivo/settings/ClearAllDataConfirm$2;->start()V

    goto :goto_0

    .line 183
    :cond_2
    invoke-direct {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->clearAllData()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const-string v5, "ClearAllDataConfirm"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 99
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 100
    const-string v5, "erase_sd"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseSdCard:Z

    .line 101
    const-string v5, "erase_usb"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseUsbCard:Z

    .line 102
    const-string v5, "wipe_out"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mWipeOut:Z

    .line 107
    :goto_0
    iget-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v5, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "storage"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    iput-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 111
    :cond_0
    iget-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v5}, Lcom/vivo/settings/StorageManagerWrapper;->getInstance(Ljava/lang/Object;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 114
    iget-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v5}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 115
    .local v3, "internalStorageVolume":Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_4

    .line 116
    .local v4, "isUDiskEmulated":Z
    :goto_1
    if-nez v4, :cond_1

    .line 117
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mWipeOut:Z

    .line 120
    :cond_1
    iget-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 121
    iget-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v5}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->EXTERNAL_SD_PATH:Ljava/lang/String;

    .line 122
    iget-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v5}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->INTERNAL_SD_PATH:Ljava/lang/String;

    .line 123
    iget-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 124
    .local v0, "Volumes":[Landroid/os/storage/StorageVolume;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_6

    .line 125
    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v6}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 127
    aget-object v5, v0, v2

    iput-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 124
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 104
    .end local v0    # "Volumes":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i":I
    .end local v3    # "internalStorageVolume":Landroid/os/storage/StorageVolume;
    .end local v4    # "isUDiskEmulated":Z
    :cond_3
    iput-boolean v4, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseSdCard:Z

    .line 105
    iput-boolean v4, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mEraseUsbCard:Z

    goto :goto_0

    .line 115
    .restart local v3    # "internalStorageVolume":Landroid/os/storage/StorageVolume;
    :cond_4
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v4

    goto :goto_1

    .line 128
    .restart local v0    # "Volumes":[Landroid/os/storage/StorageVolume;
    .restart local v2    # "i":I
    .restart local v4    # "isUDiskEmulated":Z
    :cond_5
    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/settings/ClearAllDataConfirm;->INTERNAL_SD_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    aget-object v5, v0, v2

    iput-object v5, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mInternalStorageVolume:Landroid/os/storage/StorageVolume;

    goto :goto_3

    .line 132
    :cond_6
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    const v1, 0x7f040027

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "contentView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/vivo/settings/ClearAllDataConfirm;->initViews(Landroid/view/View;)V

    .line 154
    return-object v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 136
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onResume()V

    .line 137
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->showBBKBackButton()V

    .line 138
    invoke-virtual {p0}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/settings/ClearAllDataConfirm;->isFindPhoneNeeded(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mFindPhoneNeeded:Z

    .line 139
    const-string v0, "ClearAllDataConfirm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFindPhoneNeeded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mFindPhoneNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mFindPhoneNeeded:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mVivoAccountExplain:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mVivoAccountExplain:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method
