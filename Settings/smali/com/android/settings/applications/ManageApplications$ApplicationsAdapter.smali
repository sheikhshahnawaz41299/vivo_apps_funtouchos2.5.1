.class Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedImage:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private final mFilterMode:I

.field private mLastSortMode:I

.field private mResumed:Z

.field private final mSession:Lcom/android/settings/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settings/applications/ApplicationsState;

.field private final mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

.field private mWaitingForData:Z

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplications$TabInfo;I)V
    .locals 1
    .param p1, "state"    # Lcom/android/settings/applications/ApplicationsState;
    .param p2, "tab"    # Lcom/android/settings/applications/ManageApplications$TabInfo;
    .param p3, "filterMode"    # I

    .prologue
    .line 821
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 780
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mCachedImage:Landroid/graphics/drawable/Drawable;

    .line 801
    new-instance v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 822
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 823
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/ApplicationsState;->newSession(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 824
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    .line 825
    iget-object v0, p2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 826
    iput p3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 828
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/settings/AsyncImageLoader;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/AsyncImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    .line 832
    :cond_0
    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/ManageApplications$TabInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->releaseCacheMem()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->releaseContext()V

    return-void
.end method

.method private releaseCacheMem()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    invoke-virtual {v0}, Lcom/vivo/settings/AsyncImageLoader;->resetCachedDrawable()V

    .line 794
    :cond_0
    return-void
.end method

.method private releaseContext()V
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 799
    return-void
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 940
    .local p2, "origEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v2, p2

    .line 954
    :cond_1
    return-object v2

    .line 943
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 944
    .local v4, "prefixStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 945
    .local v5, "spacePrefixStr":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .local v2, "newEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 948
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 949
    .local v0, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 950
    .local v3, "nlabel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 951
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1040
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v2, p2}, Lcom/android/settings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;

    move-result-object v1

    .line 1041
    .local v1, "holder":Lcom/android/settings/applications/AppViewHolder;
    iget-object p2, v1, Lcom/android/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 1044
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1045
    .local v0, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 1046
    :try_start_0
    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1047
    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1048
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 1057
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    new-instance v6, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;-><init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/vivo/settings/AsyncImageLoader;->loadDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/widget/ImageView;Lcom/vivo/settings/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mCachedImage:Landroid/graphics/drawable/Drawable;

    .line 1065
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mCachedImage:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 1066
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    invoke-virtual {v3}, Lcom/vivo/settings/AsyncImageLoader;->getDefaultItemIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1070
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 1071
    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 1072
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1073
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0b0377

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1080
    :goto_1
    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 1081
    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 1083
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appOnSdcard:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1084
    invoke-static {}, Lcom/android/settings/applications/ManageApplications;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1085
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appOnSdcard:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f020000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1107
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    return-object p2

    .line 1068
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mCachedImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1105
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1074
    :cond_2
    :try_start_2
    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    .line 1075
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1076
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0b0376

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1078
    :cond_3
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1087
    :cond_4
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appOnSdcard:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1089
    :cond_5
    const-string v2, "persist.sys.new.install.policy"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1090
    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flagsEx:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 1091
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appOnSdcard:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1092
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appOnSdcard:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1094
    :cond_6
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appOnSdcard:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1097
    :cond_7
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appOnSdcard:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1103
    :cond_8
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appOnSdcard:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 1015
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1016
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1019
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1119
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 989
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 982
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 983
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 993
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 994
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppViewHolder;

    .line 995
    .local v0, "holder":Lcom/android/settings/applications/AppViewHolder;
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 996
    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 997
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 998
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications;->access$1900(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1005
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1011
    .end local v0    # "holder":Lcom/android/settings/applications/AppViewHolder;
    :cond_0
    return-void

    .line 998
    .restart local v0    # "holder":Lcom/android/settings/applications/AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 993
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    .line 965
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 968
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1700(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1700(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 973
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 974
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 975
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 976
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 977
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 978
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 961
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 848
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 849
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 851
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .param p1, "sort"    # I

    .prologue
    .line 858
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 863
    :goto_0
    return-void

    .line 861
    :cond_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 862
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 6
    .param p1, "eraseold"    # Z

    .prologue
    const/4 v5, 0x0

    .line 866
    const-string v3, "ManageApplications"

    const-string v4, "Rebuilding app list..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iput v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 876
    iget v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    packed-switch v3, :pswitch_data_0

    .line 892
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->ALL_ENABLED_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 895
    .local v2, "filterObj":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :goto_0
    iget v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v3, :pswitch_data_1

    .line 910
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 913
    .local v0, "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/applications/ApplicationsState$Session;->rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 915
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 936
    :goto_2
    return-void

    .line 878
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v2    # "filterObj":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :pswitch_0
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 879
    .restart local v2    # "filterObj":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    goto :goto_0

    .line 881
    .end local v2    # "filterObj":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :pswitch_1
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 887
    .restart local v2    # "filterObj":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    goto :goto_0

    .line 889
    .end local v2    # "filterObj":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :pswitch_2
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->DISABLED_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 890
    .restart local v2    # "filterObj":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    goto :goto_0

    .line 897
    :pswitch_3
    iget v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v3, :pswitch_data_2

    .line 905
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 906
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_1

    .line 899
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_4
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 900
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_1

    .line 902
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_5
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 903
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_1

    .line 919
    .restart local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :cond_0
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 920
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 921
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 925
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 926
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v3}, Lcom/android/settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 928
    if-nez v1, :cond_2

    .line 929
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 930
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1700(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 923
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_3

    .line 933
    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1700(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 934
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications$TabInfo;->access$1800(Lcom/android/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 876
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 895
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
    .end packed-switch

    .line 897
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->release()V

    .line 855
    return-void
.end method

.method public resume(I)V
    .locals 4
    .param p1, "sort"    # I

    .prologue
    const/4 v3, 0x1

    .line 835
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 837
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 838
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 839
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 840
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 844
    :goto_0
    return-void

    .line 842
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method
