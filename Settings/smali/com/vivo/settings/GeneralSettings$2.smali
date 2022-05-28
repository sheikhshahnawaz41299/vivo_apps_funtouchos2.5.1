.class Lcom/vivo/settings/GeneralSettings$2;
.super Ljava/util/TimerTask;
.source "GeneralSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/GeneralSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/GeneralSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/GeneralSettings;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/vivo/settings/GeneralSettings$2;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings$2;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v0}, Lcom/vivo/settings/GeneralSettings;->access$500(Lcom/vivo/settings/GeneralSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vivo/settings/GeneralSettings$2$1;

    invoke-direct {v1, p0}, Lcom/vivo/settings/GeneralSettings$2$1;-><init>(Lcom/vivo/settings/GeneralSettings$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method
