.class public Lcom/vivo/settings/ProfileSettings;
.super Lcom/vivo/settings/VivoListFragment;
.source "ProfileSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/ProfileSettings$EditProfileDialog;,
        Lcom/vivo/settings/ProfileSettings$ProfileInfo;
    }
.end annotation


# static fields
.field public static final PROFILE_COUNT:Ljava/lang/String; = "profile_count"

.field public static final PROFILE_NAME:Ljava/lang/String; = "profileName"

.field public static final PROFILE_VOLUME:Ljava/lang/String; = "profileVolume"

.field public static final SELECTED_PROFILE:Ljava/lang/String; = "selectedProfile"

.field public static final STORED_NORMAL_VOLUME:Ljava/lang/String; = "storedNormalVolume"

.field private static final TAG:Ljava/lang/String; = "ProfileSettings"

.field public static final mType:I = 0x2


# instance fields
.field private mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/settings/SingleChoiseAdapter",
            "<",
            "Lcom/vivo/settings/ProfileSettings$ProfileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

.field private mHandler:Landroid/os/Handler;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/ProfileSettings$ProfileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowWhenResumed:Z

.field private mSimUtils:Lcom/vivo/settings/SimUtils;

.field private mSystemProfiles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vivo/settings/VivoListFragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mHandler:Landroid/os/Handler;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/ProfileSettings;->mShowWhenResumed:Z

    .line 100
    new-instance v0, Lcom/vivo/settings/ProfileSettings$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/ProfileSettings$1;-><init>(Lcom/vivo/settings/ProfileSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 441
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/ProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/ProfileSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vivo/settings/ProfileSettings;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/vivo/settings/ProfileSettings;->checkName(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SimUtils;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vivo/settings/ProfileSettings;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vivo/settings/ProfileSettings;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/vivo/settings/ProfileSettings;->isProfileEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/ProfileSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getUserProfileCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vivo/settings/ProfileSettings;Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;
    .param p1, "x1"    # Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/SingleChoiseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/ProfileSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vivo/settings/ProfileSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vivo/settings/ProfileSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vivo/settings/ProfileSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/settings/ProfileSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/settings/ProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ProfileSettings;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->saveUserProfile()V

    return-void
.end method

.method private checkName(ILjava/lang/String;)Z
    .locals 7
    .param p1, "pos"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 420
    const/4 v1, 0x4

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v5}, Lcom/vivo/settings/SingleChoiseAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 421
    if-eq p1, v1, :cond_0

    .line 422
    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v5, v1}, Lcom/vivo/settings/SingleChoiseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    invoke-virtual {v5}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 434
    :goto_1
    return v5

    .line 420
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mSystemProfiles:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 429
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 430
    goto :goto_1

    .line 428
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 434
    .end local v4    # "string":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private getSelectProfile()I
    .locals 4

    .prologue
    .line 294
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "selectedProfile"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 295
    .local v0, "profile":I
    const-string v1, "ProfileSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectProfile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v0
.end method

.method private getStoredNormalVolume()I
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "storedNormalVolume"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getUserProfileCount()I
    .locals 4

    .prologue
    .line 339
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "profile_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 340
    .local v0, "count":I
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    .line 341
    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 342
    :cond_1
    return v0
.end method

.method private getUserProfileInfo(I)Lcom/vivo/settings/ProfileSettings$ProfileInfo;
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 330
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    const/4 v2, 0x0

    .line 335
    :goto_0
    return-object v2

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileVolume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 335
    .local v1, "volume":I
    new-instance v2, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    invoke-direct {v2, v0, v1}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private isProfileEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 438
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private saveUserProfile()V
    .locals 5

    .prologue
    .line 316
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 318
    const-string v2, "profile_count"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 326
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 327
    return-void

    .line 320
    :cond_1
    const-string v2, "profile_count"

    iget-object v3, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 321
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    if-ge v1, v2, :cond_0

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    invoke-virtual {v2}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileVolume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    invoke-virtual {v2}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getVolume()I

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setProfileStatic(I)V
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 284
    const-string v0, "ProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selectedProfile"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    return-void
.end method

