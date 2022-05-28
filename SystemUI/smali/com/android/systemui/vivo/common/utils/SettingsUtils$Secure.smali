.class public final Lcom/android/systemui/vivo/common/utils/SettingsUtils$Secure;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/utils/SettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Secure;->getInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "logTag"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SettingsUtils;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 151
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    .end local p2    # "defaultValue":I
    :try_start_1
    monitor-exit v2

    .line 155
    .end local p3    # "logTag":Ljava/lang/String;
    :goto_0
    return p2

    .line 152
    .restart local p2    # "defaultValue":I
    .restart local p3    # "logTag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz p3, :cond_0

    .end local p3    # "logTag":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntSecureSettings["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] catch SQLiteDiskIOException, return default["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    monitor-exit v2

    goto :goto_0

    .line 157
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    .end local p2    # "defaultValue":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 153
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local p2    # "defaultValue":I
    .restart local p3    # "logTag":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string p3, "CommonUtils"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Secure;->putInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "logTag"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SettingsUtils;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 167
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 171
    .end local p3    # "logTag":Ljava/lang/String;
    :goto_0
    return v1

    .line 168
    .restart local p3    # "logTag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz p3, :cond_0

    .end local p3    # "logTag":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putIntSecureSettings["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] catch SQLiteDiskIOException, put value["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 173
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 169
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local p3    # "logTag":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string p3, "CommonUtils"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
