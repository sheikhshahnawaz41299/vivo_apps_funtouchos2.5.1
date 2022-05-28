.class Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$1;
.super Ljava/lang/Object;
.source "FactoryAppManager.java"

# interfaces
.implements Lcom/vivo/settings/AsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;


# direct methods
.method constructor <init>(Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter$1;->this$1:Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "itemIcon"    # Landroid/widget/ImageView;

    .prologue
    .line 317
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :cond_0
    return-void
.end method
