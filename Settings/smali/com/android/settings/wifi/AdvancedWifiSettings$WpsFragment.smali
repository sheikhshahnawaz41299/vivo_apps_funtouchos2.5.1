.class public Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;
.super Landroid/app/DialogFragment;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WpsFragment"
.end annotation


# static fields
.field private static mWpsSetup:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 341
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "wpsSetup"    # I

    .prologue
    .line 344
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 345
    sput p1, Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;->mWpsSetup:I

    .line 346
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 350
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;->mWpsSetup:I

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
