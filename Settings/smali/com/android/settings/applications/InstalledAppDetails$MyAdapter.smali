.class Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 2493
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p2, "x1"    # Lcom/android/settings/applications/InstalledAppDetails$1;

    .prologue
    .line 2493
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$2600(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$2600(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 2493
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;->getItem(I)Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2509
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2516
    if-nez p2, :cond_0

    .line 2517
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    :goto_0
    move-object v0, v1

    .line 2522
    check-cast v0, Landroid/widget/TextView;

    .line 2523
    .local v0, "text":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$2600(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;

    iget-object v2, v2, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2525
    return-object v1

    .line 2519
    .end local v0    # "text":Landroid/widget/TextView;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2501
    const/4 v0, 0x1

    return v0
.end method
