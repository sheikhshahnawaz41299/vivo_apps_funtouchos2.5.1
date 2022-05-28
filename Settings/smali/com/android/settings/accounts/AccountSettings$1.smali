.class Lcom/android/settings/accounts/AccountSettings$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 214
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$1;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$1;->this$0:Lcom/android/settings/accounts/AccountSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/accounts/AccountSettings;->access$100(Lcom/android/settings/accounts/AccountSettings;Z)V

    .line 218
    return-void
.end method
