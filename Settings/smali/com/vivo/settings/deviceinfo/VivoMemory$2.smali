.class Lcom/vivo/settings/deviceinfo/VivoMemory$2;
.super Landroid/os/AsyncTask;
.source "VivoMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/deviceinfo/VivoMemory;->mount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/vivo/settings/deviceinfo/VivoMemory;Landroid/os/storage/IMountService;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    iput-object p2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 330
    :try_start_0
    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->val$mountService:Landroid/os/storage/IMountService;

    if-eqz v3, :cond_5

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "checked":Z
    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v3}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$100(Lcom/vivo/settings/deviceinfo/VivoMemory;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v3}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$200(Lcom/vivo/settings/deviceinfo/VivoMemory;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$100(Lcom/vivo/settings/deviceinfo/VivoMemory;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/settings/StorageManagerWrapper;->getStorageType(Ljava/lang/String;)Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    move-result-object v3

    sget-object v4, Lcom/vivo/settings/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/vivo/settings/StorageManagerWrapper$StorageType;

    if-ne v3, v4, :cond_4

    .line 334
    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v3}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$200(Lcom/vivo/settings/deviceinfo/VivoMemory;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$100(Lcom/vivo/settings/deviceinfo/VivoMemory;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "state":Ljava/lang/String;
    const-string v3, "unmounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 336
    :cond_0
    const/4 v0, 0x1

    .line 343
    .end local v2    # "state":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 344
    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v4, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v4}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$100(Lcom/vivo/settings/deviceinfo/VivoMemory;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 349
    .end local v0    # "checked":Z
    :cond_2
    :goto_1
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 352
    :goto_2
    return-object v3

    .line 338
    .restart local v0    # "checked":Z
    .restart local v2    # "state":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v3}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$300(Lcom/vivo/settings/deviceinfo/VivoMemory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    .end local v0    # "checked":Z
    .end local v2    # "state":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 352
    .local v1, "ex":Landroid/os/RemoteException;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    .line 340
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "checked":Z
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v3}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$100(Lcom/vivo/settings/deviceinfo/VivoMemory;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 341
    const/4 v0, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "checked":Z
    :cond_5
    const-string v3, "VivoMemory"

    const-string v4, "Mount service is null, can\'t mount"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 322
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sucess"    # Ljava/lang/Boolean;

    .prologue
    .line 357
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 322
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method
