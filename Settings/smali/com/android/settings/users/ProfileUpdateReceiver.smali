.class public Lcom/android/settings/users/ProfileUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileUpdateReceiver.java"


# static fields
.field private static final KEY_PROFILE_NAME_COPIED_ONCE:Ljava/lang/String; = "name_copied_once"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static copyProfileName(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 52
    const-string v4, "profile"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "name_copied_once"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 58
    .local v3, "userId":I
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 59
    .local v2, "um":Landroid/os/UserManager;
    invoke-static {p0, v5}, Lcom/android/settings/Utils;->getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "profileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 61
    invoke-virtual {v2, v3, v1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "name_copied_once"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    const-string v0, "ProfileUpdateReceiver"

    const-string v1, "Profile photo changed, get the PROFILE_CHANGED receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Lcom/android/settings/users/ProfileUpdateReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/ProfileUpdateReceiver$1;-><init>(Lcom/android/settings/users/ProfileUpdateReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/users/ProfileUpdateReceiver$1;->start()V

    .line 49
    return-void
.end method
