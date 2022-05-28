.class public final Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/utils/SettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

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
    .line 26
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SettingsUtils;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    .end local p2    # "defaultValue":I
    :try_start_1
    monitor-exit v2

    .line 32
    .end local p3    # "logTag":Ljava/lang/String;
    :goto_0
    return p2

    .line 29
    .restart local p2    # "defaultValue":I
    .restart local p3    # "logTag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz p3, :cond_0

    .end local p3    # "logTag":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntSystemSettings["

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

    .line 32
    monitor-exit v2

    goto :goto_0

    .line 34
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    .end local p2    # "defaultValue":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 30
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

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "logTag"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SettingsUtils;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 61
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 62
    :try_start_1
    monitor-exit v3

    move-object p2, v1

    .line 68
    .end local v1    # "value":Ljava/lang/String;
    .end local p2    # "defaultValue":Ljava/lang/String;
    .end local p3    # "logTag":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 64
    .restart local v1    # "value":Ljava/lang/String;
    .restart local p2    # "defaultValue":Ljava/lang/String;
    .restart local p3    # "logTag":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    goto :goto_0

    .line 70
    .end local v1    # "value":Ljava/lang/String;
    .end local p3    # "logTag":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 65
    .restart local p3    # "logTag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz p3, :cond_1

    .end local p3    # "logTag":Ljava/lang/String;
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStringSystemSettings["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] catch SQLiteDiskIOException, return default["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    monitor-exit v3

    goto :goto_0

    .line 66
    .restart local p3    # "logTag":Ljava/lang/String;
    :cond_1
    const-string p3, "CommonUtils"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SettingsUtils;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 76
    :try_start_0
    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 79
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v1, "CommonUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUriFor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] catch SQLiteDiskIOException, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 81
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

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
    .line 42
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SettingsUtils;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 44
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 48
    .end local p3    # "logTag":Ljava/lang/String;
    :goto_0
    return v1

    .line 45
    .restart local p3    # "logTag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz p3, :cond_0

    .end local p3    # "logTag":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putIntSystemSettings["

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

    .line 48
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 50
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 46
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local p3    # "logTag":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string p3, "CommonUtils"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
