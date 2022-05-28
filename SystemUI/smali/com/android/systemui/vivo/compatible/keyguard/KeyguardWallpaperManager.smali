.class public Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;
.super Ljava/lang/Object;
.source "KeyguardWallpaperManager.java"


# static fields
.field private static final BLUR_RADIUS:I = 0xf

.field private static final COVER_COLORS:[I

.field private static final KEY_NAME_USE_LIVEWALLPAPER:Ljava/lang/String; = "key_name_use_livewallpaper"

.field private static final PREFS_NAME:Ljava/lang/String; = "vivo_keyguard_wallpaper_prefs"

.field public static final TAG:Ljava/lang/String; = "KeyguardWallpaperManager"

.field private static final TEMP_LIVE_WALLPAPER:Ljava/lang/String; = "/data/bbkcore/background/livewallpaper.png"

.field private static final WALLPAPER_COLORS:[I

.field private static sInstance:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;


# instance fields
.field private mBlurWallpaper:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mLiveWallpaper:Landroid/graphics/Bitmap;

.field private mShowLiveWallpaper:Z

.field private mVWM:Lcom/vivo/common/utils/VivoWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-array v0, v3, [I

    const/high16 v1, -0x4c000000

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->COVER_COLORS:[I

    .line 37
    new-array v0, v3, [I

    aput v2, v0, v2

    sput-object v0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->WALLPAPER_COLORS:[I

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->sInstance:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Lcom/vivo/common/utils/VivoWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/vivo/common/utils/VivoWallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mVWM:Lcom/vivo/common/utils/VivoWallpaperManager;

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->initLiveWallpaperFlag()V

    .line 49
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->sInstance:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->sInstance:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->sInstance:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->sInstance:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initLiveWallpaperFlag()V
    .locals 3

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->readFromPrefs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mShowLiveWallpaper:Z

    .line 215
    const-string v0, "KeyguardWallpaperManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mShowLiveWallpaper:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private readFromPrefs()Z
    .locals 5

    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mContext:Landroid/content/Context;

    const-string v3, "vivo_keyguard_wallpaper_prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 208
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "key_name_use_livewallpaper"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 209
    .local v1, "use":Z
    const-string v2, "KeyguardWallpaperManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read prefs use ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return v1
.end method

.method private writeToPrefs(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mContext:Landroid/content/Context;

    const-string v3, "vivo_keyguard_wallpaper_prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 201
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_name_use_livewallpaper"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    return-void
.end method


# virtual methods
.method public checkIfLauncherUsingLiveWallpaper()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 223
    iget-object v2, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mContext:Landroid/content/Context;

    const-string v5, "wallpaper"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 224
    .local v1, "wm":Landroid/app/WallpaperManager;
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 225
    .local v0, "info":Landroid/app/WallpaperInfo;
    const-string v5, "KeyguardWallpaperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WallpaperManager show ="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    if-eqz v0, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 225
    goto :goto_0

    :cond_1
    move v3, v4

    .line 226
    goto :goto_1
.end method

.method public checkIfLockscreenUsingLiveWallpaper()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mVWM:Lcom/vivo/common/utils/VivoWallpaperManager;

    invoke-virtual {v0}, Lcom/vivo/common/utils/VivoWallpaperManager;->isLiveWallpaper()Z

    move-result v0

    return v0
.end method

.method public getBlurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "wallpaper"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v1, 0xf

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->ifShowLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->COVER_COLORS:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 130
    .local v6, "blurWallpaper":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mBlurWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 135
    :cond_0
    iput-object v6, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mBlurWallpaper:Landroid/graphics/Bitmap;

    return-object v0

    .line 123
    .end local v6    # "blurWallpaper":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 124
    :cond_2
    move-object v6, p1

    .restart local v6    # "blurWallpaper":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 126
    .end local v6    # "blurWallpaper":Landroid/graphics/Bitmap;
    :cond_3
    const v2, 0x3dcccccd    # 0.1f

    const/16 v4, 0x8c

    move-object v0, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/vivo/common/keyguard/utils/BlurFilter;->blur(Landroid/graphics/Bitmap;IFIIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "blurWallpaper":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getGrayValue(IIII)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 143
    .local v2, "grayValue":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 146
    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/utils/BitmapUtils;->getGrayValue(Landroid/graphics/Bitmap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 153
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return v2

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KeyguardWallpaperManager"

    const-string v4, "get keyguard gray value failed"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getGrayValueLiveWallpaper(IIII)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "grayValue":I
    const/4 v0, 0x0

    .line 160
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mLiveWallpaper:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mLiveWallpaper:Landroid/graphics/Bitmap;

    invoke-static {v3, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/utils/BitmapUtils;->getGrayValue(Landroid/graphics/Bitmap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 169
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 171
    const/4 v0, 0x0

    .line 174
    :cond_1
    :goto_0
    return v2

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "KeyguardWallpaperManager"

    const-string v4, "get keyguard live wallpaper  gray value failed"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 171
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 171
    const/4 v0, 0x0

    :cond_2
    throw v3
.end method

.method public getLiveWallpaper()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 105
    const-string v1, "KeyguardWallpaperManager"

    const-string v2, "getLiveWallpaper"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "tempLiveWallpaper":Landroid/graphics/Bitmap;
    const-string v1, "/data/bbkcore/background/livewallpaper.png"

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mLiveWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mLiveWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mLiveWallpaper:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mLiveWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mLiveWallpaper:Landroid/graphics/Bitmap;

    .line 112
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mLiveWallpaper:Landroid/graphics/Bitmap;

    .line 114
    iget-object v1, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mLiveWallpaper:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public getScreenShot(IIII)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 235
    .local v3, "findResult":Z
    :try_start_0
    const-string v6, "android.view.SurfaceControl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 236
    .local v5, "screenClass":Ljava/lang/Class;
    const-string v6, "screenshot"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/graphics/Rect;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 238
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    const/4 v3, 0x1

    .line 245
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "screenClass":Ljava/lang/Class;
    :goto_0
    if-nez v3, :cond_0

    .line 247
    :try_start_1
    const-string v6, "android.view.SurfaceControl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 248
    .restart local v5    # "screenClass":Ljava/lang/Class;
    const-string v6, "screenshot"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 250
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    const/4 v3, 0x1

    .line 257
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "screenClass":Ljava/lang/Class;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 259
    :try_start_2
    const-string v6, "android.view.Surface"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 260
    .restart local v5    # "screenClass":Ljava/lang/Class;
    const-string v6, "screenshot"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 262
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 263
    const/4 v3, 0x1

    .line 268
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "screenClass":Ljava/lang/Class;
    :cond_1
    :goto_2
    if-nez v1, :cond_2

    .line 269
    iget-object v6, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02025e

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 271
    :cond_2
    return-object v1

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 252
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 253
    .restart local v2    # "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_1

    .line 264
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    .line 265
    .restart local v2    # "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getWallpaper()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->ifShowLiveWallpaper()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const-string v2, "KeyguardWallpaperManager"

    const-string v3, "keyguard using live wallpaper"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v2, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->WALLPAPER_COLORS:[I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    .local v1, "wallpaper":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    if-eq v2, v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    .line 100
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    .line 101
    iget-object v2, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    return-object v2

    .line 80
    .end local v1    # "wallpaper":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mVWM:Lcom/vivo/common/utils/VivoWallpaperManager;

    invoke-virtual {v2, v3}, Lcom/vivo/common/utils/VivoWallpaperManager;->getLockScreen(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "tempwallpaper":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 82
    const-string v2, "KeyguardWallpaperManager"

    const-string v3, "get keyguard wallpaper failed"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v2, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->COVER_COLORS:[I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "wallpaper":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 85
    .end local v1    # "wallpaper":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_3

    .line 86
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 87
    .restart local v1    # "wallpaper":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    .end local v1    # "wallpaper":Landroid/graphics/Bitmap;
    :cond_3
    move-object v1, v0

    .restart local v1    # "wallpaper":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public ifShowLiveWallpaper()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mShowLiveWallpaper:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->canShowLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 282
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mWallpaper:Landroid/graphics/Bitmap;

    .line 284
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mBlurWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 288
    return-void
.end method

.method public requestUpdateWallpaper()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mVWM:Lcom/vivo/common/utils/VivoWallpaperManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/common/utils/VivoWallpaperManager;->getLockScreen(Z)Landroid/graphics/Bitmap;

    .line 179
    return-void
.end method

.method public reshowLiveWallpaperIfNeed()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->initLiveWallpaperFlag()V

    .line 197
    return-void
.end method

.method public showLiveWallpaper(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 182
    const-string v0, "KeyguardWallpaperManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLiveWallpaper ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iput-boolean p1, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mShowLiveWallpaper:Z

    .line 184
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->writeToPrefs(Z)V

    .line 185
    return-void
.end method

.method public showLiveWallpaper(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "retain"    # Z

    .prologue
    .line 188
    const-string v0, "KeyguardWallpaperManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLiveWallpaper ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iput-boolean p1, p0, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->mShowLiveWallpaper:Z

    .line 190
    if-eqz p2, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->writeToPrefs(Z)V

    .line 193
    :cond_0
    return-void
.end method
