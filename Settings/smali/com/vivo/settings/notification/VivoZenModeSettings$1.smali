.class Lcom/vivo/settings/notification/VivoZenModeSettings$1;
.super Ljava/lang/Object;
.source "VivoZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/notification/VivoZenModeSettings;->updateShecdulRules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/notification/VivoZenModeSettings;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/vivo/settings/notification/VivoZenModeSettings;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$1;->this$0:Lcom/vivo/settings/notification/VivoZenModeSettings;

    iput-object p2, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$1;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$1;->this$0:Lcom/vivo/settings/notification/VivoZenModeSettings;

    invoke-static {v0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->access$500(Lcom/vivo/settings/notification/VivoZenModeSettings;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$1;->val$args:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$1;->this$0:Lcom/vivo/settings/notification/VivoZenModeSettings;

    const/4 v4, 0x2

    const v5, 0x7f0b079f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 468
    const/4 v0, 0x1

    return v0
.end method
