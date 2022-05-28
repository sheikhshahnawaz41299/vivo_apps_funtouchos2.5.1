.class Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FactoryAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mFileNameView:Landroid/widget/TextView;

.field public mFileSizeView:Landroid/widget/TextView;

.field public mFileVersion:Landroid/widget/TextView;

.field public mIconView:Landroid/widget/ImageView;

.field public mInstallationIconView:Landroid/widget/ImageView;

.field public mInstallationInstructionView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;->this$1:Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;Lcom/vivo/settings/applications/FactoryAppManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;
    .param p2, "x1"    # Lcom/vivo/settings/applications/FactoryAppManager$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$ViewHolder;-><init>(Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;)V

    return-void
.end method
