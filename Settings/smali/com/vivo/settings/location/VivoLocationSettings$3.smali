.class Lcom/vivo/settings/location/VivoLocationSettings$3;
.super Ljava/lang/Object;
.source "VivoLocationSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/location/VivoLocationSettings;->onResume()V
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
    .line 180
    iput-object p1, p0, Lcom/vivo/settings/location/VivoLocationSettings$3;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings$3;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->access$000(Lcom/vivo/settings/location/VivoLocationSettings;Z)V

    .line 183
    return-void
.end method
