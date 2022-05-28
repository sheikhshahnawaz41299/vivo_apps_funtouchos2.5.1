.class Lcom/android/settings/deviceinfo/UsbSettings$3;
.super Ljava/lang/Thread;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/UsbSettings$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/high16 v10, 0x44800000    # 1024.0f

    .line 235
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$500(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 236
    .local v4, "statFs":Landroid/os/StatFs;
    if-eqz v4, :cond_0

    .line 237
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    mul-long v2, v6, v8

    .line 238
    .local v2, "lUDiskTotalSize":J
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lUDiskTotalSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    long-to-float v5, v2

    div-float/2addr v5, v10

    div-float/2addr v5, v10

    div-float v1, v5, v10

    .line 240
    .local v1, "fUDiskTotalSizeG":F
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 241
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "stored_int_u_disk_totalSize"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "fUDiskTotalSizeG":F
    .end local v2    # "lUDiskTotalSize":J
    .end local v4    # "statFs":Landroid/os/StatFs;
    :cond_0
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "store u disk total size error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
