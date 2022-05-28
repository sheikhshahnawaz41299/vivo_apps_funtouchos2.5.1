.class Lcom/vivo/settings/deviceinfo/VivoMemory$3;
.super Landroid/os/AsyncTask;
.source "VivoMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/deviceinfo/VivoMemory;->doUnmount()V
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
    .line 386
    iput-object p1, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$3;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    iput-object p2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$3;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v2, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$3;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v2}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$100(Lcom/vivo/settings/deviceinfo/VivoMemory;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 396
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 399
    :goto_0
    return-object v1

    .line 397
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 386
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "sucess"    # Ljava/lang/Boolean;

    .prologue
    .line 404
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$3;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$500(Lcom/vivo/settings/deviceinfo/VivoMemory;I)V

    .line 407
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 386
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/deviceinfo/VivoMemory$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$3;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v0}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$400(Lcom/vivo/settings/deviceinfo/VivoMemory;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 390
    return-void
.end method
