.class Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;
.super Ljava/lang/Object;
.source "VivoLocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/location/VivoLocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationPermission"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field permissionValue:I

.field final synthetic this$0:Lcom/vivo/settings/location/VivoLocationSettings;


# direct methods
.method public constructor <init>(Lcom/vivo/settings/location/VivoLocationSettings;Ljava/lang/String;I)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 476
    iput-object p1, p0, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p2, p0, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;->packageName:Ljava/lang/String;

    .line 478
    iput p3, p0, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;->permissionValue:I

    .line 479
    return-void
.end method
