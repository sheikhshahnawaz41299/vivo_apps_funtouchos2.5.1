.class Lcom/android/settings/DevelopmentSettings$2;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DevelopmentSettings;->confirmEnableOemUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$2;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1348
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$2;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    .line 1350
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$2;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->access$400(Lcom/android/settings/DevelopmentSettings;)V

    .line 1354
    :goto_0
    return-void

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$2;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->access$500(Lcom/android/settings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
