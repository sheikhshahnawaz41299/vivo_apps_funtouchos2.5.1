.class Lcom/android/settings/users/UserDetailsSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UserDetailsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserDetailsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserDetailsSettings;->access$000(Lcom/android/settings/users/UserDetailsSettings;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v0}, Lcom/android/settings/users/UserDetailsSettings;->finishFragment()V

    .line 87
    :cond_0
    return-void
.end method
