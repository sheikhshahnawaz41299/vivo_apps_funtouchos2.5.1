.class public Lcom/vivo/settings/deviceinfo/VivoStorageItem;
.super Landroid/preference/Preference;
.source "VivoStorageItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/Intent;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleRes"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "isInformation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/vivo/settings/deviceinfo/VivoStorageItem;->setTitle(I)V

    .line 13
    if-eqz p3, :cond_0

    .line 14
    invoke-virtual {p0, p3}, Lcom/vivo/settings/deviceinfo/VivoStorageItem;->setIntent(Landroid/content/Intent;)V

    .line 16
    const v0, 0x7f04009f

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoStorageItem;->setLayoutResource(I)V

    .line 18
    :cond_0
    if-eqz p4, :cond_1

    .line 19
    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoStorageItem;->setEnabled(Z)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoStorageItem;->setShouldDisableView(Z)V

    .line 21
    invoke-virtual {p0, v1}, Lcom/vivo/settings/deviceinfo/VivoStorageItem;->setSelectable(Z)V

    .line 24
    :cond_1
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/vivo/settings/deviceinfo/VivoStorageItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method
