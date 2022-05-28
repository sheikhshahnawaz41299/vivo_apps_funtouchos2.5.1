.class Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$3;
.super Ljava/lang/Thread;
.source "BBKNfcSettingsTwo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

.field final synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$3;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    iput-object p3, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$3;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    const-string v0, "VivoNfcSettings"

    const-string v1, "switchNfcSim begin show progress"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$3;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$100(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$402(J)J

    .line 250
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$3;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$3;->val$newValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$600(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;I)V

    .line 251
    const-string v0, "VivoNfcSettings"

    const-string v1, "switchNfcSim end "

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$402(J)J

    .line 253
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$3;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-virtual {v0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "VivoNfcSettings"

    const-string v1, "resumed to dismiss progress"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$3;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v0}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$100(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string v0, "VivoNfcSettings"

    const-string v1, "not resumed"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
