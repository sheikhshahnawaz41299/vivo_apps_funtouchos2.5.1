.class Lcom/vivo/settings/location/VivoLocationSettings$2;
.super Ljava/lang/Object;
.source "VivoLocationSettings.java"

# interfaces
.implements Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;


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
    .line 94
    iput-object p1, p0, Lcom/vivo/settings/location/VivoLocationSettings$2;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/drawable/Drawable;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 97
    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method
