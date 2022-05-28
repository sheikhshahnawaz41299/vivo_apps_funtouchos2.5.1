.class public Lcom/vivo/settings/notification/VivoZenModeCondition;
.super Lcom/vivo/settings/VivoListFragment;
.source "VivoZenModeCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/notification/VivoZenModeCondition$H;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private fromItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private int_cur_locale_postion:I

.field private mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/settings/SingleChoiseAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/notification/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/vivo/settings/notification/VivoZenModeCondition$H;

.field private final mListener:Landroid/service/notification/IConditionListener;

.field private mNoMan:Landroid/app/INotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vivo/settings/VivoListFragment;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->int_cur_locale_postion:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->fromItems:Ljava/util/List;

    .line 37
    const-string v0, "VivoZenModeCondition"

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/vivo/settings/notification/VivoZenModeCondition$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/settings/notification/VivoZenModeCondition$H;-><init>(Lcom/vivo/settings/notification/VivoZenModeCondition;Lcom/vivo/settings/notification/VivoZenModeCondition$1;)V

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mHandler:Lcom/vivo/settings/notification/VivoZenModeCondition$H;

    .line 123
    new-instance v0, Lcom/vivo/settings/notification/VivoZenModeCondition$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/notification/VivoZenModeCondition$1;-><init>(Lcom/vivo/settings/notification/VivoZenModeCondition;)V

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mListener:Landroid/service/notification/IConditionListener;

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/notification/VivoZenModeCondition;)Lcom/vivo/settings/notification/VivoZenModeCondition$H;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeCondition;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mHandler:Lcom/vivo/settings/notification/VivoZenModeCondition$H;

    return-object v0
.end method


# virtual methods
.method protected handleConditions([Landroid/service/notification/Condition;)V
    .locals 7
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 114
    move-object v0, p1

    .local v0, "arr$":[Landroid/service/notification/Condition;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 115
    .local v1, "condition":Landroid/service/notification/Condition;
    iget-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const-string v4, "VivoZenModeCondition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConditions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->fromItems:Ljava/util/List;

    iget-object v5, v1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    .end local v1    # "condition":Landroid/service/notification/Condition;
    :cond_2
    iget-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v4}, Lcom/vivo/settings/SingleChoiseAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeCondition;->showBBKBackButton()V

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mConditions:Ljava/util/ArrayList;

    .line 46
    iget-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mConditions:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeCondition;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 48
    .local v2, "resources":Landroid/content/res/Resources;
    const v4, 0x10406ad

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "string":Ljava/lang/String;
    iget-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->fromItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v4, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeCondition;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    aget v5, v5, v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    .line 52
    .local v0, "condition":Landroid/service/notification/Condition;
    iget-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->fromItems:Ljava/util/List;

    iget-object v5, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    .end local v0    # "condition":Landroid/service/notification/Condition;
    :cond_2
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mNoMan:Landroid/app/INotificationManager;

    .line 58
    new-instance v4, Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeCondition;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->int_cur_locale_postion:I

    iget-object v7, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->fromItems:Ljava/util/List;

    invoke-direct {v4, v5, v6, v7}, Lcom/vivo/settings/SingleChoiseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    .line 60
    iget-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {p0, v4}, Lcom/vivo/settings/notification/VivoZenModeCondition;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const v1, 0x7f0400f3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onDestroy()V

    .line 100
    const-string v0, "VivoZenModeCondition"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/VivoZenModeCondition;->requestZenModeConditions(I)V

    .line 102
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 72
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v1}, Lcom/vivo/settings/SingleChoiseAdapter;->getCount()I

    move-result v1

    if-lt p3, v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v1, p3}, Lcom/vivo/settings/SingleChoiseAdapter;->setCheckPos(I)V

    .line 77
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v1}, Lcom/vivo/settings/SingleChoiseAdapter;->notifyDataSetInvalidated()V

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/Condition;

    .line 80
    .local v0, "condition":Landroid/service/notification/Condition;
    const-string v1, "VivoZenModeCondition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmCondition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mNoMan:Landroid/app/INotificationManager;

    invoke-interface {v1, v0}, Landroid/app/INotificationManager;->setZenModeCondition(Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeCondition;->finish()V

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 86
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeCondition;->finish()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeCondition;->finish()V

    throw v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onStart()V

    .line 93
    const-string v0, "VivoZenModeCondition"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/VivoZenModeCondition;->requestZenModeConditions(I)V

    .line 95
    return-void
.end method

.method protected requestZenModeConditions(I)V
    .locals 3
    .param p1, "relevance"    # I

    .prologue
    .line 105
    const-string v0, "VivoZenModeCondition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestZenModeConditions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/service/notification/Condition;->relevanceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mNoMan:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeCondition;->mListener:Landroid/service/notification/IConditionListener;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method
