.class final Lcom/vivo/settings/IntegratedToneStatusManager$SettingsObserver;
.super Ljava/lang/Object;
.source "IntegratedToneStatusManager.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/IntegratedToneStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/IntegratedToneStatusManager;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/IntegratedToneStatusManager;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vivo/settings/IntegratedToneStatusManager$SettingsObserver;->this$0:Lcom/vivo/settings/IntegratedToneStatusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/IntegratedToneStatusManager;Lcom/vivo/settings/IntegratedToneStatusManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/IntegratedToneStatusManager;
    .param p2, "x1"    # Lcom/vivo/settings/IntegratedToneStatusManager$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/vivo/settings/IntegratedToneStatusManager$SettingsObserver;-><init>(Lcom/vivo/settings/IntegratedToneStatusManager;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager$SettingsObserver;->this$0:Lcom/vivo/settings/IntegratedToneStatusManager;

    invoke-virtual {v0}, Lcom/vivo/settings/IntegratedToneStatusManager;->updateToggles()V

    .line 66
    return-void
.end method
