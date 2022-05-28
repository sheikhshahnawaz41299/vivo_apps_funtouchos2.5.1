.class final Lcom/vivo/settings/LightSettings$SettingsObserver;
.super Ljava/lang/Object;
.source "LightSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/LightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/LightSettings;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/LightSettings;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/vivo/settings/LightSettings$SettingsObserver;->this$0:Lcom/vivo/settings/LightSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/LightSettings;Lcom/vivo/settings/LightSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/LightSettings;
    .param p2, "x1"    # Lcom/vivo/settings/LightSettings$1;

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/vivo/settings/LightSettings$SettingsObserver;-><init>(Lcom/vivo/settings/LightSettings;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 278
    const-string v0, "LightSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update mOnTrackingTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/LightSettings$SettingsObserver;->this$0:Lcom/vivo/settings/LightSettings;

    invoke-static {v2}, Lcom/vivo/settings/LightSettings;->access$300(Lcom/vivo/settings/LightSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/vivo/settings/LightSettings$SettingsObserver;->this$0:Lcom/vivo/settings/LightSettings;

    invoke-static {v0}, Lcom/vivo/settings/LightSettings;->access$300(Lcom/vivo/settings/LightSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/vivo/settings/LightSettings$SettingsObserver;->this$0:Lcom/vivo/settings/LightSettings;

    invoke-virtual {v0}, Lcom/vivo/settings/LightSettings;->updateBrightness()V

    .line 281
    const-string v0, "LightSettings"

    const-string v1, "SettingsObserver.update"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    return-void
.end method
