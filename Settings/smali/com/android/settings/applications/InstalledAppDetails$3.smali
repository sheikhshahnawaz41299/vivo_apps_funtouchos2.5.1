.class Lcom/android/settings/applications/InstalledAppDetails$3;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Lcom/vivo/settings/AsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "itemIcon"    # Landroid/widget/ImageView;

    .prologue
    .line 869
    if-eqz p1, :cond_0

    .line 870
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 872
    :cond_0
    return-void
.end method
