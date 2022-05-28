.class Lcom/android/settings/accounts/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSettings;->access$200(Lcom/android/settings/accounts/AccountSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/accounts/AccountSettings;->access$100(Lcom/android/settings/accounts/AccountSettings;Z)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSettings;->finish()V

    goto :goto_0
.end method
