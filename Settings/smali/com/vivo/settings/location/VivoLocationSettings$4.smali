.class Lcom/vivo/settings/location/VivoLocationSettings$4;
.super Ljava/lang/Object;
.source "VivoLocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/location/VivoLocationSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 222
    iput-object p1, p0, Lcom/vivo/settings/location/VivoLocationSettings$4;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 224
    const-string v0, "LocationSettings"

    const-string v1, "preference pressed ondiss "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings$4;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    invoke-virtual {v0}, Lcom/vivo/settings/location/VivoLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 227
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings$4;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    invoke-static {v0}, Lcom/vivo/settings/location/VivoLocationSettings;->access$100(Lcom/vivo/settings/location/VivoLocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 228
    return-void
.end method
