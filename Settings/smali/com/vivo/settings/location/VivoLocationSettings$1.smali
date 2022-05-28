.class Lcom/vivo/settings/location/VivoLocationSettings$1;
.super Ljava/lang/Object;
.source "VivoLocationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/location/VivoLocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/location/VivoLocationSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/location/VivoLocationSettings;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vivo/settings/location/VivoLocationSettings$1;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings$1;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->access$000(Lcom/vivo/settings/location/VivoLocationSettings;Z)V

    .line 92
    return-void
.end method
