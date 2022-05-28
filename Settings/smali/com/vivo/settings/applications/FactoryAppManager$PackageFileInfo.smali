.class Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;
.super Ljava/lang/Object;
.source "FactoryAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/FactoryAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageFileInfo"
.end annotation


# instance fields
.field public isInstalled:Z

.field public mApkInfo:Landroid/content/pm/ApplicationInfo;

.field public mFileIcon:Landroid/graphics/drawable/Drawable;

.field public mFileName:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mFileVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/vivo/settings/applications/FactoryAppManager;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/applications/FactoryAppManager;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/applications/FactoryAppManager;Lcom/vivo/settings/applications/FactoryAppManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager;
    .param p2, "x1"    # Lcom/vivo/settings/applications/FactoryAppManager$1;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;-><init>(Lcom/vivo/settings/applications/FactoryAppManager;)V

    return-void
.end method
