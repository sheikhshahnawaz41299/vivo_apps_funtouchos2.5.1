.class final Lcom/android/settings/users/UserSettings$14;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x7f0b0658

    .line 1037
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-static {p1}, Lcom/android/settings/users/UserSettings$UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserSettings$UserCapabilities;

    move-result-object v3

    .line 1039
    .local v3, "userCaps":Lcom/android/settings/users/UserSettings$UserCapabilities;
    iget-boolean v4, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v4, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-object v2

    .line 1042
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1043
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1044
    .local v0, "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1045
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1046
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    iget-boolean v4, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-eqz v4, :cond_0

    .line 1049
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1050
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    iget-boolean v4, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v4, :cond_2

    const v4, 0x7f0b065a

    :goto_1
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1053
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1054
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1050
    :cond_2
    const v4, 0x7f0b065b

    goto :goto_1
.end method
