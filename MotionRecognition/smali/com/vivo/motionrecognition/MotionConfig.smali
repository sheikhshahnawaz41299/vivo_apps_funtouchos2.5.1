.class public Lcom/vivo/motionrecognition/MotionConfig;
.super Landroid/app/Application;
.source "MotionConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionConfig"

.field public static mHasCustomGesture:Z = false

.field public static mHasInfraredGesture:Z = false

.field public static mProductName:Ljava/lang/String; = null

.field private static mProductRom:Ljava/lang/String; = null

.field private static final pkgName:Ljava/lang/String; = "com.vivo.smartwakecustomgesture"


# instance fields
.field private refWatcher:Lcom/squareup/leakcanary/RefWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/vivo/motionrecognition/MotionConfig;->mProductRom:Ljava/lang/String;

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/vivo/motionrecognition/MotionConfig;->mProductName:Ljava/lang/String;

    .line 37
    sput-boolean v1, Lcom/vivo/motionrecognition/MotionConfig;->mHasInfraredGesture:Z

    .line 38
    sput-boolean v1, Lcom/vivo/motionrecognition/MotionConfig;->mHasCustomGesture:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 42
    sget-object v0, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    iput-object v0, p0, Lcom/vivo/motionrecognition/MotionConfig;->refWatcher:Lcom/squareup/leakcanary/RefWatcher;

    return-void
.end method

.method public static getRefWatcher(Landroid/content/Context;)Lcom/squareup/leakcanary/RefWatcher;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vivo/motionrecognition/MotionConfig;

    .line 84
    .local v0, "application":Lcom/vivo/motionrecognition/MotionConfig;
    iget-object v1, v0, Lcom/vivo/motionrecognition/MotionConfig;->refWatcher:Lcom/squareup/leakcanary/RefWatcher;

    return-object v1
.end method

.method private isSupportCustomGesture()V
    .locals 5

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionConfig;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vivo.smartwakecustomgesture"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vivo/motionrecognition/MotionConfig;->mHasCustomGesture:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    const-string v2, "MotionConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHasCustomGesture = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/vivo/motionrecognition/MotionConfig;->mHasCustomGesture:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MotionConfig"

    const-string v3, "No Custom Gesture: NameNotFoundException "

    invoke-static {v2, v3}, Lcom/vivo/motionrecognition/Motion_log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 48
    invoke-direct {p0}, Lcom/vivo/motionrecognition/MotionConfig;->isSupportCustomGesture()V

    .line 49
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/motionrecognition/MotionConfig;->refWatcher:Lcom/squareup/leakcanary/RefWatcher;

    .line 79
    return-void
.end method
