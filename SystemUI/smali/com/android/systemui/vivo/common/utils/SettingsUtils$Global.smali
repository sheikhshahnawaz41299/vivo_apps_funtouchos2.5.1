.class public final Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/utils/SettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static WIFI_DISPLAY_ON:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "wifi_display_on"

    sput-object v0, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->WIFI_DISPLAY_ON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->getInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

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
    .line 94
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SettingsUtils;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    .end local p2    # "defaultValue":I
    :try_start_1
    monitor-exit v2

    .line 100
    .end local p3    # "logTag":Ljava/lang/String;
    :goto_0
    return p2

    .line 97
    .restart local p2    # "defaultValue":I
    .restart local p3    # "logTag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz p3, :cond_0

    .end local p3    # "logTag":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntGlobalSettings["

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

    .line 100
    monitor-exit v2

    goto :goto_0

    .line 102
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    .end local p2    # "defaultValue":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 98
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
    .line 122
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .line 126
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SettingsUtils;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 129
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 130
    :try_start_1
    monitor-exit v3

    move-object p2, v1

    .line 136
    .end local v1    # "value":Ljava/lang/String;
    .end local p2    # "defaultValue":Ljava/lang/String;
    .end local p3    # "logTag":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 132
    .restart local v1    # "value":Ljava/lang/String;
    .restart local p2    # "defaultValue":Ljava/lang/String;
    .restart local p3    # "logTag":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    goto :goto_0

    .line 138
    .end local v1    # "value":Ljava/lang/String;
    .end local p3    # "logTag":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 133
    .restart local p3    # "logTag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz p3, :cond_1

    .end local p3    # "logTag":Ljava/lang/String;
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStirngGlobalSettings["

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

    .line 136
    monitor-exit v3

    goto :goto_0

    .line 134
    .restart local p3    # "logTag":Ljava/lang/String;
    :cond_1
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
    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->putInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

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
    .line 110
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SettingsUtils;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    monitor-exit v2

    .line 116
    .end local p3    # "logTag":Ljava/lang/String;
    :goto_0
    return v1

    .line 113
    .restart local p3    # "logTag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz p3, :cond_0

    .end local p3    # "logTag":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putIntGlobalSettings["

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

    .line 116
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 118
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 114
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local p3    # "logTag":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string p3, "CommonUtils"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
