.class Lcom/android/settings/dashboard/DashboardSummary$2;
.super Landroid/widget/BaseAdapter;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 174
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->access$200(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
