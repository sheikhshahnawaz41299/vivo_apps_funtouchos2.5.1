.class Lcom/android/settings/notification/ZenModeSettings$2;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$2;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingSelected(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$2;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/ZenModeSettings;->showConditionSelection(I)V

    .line 169
    :cond_0
    return-void
.end method
