.class public Lcom/vivo/settings/ApnUIHelper;
.super Landroid/widget/BaseAdapter;
.source "ApnUIHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final ALL:I = 0x2

.field private static final ALL_ROUND:I = 0x3

.field private static final BOTTOM_ROUND:I = 0x2

.field private static final LEFT_PART:I = 0x0

.field private static final MIDDLE:I = 0x1

.field private static final RIGHT_PART:I = 0x1

.field private static final TOP_ROUND:I


# instance fields
.field private final APNITEM_TYPE_ADDAPNPREF:I

.field private final APNITEM_TYPE_APNPREF:I

.field private final APNITEM_TYPE_COUNT:I

.field private final APNITEM_TYPE_DIVIDERPREF:I

.field private final APNITEM_TYPE_RESTORPREF:I

.field private mApnPrefList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mApnSettings:Lcom/android/settings/ApnSettings;

.field private mBackgroundResId:I

.field private mExtraPref:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mLocker:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 2
    .param p1, "apnSettings"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/ApnUIHelper;->mExtraPref:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/ApnUIHelper;->mLocker:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/settings/ApnUIHelper;->APNITEM_TYPE_APNPREF:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/settings/ApnUIHelper;->APNITEM_TYPE_DIVIDERPREF:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/settings/ApnUIHelper;->APNITEM_TYPE_ADDAPNPREF:I

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/settings/ApnUIHelper;->APNITEM_TYPE_RESTORPREF:I

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/settings/ApnUIHelper;->APNITEM_TYPE_COUNT:I

    .line 33
    iput-object p1, p0, Lcom/vivo/settings/ApnUIHelper;->mApnSettings:Lcom/android/settings/ApnSettings;

    .line 34
    invoke-virtual {p1}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x3010004

    invoke-static {v0, v1}, Lvivo/util/VivoThemeUtil;->getAttributeResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/settings/ApnUIHelper;->mBackgroundResId:I

    .line 36
    return-void
.end method

.method private getApnCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vivo/settings/ApnUIHelper;->mApnPrefList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/ApnUIHelper;->mApnPrefList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private isCategory(I)Z
    .locals 2
    .param p1, "postion"    # I

    .prologue
    const/4 v0, 0x1

    .line 201
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/vivo/settings/ApnUIHelper;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    invoke-virtual {p0, p1}, Lcom/vivo/settings/ApnUIHelper;->getItem(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceCategory;

    if-nez v1, :cond_0

    .line 207
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addExtraPreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/settings/ApnUIHelper;->mExtraPref:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/vivo/settings/ApnUIHelper;->mExtraPref:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    return-void
.end method

.method public clearExtraPreference()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vivo/settings/ApnUIHelper;->mExtraPref:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/vivo/settings/ApnUIHelper;->getApnCount()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/settings/ApnUIHelper;->mExtraPref:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Landroid/preference/Preference;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/vivo/settings/ApnUIHelper;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/ApnUIHelper;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/vivo/settings/ApnUIHelper;->getApnCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/vivo/settings/ApnUIHelper;->mApnPrefList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    monitor-exit v1

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/vivo/settings/ApnUIHelper;->mExtraPref:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/vivo/settings/ApnUIHelper;->getApnCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/vivo/settings/ApnUIHelper;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 107
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 59
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/vivo/settings/ApnUIHelper;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 60
    :cond_0
    const/4 v0, -0x1

    .line 79
    :cond_1
    :goto_0
    return v0

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/vivo/settings/ApnUIHelper;->getApnCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 63
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_3
    invoke-direct {p0}, Lcom/vivo/settings/ApnUIHelper;->getApnCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 67
    invoke-direct {p0}, Lcom/vivo/settings/ApnUIHelper;->getApnCount()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 79
    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 71
    :cond_5
    invoke-direct {p0}, Lcom/vivo/settings/ApnUIHelper;->getApnCount()I

    move-result v2

    if-ne p1, v2, :cond_6

    move v0, v1

    .line 72
    goto :goto_0

    .line 74
    :cond_6
    invoke-direct {p0}, Lcom/vivo/settings/ApnUIHelper;->getApnCount()I

    move-result v2

    sub-int v2, p1, v2

    if-ne v2, v1, :cond_4

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/vivo/settings/ApnUIHelper;->getItem(I)Landroid/preference/Preference;

    move-result-object v2

    .line 113
    .local v2, "pref":Landroid/preference/Preference;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/ApnUIHelper;->getItemViewType(I)I

    move-result v1

    .line 114
    .local v1, "itemType":I
    const/4 v4, 0x0

    .local v4, "textLayout":Landroid/view/View;
    const/4 v3, 0x0

    .line 115
    .local v3, "radioButton":Landroid/view/View;
    invoke-virtual {v2, p2, p3}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 116
    .local v5, "view":Landroid/view/View;
    packed-switch v1, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    :pswitch_0
    return-object v5

    .line 118
    :pswitch_1
    const v6, 0x7f0e0010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 119
    const v6, 0x7f0e0011

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 120
    const v6, 0x7f0e0009

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "divider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/vivo/settings/ApnUIHelper;->getApnCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_1

    .line 123
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 125
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 133
    .end local v0    # "divider":Landroid/view/View;
    :pswitch_2
    iget v6, p0, Lcom/vivo/settings/ApnUIHelper;->mBackgroundResId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x4

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vivo/settings/ApnUIHelper;->mApnSettings:Lcom/android/settings/ApnSettings;

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0, p3}, Lcom/vivo/settings/ApnUIHelper;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    .line 215
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/vivo/settings/ApnUIHelper;->mApnSettings:Lcom/android/settings/ApnSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/ApnSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 219
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method public setApnPrefList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "preferenceGroup":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    iget-object v1, p0, Lcom/vivo/settings/ApnUIHelper;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iput-object p1, p0, Lcom/vivo/settings/ApnUIHelper;->mApnPrefList:Ljava/util/List;

    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