.method private setVibrateSetting(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 304
    const-string v1, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVibrateSetting("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    if-eqz p1, :cond_1

    move v0, v2

    .line 309
    .local v0, "vibrateSetting":I
    :goto_1
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 311
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 313
    return-void

    .end local v0    # "vibrateSetting":I
    :cond_0
    move v1, v3

    .line 305
    goto :goto_0

    :cond_1
    move v0, v3

    .line 307
    goto :goto_1
.end method

.method private updateState()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x2

    .line 116
    iget-object v6, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-virtual {v6}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v6, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 120
    .local v1, "ringMode":I
    if-eq v1, v9, :cond_4

    move v2, v4

    .line 121
    .local v2, "silentOrVibrateMode":Z
    :goto_1
    iget-object v6, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 123
    .local v0, "callVibrateSetting":I
    const-string v6, "ProfileSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateState[CMCC] silentOrVibrateMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " callVibrateSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz v0, :cond_5

    move v3, v4

    .line 125
    .local v3, "vibrateSetting":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 126
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getSelectProfile()I

    move-result v6

    if-lt v6, v10, :cond_2

    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getSelectProfile()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-direct {p0, v6}, Lcom/vivo/settings/ProfileSettings;->getUserProfileInfo(I)Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getVolume()I

    move-result v6

    if-eqz v6, :cond_3

    .line 127
    :cond_2
    if-eqz v3, :cond_6

    .line 128
    invoke-direct {p0, v4}, Lcom/vivo/settings/ProfileSettings;->setProfileStatic(I)V

    .line 144
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getSelectProfile()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/vivo/settings/SingleChoiseAdapter;->setCheckPos(I)V

    .line 146
    iget-object v4, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v4}, Lcom/vivo/settings/SingleChoiseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .end local v0    # "callVibrateSetting":I
    .end local v2    # "silentOrVibrateMode":Z
    .end local v3    # "vibrateSetting":Z
    :cond_4
    move v2, v5

    .line 120
    goto :goto_1

    .restart local v0    # "callVibrateSetting":I
    .restart local v2    # "silentOrVibrateMode":Z
    :cond_5
    move v3, v5

    .line 124
    goto :goto_2

    .line 130
    .restart local v3    # "vibrateSetting":Z
    :cond_6
    invoke-direct {p0, v5}, Lcom/vivo/settings/ProfileSettings;->setProfileStatic(I)V

    goto :goto_3

    .line 134
    :cond_7
    iget-object v4, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    if-ne v4, v5, :cond_9

    if-eqz v3, :cond_9

    .line 135
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getSelectProfile()I

    move-result v4

    if-lt v4, v10, :cond_8

    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getSelectProfile()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-direct {p0, v4}, Lcom/vivo/settings/ProfileSettings;->getUserProfileInfo(I)Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getVolume()I

    move-result v4

    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 136
    :cond_8
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/vivo/settings/ProfileSettings;->setProfileStatic(I)V

    goto :goto_3

    .line 138
    :cond_9
    iget-object v4, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-lez v4, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getSelectProfile()I

    move-result v4

    if-lt v4, v10, :cond_a

    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getSelectProfile()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-direct {p0, v4}, Lcom/vivo/settings/ProfileSettings;->getUserProfileInfo(I)Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getVolume()I

    move-result v4

    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 140
    :cond_a
    invoke-direct {p0, v9}, Lcom/vivo/settings/ProfileSettings;->setProfileStatic(I)V

    goto :goto_3
.end method

.method private vibrate()V
    .locals 4

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 290
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 291
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    .line 221
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    new-instance v3, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    const v4, 0x7f0b08ba

    invoke-virtual {p0, v4}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    new-instance v3, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    const v4, 0x7f0b08c0

    invoke-virtual {p0, v4}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    new-instance v3, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    const v4, 0x7f0b08bc

    invoke-virtual {p0, v4}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    new-instance v3, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    const v4, 0x7f0b08be

    invoke-virtual {p0, v4}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getUserProfileCount()I

    move-result v1

    .line 226
    .local v1, "userProfileCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 227
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/vivo/settings/ProfileSettings;->getUserProfileInfo(I)Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    new-instance v2, Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getSelectProfile()I

    move-result v4

    iget-object v5, p0, Lcom/vivo/settings/ProfileSettings;->mList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/vivo/settings/SingleChoiseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    .line 230
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {p0, v2}, Lcom/vivo/settings/ProfileSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 231
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 232
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/ProfileSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 154
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 155
    new-instance v1, Lcom/vivo/settings/SimUtils;

    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/settings/ProfileSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 156
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0b08bc

    invoke-virtual {p0, v2}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const v3, 0x7f0b08bd

    invoke-virtual {p0, v3}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0b08ba

    invoke-virtual {p0, v3}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0b08bb

    invoke-virtual {p0, v3}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0b08c0

    invoke-virtual {p0, v3}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f0b08c1

    invoke-virtual {p0, v3}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x7f0b08be

    invoke-virtual {p0, v3}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const v3, 0x7f0b08bf

    invoke-virtual {p0, v3}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/vivo/settings/ProfileSettings;->mSystemProfiles:[Ljava/lang/String;

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 355
    const v0, 0x7f04006b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->dismiss()V

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onDestroy()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    .line 174
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 362
    const/4 v2, 0x4

    if-le p3, v2, :cond_2

    .line 363
    add-int/lit8 v1, p3, -0x1

    .line 364
    .local v1, "selectPos":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v2, v1}, Lcom/vivo/settings/SingleChoiseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    invoke-virtual {v2}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 366
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f0b080b

    invoke-virtual {p0, v4}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x7f0b07fb

    invoke-virtual {p0, v3}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Lcom/vivo/settings/ProfileSettings$3;

    invoke-direct {v3, p0, v1}, Lcom/vivo/settings/ProfileSettings$3;-><init>(Lcom/vivo/settings/ProfileSettings;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 407
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 411
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mDialog:Landroid/app/AlertDialog;

    .line 413
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mDialog:Landroid/app/AlertDialog;

    .line 414
    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 416
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "selectPos":I
    :cond_2
    return v5
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 236
    invoke-super/range {p0 .. p5}, Lcom/vivo/settings/VivoListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 237
    const-string v0, "ProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v0}, Lcom/vivo/settings/SingleChoiseAdapter;->getCount()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v0, p3}, Lcom/vivo/settings/SingleChoiseAdapter;->setCheckPos(I)V

    .line 242
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v0}, Lcom/vivo/settings/SingleChoiseAdapter;->notifyDataSetChanged()V

    .line 243
    invoke-virtual {p0, p3}, Lcom/vivo/settings/ProfileSettings;->setProfile(I)V

    .line 244
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 245
    :cond_2
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->vibrate()V

    .line 247
    :cond_3
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->dismiss()V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/ProfileSettings;->mShowWhenResumed:Z

    .line 183
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onResume()V

    .line 188
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->showBBKBackButton()V

    .line 189
    const v0, 0x7f0b07ac

    invoke-virtual {p0, v0}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/ProfileSettings;->showTitleRightButton(Ljava/lang/CharSequence;)V

    .line 190
    new-instance v0, Lcom/vivo/settings/ProfileSettings$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/ProfileSettings$2;-><init>(Lcom/vivo/settings/ProfileSettings;)V

    invoke-virtual {p0, v0}, Lcom/vivo/settings/ProfileSettings;->onTitleRightButtonPressed(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {p0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b08b9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 202
    iget-boolean v0, p0, Lcom/vivo/settings/ProfileSettings;->mShowWhenResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    if-eqz v0, :cond_0

    .line 203
    iput-boolean v2, p0, Lcom/vivo/settings/ProfileSettings;->mShowWhenResumed:Z

    .line 204
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-virtual {v0, v2}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->show(Z)V

    .line 206
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onStop()V

    .line 211
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mEditProfileDialog:Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->stopSample()V

    .line 214
    :cond_0
    return-void
.end method

.method public setProfile(I)V
    .locals 6
    .param p1, "profile"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 251
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getSelectProfile()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 252
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "storedNormalVolume"

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 254
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 277
    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v0, p1}, Lcom/vivo/settings/SingleChoiseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getVolume()I

    move-result v0

    invoke-virtual {v1, v3, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 280
    :goto_0
    invoke-direct {p0, p1}, Lcom/vivo/settings/ProfileSettings;->setProfileStatic(I)V

    .line 281
    return-void

    .line 256
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 257
    invoke-direct {p0, v4}, Lcom/vivo/settings/ProfileSettings;->setVibrateSetting(Z)V

    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 261
    invoke-direct {p0, v5}, Lcom/vivo/settings/ProfileSettings;->setVibrateSetting(Z)V

    goto :goto_0

    .line 264
    :pswitch_2
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 265
    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getStoredNormalVolume()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getStoredNormalVolume()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/vivo/settings/ProfileSettings;->getStoredNormalVolume()I

    move-result v1

    invoke-virtual {v0, v3, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v3, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 272
    :pswitch_3
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 273
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 274
    invoke-direct {p0, v5}, Lcom/vivo/settings/ProfileSettings;->setVibrateSetting(Z)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
