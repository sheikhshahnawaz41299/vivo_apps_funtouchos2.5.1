.class public Lcom/vivo/SmartKey/n;
.super Ljava/lang/Object;
.source "SharedPreferenceUtils.java"


# static fields
.field private static aa:Z

.field private static ab:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/SmartKey/n;->aa:Z

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/SmartKey/n;->ab:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 26
    const-class v1, Lcom/vivo/SmartKey/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/SmartKey/n;->ab:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 28
    const-string v0, "smartkey"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/vivo/SmartKey/n;->ab:Landroid/content/SharedPreferences;

    .line 30
    :cond_0
    sget-object v0, Lcom/vivo/SmartKey/n;->ab:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/vivo/SmartKey/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/vivo/SmartKey/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 50
    invoke-static {p0}, Lcom/vivo/SmartKey/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {p0}, Lcom/vivo/SmartKey/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 20
    sput-boolean p0, Lcom/vivo/SmartKey/n;->aa:Z

    .line 21
    return-void
.end method

.method public static s()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/vivo/SmartKey/n;->aa:Z

    return v0
.end method
