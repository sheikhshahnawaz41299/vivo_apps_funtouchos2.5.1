.class public Lcom/vivo/settings/preference/VivoLocationPermission;
.super Lcom/vivo/settings/preference/VivoListPreference;
.source "VivoLocationPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoLocationPermission"


# instance fields
.field private mPreferenceCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/vivo/settings/preference/VivoListPreference;-><init>(Landroid/content/Context;)V

    .line 24
    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/vivo/settings/preference/VivoLocationPermission;->setLayoutResource(I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/vivo/settings/preference/VivoListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/vivo/settings/preference/VivoLocationPermission;->setLayoutResource(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public getPreferenceCategory()Landroid/preference/PreferenceCategory;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vivo/settings/preference/VivoLocationPermission;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method public setPreferenceCategory(Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1, "preferenceCategory"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vivo/settings/preference/VivoLocationPermission;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 38
    return-void
.end method
