.class Lcom/android/settings/DevelopmentSettings$1;
.super Landroid/database/ContentObserver;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "isChecked":Z
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v2}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v2}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "development_settings_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 268
    :goto_0
    if-nez v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v1}, Lcom/android/settings/DevelopmentSettings;->access$000(Lcom/android/settings/DevelopmentSettings;)V

    .line 270
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v1, v0}, Lcom/android/settings/DevelopmentSettings;->access$102(Lcom/android/settings/DevelopmentSettings;Z)Z

    .line 271
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v1}, Lcom/android/settings/DevelopmentSettings;->access$200(Lcom/android/settings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v2}, Lcom/android/settings/DevelopmentSettings;->access$100(Lcom/android/settings/DevelopmentSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 272
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v2}, Lcom/android/settings/DevelopmentSettings;->access$100(Lcom/android/settings/DevelopmentSettings;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/DevelopmentSettings;->access$300(Lcom/android/settings/DevelopmentSettings;Z)V

    .line 275
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 266
    goto :goto_0
.end method
