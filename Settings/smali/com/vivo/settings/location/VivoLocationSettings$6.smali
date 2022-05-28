.class Lcom/vivo/settings/location/VivoLocationSettings$6;
.super Ljava/lang/Object;
.source "VivoLocationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/location/VivoLocationSettings;->updateAppLocPermission()V
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
    .line 391
    iput-object p1, p0, Lcom/vivo/settings/location/VivoLocationSettings$6;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 395
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings$6;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    invoke-static {v2}, Lcom/vivo/settings/location/VivoLocationSettings;->access$200(Lcom/vivo/settings/location/VivoLocationSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings$6;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    invoke-static {v2}, Lcom/vivo/settings/location/VivoLocationSettings;->access$200(Lcom/vivo/settings/location/VivoLocationSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;

    .line 397
    .local v1, "permission":Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;
    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings$6;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    iget-object v3, v1, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;->packageName:Ljava/lang/String;

    iget v4, v1, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;->permissionValue:I

    add-int/lit16 v5, v0, 0x3e8

    invoke-static {v2, v3, v4, v5}, Lcom/vivo/settings/location/VivoLocationSettings;->access$300(Lcom/vivo/settings/location/VivoLocationSettings;Ljava/lang/String;II)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    .end local v1    # "permission":Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings$6;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vivo/settings/location/VivoLocationSettings;->access$402(Lcom/vivo/settings/location/VivoLocationSettings;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 400
    return-void
.end method
