.class public Lcom/android/settings/dashboard/DashboardCategory;
.super Ljava/lang/Object;
.source "DashboardCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAT_ID_UNDEFINED:J = -0x1L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:J

.field public order:I

.field public summary:Ljava/lang/CharSequence;

.field public summaryRes:I

.field public tiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardTile;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/CharSequence;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/android/settings/dashboard/DashboardCategory$1;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardCategory$1;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/DashboardCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->order:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    .line 86
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->order:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardCategory;->readFromParcel(Landroid/os/Parcel;)V

    .line 175
    return-void
.end method


# virtual methods
.method public addTile(ILcom/android/settings/dashboard/DashboardTile;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public addTile(Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 1
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 130
    iget v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->summaryRes:I

    if-eqz v0, :cond_0

    .line 131
    iget v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->summary:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTile(I)Lcom/android/settings/dashboard/DashboardTile;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardTile;

    return-object v0
.end method

.method public getTilesCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->order:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    .line 161
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->summaryRes:I

    .line 163
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->summary:Ljava/lang/CharSequence;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 168
    sget-object v3, Lcom/android/settings/dashboard/DashboardTile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardTile;

    .line 169
    .local v2, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_0
    return-void
.end method

.method public removeTile(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public removeTile(Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 1
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 143
    iget v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->order:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 146
    iget v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->summaryRes:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->summary:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 149
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 150
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 153
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardTile;

    .line 154
    .local v2, "tile":Lcom/android/settings/dashboard/DashboardTile;
    invoke-virtual {v2, p1, p2}, Lcom/android/settings/dashboard/DashboardTile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v2    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_0
    return-void
.end method
