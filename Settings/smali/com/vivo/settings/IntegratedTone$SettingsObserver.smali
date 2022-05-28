.class final Lcom/vivo/settings/IntegratedTone$SettingsObserver;
.super Ljava/lang/Object;
.source "IntegratedTone.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/IntegratedTone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/IntegratedTone;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/IntegratedTone;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vivo/settings/IntegratedTone$SettingsObserver;->this$0:Lcom/vivo/settings/IntegratedTone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/IntegratedTone;Lcom/vivo/settings/IntegratedTone$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/IntegratedTone;
    .param p2, "x1"    # Lcom/vivo/settings/IntegratedTone$1;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/vivo/settings/IntegratedTone$SettingsObserver;-><init>(Lcom/vivo/settings/IntegratedTone;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vivo/settings/IntegratedTone$SettingsObserver;->this$0:Lcom/vivo/settings/IntegratedTone;

    invoke-virtual {v0}, Lcom/vivo/settings/IntegratedTone;->updateTitleRightButton()V

    .line 91
    iget-object v0, p0, Lcom/vivo/settings/IntegratedTone$SettingsObserver;->this$0:Lcom/vivo/settings/IntegratedTone;

    invoke-virtual {v0}, Lcom/vivo/settings/IntegratedTone;->updateToggles()V

    .line 92
    return-void
.end method
