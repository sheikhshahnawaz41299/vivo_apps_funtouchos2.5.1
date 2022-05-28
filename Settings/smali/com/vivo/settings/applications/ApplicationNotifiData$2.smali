.class Lcom/vivo/settings/applications/ApplicationNotifiData$2;
.super Landroid/os/FileObserver;
.source "ApplicationNotifiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/applications/ApplicationNotifiData;->observeChangeableListServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;


# direct methods
.method constructor <init>(Lcom/vivo/settings/applications/ApplicationNotifiData;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$2;->this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 186
    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 187
    const-string v0, "ApplicationNotifiData"

    const-string v1, "observeChangeableListServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$2;->this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

    const-string v1, "/data/bbkcore/changeable_shield_list_server.xml"

    iget-object v2, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$2;->this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

    invoke-static {v2}, Lcom/vivo/settings/applications/ApplicationNotifiData;->access$200(Lcom/vivo/settings/applications/ApplicationNotifiData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/settings/applications/ApplicationNotifiData;->access$300(Lcom/vivo/settings/applications/ApplicationNotifiData;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 190
    :cond_0
    return-void
.end method
