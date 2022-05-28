.class public Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;
.super Ljava/lang/Object;
.source "KeyguardParseManager.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final DEFAULT_THEME_ID:Ljava/lang/String; = "default_unlock"

.field private static final TAG:Ljava/lang/String; = "KeyguardParseManager"

.field private static sInstance:Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

.field private mDirty:Z

.field private mKeyguardId:I

.field private mThemeId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mDirty:Z

    .line 17
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mData:Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mKeyguardId:I

    .line 20
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mThemeId:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->sInstance:Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->sInstance:Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->sInstance:Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->sInstance:Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public InitParseManager(Ljava/lang/String;I)V
    .locals 3
    .param p1, "themeId"    # Ljava/lang/String;
    .param p2, "keyguardId"    # I

    .prologue
    .line 39
    const/4 v1, 0x1

    .line 40
    .local v1, "themeIdDirty":Z
    const/4 v0, 0x1

    .line 41
    .local v0, "keyguardIdDirty":Z
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mThemeId:Ljava/lang/String;

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mThemeId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mThemeId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_0
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mKeyguardId:I

    if-ne v2, p2, :cond_4

    .line 48
    const/4 v0, 0x0

    .line 53
    :goto_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_5

    .line 54
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mDirty:Z

    .line 58
    :goto_2
    return-void

    .line 44
    :cond_3
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mThemeId:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_4
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mKeyguardId:I

    goto :goto_1

    .line 56
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mDirty:Z

    goto :goto_2
.end method

.method public getData()Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mData:Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    return-object v0
.end method

.method public getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mData:Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mData:Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;->getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    move-result-object v0

    .line 93
    .local v0, "skin":Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->isLoadFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->isLoadSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    .end local v0    # "skin":Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadData()Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mData:Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    if-eqz v1, :cond_1

    .line 62
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mDirty:Z

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mData:Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    .line 83
    :goto_0
    return-object v1

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mData:Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;->releaseBitmap()V

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mData:Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    .local v0, "skin":Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mKeyguardId:I

    packed-switch v1, :pswitch_data_0

    .line 77
    :goto_1
    if-eqz v0, :cond_2

    .line 78
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mKeyguardId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->setLockScreenId(I)V

    .line 79
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    invoke-direct {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;-><init>(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mData:Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mData:Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;->parseSkinFromXML()V

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mData:Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    goto :goto_0

    .line 73
    :pswitch_0
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    .end local v0    # "skin":Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;-><init>(Landroid/content/Context;)V

    .restart local v0    # "skin":Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
