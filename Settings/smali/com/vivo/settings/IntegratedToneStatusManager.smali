.class public Lcom/vivo/settings/IntegratedToneStatusManager;
.super Ljava/lang/Object;
.source "IntegratedToneStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/IntegratedToneStatusManager$1;,
        Lcom/vivo/settings/IntegratedToneStatusManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ENTRY_TONES:[Ljava/lang/String;

.field private static final KEY_DTM:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_INPUT:Ljava/lang/String; = "key_input_method_sound"

.field private static final KEY_LOCKSOUND:Ljava/lang/String; = "lock_sounds"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message_sent_sound"

.field private static final KEY_SoundEFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final TAG:Ljava/lang/String; = "IntegratedToneStatusManager"


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntegratedTones:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mIntegratedTonesStatus:[Z

.field private mSettingsObserver:Lcom/vivo/settings/IntegratedToneStatusManager$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sound_effects"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lock_sounds"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "message_sent_sound"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "key_input_method_sound"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/IntegratedToneStatusManager;->ENTRY_TONES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v2, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 31
    iput-object v2, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mSettingsObserver:Lcom/vivo/settings/IntegratedToneStatusManager$SettingsObserver;

    .line 32
    iput-object v2, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTones:Landroid/util/SparseArray;

    .line 35
    new-array v0, v10, [Z

    iput-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTonesStatus:[Z

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 39
    iget-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?)"

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "dtmf_tone"

    aput-object v8, v4, v5

    const-string v5, "sound_effects_enabled"

    aput-object v5, v4, v9

    const/4 v5, 0x2

    const-string v8, "lockscreen_sounds_enabled"

    aput-object v8, v4, v5

    const/4 v5, 0x3

    const-string v8, "message_sent_sound"

    aput-object v8, v4, v5

    const/4 v5, 0x4

    const-string v8, "bbk_input_method_sound"

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 53
    .local v7, "settingsCursor":Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v7, v1, v9, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 55
    new-instance v0, Lcom/vivo/settings/IntegratedToneStatusManager$SettingsObserver;

    invoke-direct {v0, p0, v2}, Lcom/vivo/settings/IntegratedToneStatusManager$SettingsObserver;-><init>(Lcom/vivo/settings/IntegratedToneStatusManager;Lcom/vivo/settings/IntegratedToneStatusManager$1;)V

    iput-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mSettingsObserver:Lcom/vivo/settings/IntegratedToneStatusManager$SettingsObserver;

    .line 56
    iget-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mSettingsObserver:Lcom/vivo/settings/IntegratedToneStatusManager$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 58
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 59
    iget-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTonesStatus:[Z

    aput-boolean v9, v0, v6

    .line 58
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method private getAllTomeState()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 79
    iget-object v3, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTonesStatus:[Z

    iget-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "dtmf_tone"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v3, v2

    .line 81
    iget-object v3, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTonesStatus:[Z

    iget-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "sound_effects_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    aput-boolean v0, v3, v1

    .line 83
    iget-object v3, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTonesStatus:[Z

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    aput-boolean v0, v3, v4

    .line 85
    iget-object v3, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTonesStatus:[Z

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "message_sent_sound"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    aput-boolean v0, v3, v4

    .line 87
    iget-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTonesStatus:[Z

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "bbk_input_method_sound"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    :goto_4
    aput-boolean v1, v0, v3

    .line 89
    return-void

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v0, v2

    .line 81
    goto :goto_1

    :cond_2
    move v0, v2

    .line 83
    goto :goto_2

    :cond_3
    move v0, v2

    .line 85
    goto :goto_3

    :cond_4
    move v1, v2

    .line 87
    goto :goto_4
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mSettingsObserver:Lcom/vivo/settings/IntegratedToneStatusManager$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 109
    iget-object v0, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 111
    :cond_0
    return-void
.end method

.method public registerIntegratedTones(Landroid/preference/CheckBoxPreference;)V
    .locals 3
    .param p1, "tone"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/vivo/settings/IntegratedToneStatusManager;->ENTRY_TONES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 72
    sget-object v2, Lcom/vivo/settings/IntegratedToneStatusManager;->ENTRY_TONES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTones:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method public setEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTones:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTones:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public updateToggles()V
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vivo/settings/IntegratedToneStatusManager;->getAllTomeState()V

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTones:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTones:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/vivo/settings/IntegratedToneStatusManager;->mIntegratedTonesStatus:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method
