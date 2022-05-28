.class public Lcom/vivo/settings/VivoLegalInfo;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoLegalInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/VivoLegalInfo$Supervision;
    }
.end annotation


# static fields
.field private static final DEFAULT_LEGAL_PATH:Ljava/lang/String; = "/system/etc/BBKLEGAL.html.gz"

.field private static final EN_LEGAL_PATH:Ljava/lang/String; = "/system/etc/EN_BBKLEGAL.html.gz"

.field private static final ERROR_BBK_COPYRIGHT:I = 0x0

.field private static final PROPERTY_LEGAL_PATH:Ljava/lang/String; = "ro.config.license_path"

.field private static final TAG:Ljava/lang/String; = "BBKCopyrightFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 130
    return-void
.end method

.method private isSupervisionEnabled()Z
    .locals 2

    .prologue
    .line 52
    const-string v0, "MY"

    const-string v1, "ro.product.customize.bbk"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showErrorAndFinish(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 86
    :goto_0
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoLegalInfo;->removeDialog(I)V

    .line 87
    return-void

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLegalInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b08e0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private startVivoLegeal()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 91
    .local v6, "locale":Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "language":Ljava/lang/String;
    const/4 v3, 0x0

    .line 94
    .local v3, "fileName":Ljava/lang/String;
    const-string v7, "CN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "zh"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    const-string v7, "ro.config.license_path"

    const-string v8, "/system/etc/BBKLEGAL.html.gz"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    const-string v7, "BBKCopyrightFragment"

    const-string v8, "The system property for the legal file is empty."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0, v12}, Lcom/vivo/settings/VivoLegalInfo;->showErrorAndFinish(I)V

    .line 128
    :goto_1
    return-void

    .line 97
    :cond_0
    const-string v7, "ro.config.license_path"

    const-string v8, "/system/etc/EN_BBKLEGAL.html.gz"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 104
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 106
    :cond_2
    invoke-direct {p0, v12}, Lcom/vivo/settings/VivoLegalInfo;->showErrorAndFinish(I)V

    goto :goto_1

    .line 110
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, ".gz"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 113
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "text/html"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    :goto_2
    const-string v7, "android.intent.extra.TITLE"

    const v8, 0x7f0b08df

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoLegalInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v7, "com.android.htmlviewer"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/vivo/settings/VivoLegalInfo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "BBKCopyrightFragment"

    const-string v8, "Failed to find viewer"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    invoke-direct {p0, v12}, Lcom/vivo/settings/VivoLegalInfo;->showErrorAndFinish(I)V

    goto :goto_1

    .line 115
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "text/html"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vivo/settings/VivoLegalInfo;->isSupervisionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const-string v0, "supervision"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoLegalInfo;->removePreference(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const-string v0, "BBKCopyrightFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const v0, 0x7f060059

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoLegalInfo;->addPreferencesFromResource(I)V

    .line 30
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLegalInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/VivoLegalInfo;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 31
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 61
    const-string v0, "BBKCopyrightFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick preference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "key":Ljava/lang/String;
    const-string v0, "copyright"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/vivo/settings/VivoLegalInfo;->startVivoLegeal()V

    move v0, v7

    .line 70
    :goto_0
    return v0

    .line 66
    :cond_0
    const-string v0, "supervision"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-class v0, Lcom/vivo/settings/VivoLegalInfo$Supervision;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b09a4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/settings/VivoLegalInfo;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v7

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 35
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 36
    const v0, 0x7f0b0318

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoLegalInfo;->setTitle(I)V

    .line 37
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLegalInfo;->showBBKBackButton()V

    .line 38
    invoke-virtual {p0}, Lcom/vivo/settings/VivoLegalInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/VivoLegalInfo;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "terms"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 41
    invoke-direct {p0}, Lcom/vivo/settings/VivoLegalInfo;->updateList()V

    .line 42
    return-void
.end method
