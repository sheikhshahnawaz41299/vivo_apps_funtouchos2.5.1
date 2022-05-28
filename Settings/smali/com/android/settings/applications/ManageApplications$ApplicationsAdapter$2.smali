.class Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcom/vivo/settings/AsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "itemIcon"    # Landroid/widget/ImageView;

    .prologue
    .line 1060
    if-eqz p1, :cond_0

    .line 1061
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1063
    :cond_0
    return-void
.end method
