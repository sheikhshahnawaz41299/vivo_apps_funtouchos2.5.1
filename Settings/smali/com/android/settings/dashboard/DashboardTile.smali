.class public Lcom/android/settings/dashboard/DashboardTile;
.super Ljava/lang/Object;
.source "DashboardTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/dashboard/DashboardTile;",
            ">;"
        }
    .end annotation
.end field

.field public static final ORDER_DEFAULT:I = 0xf4240

.field public static final TILE_ID_UNDEFINED:J = -0x1L

.field public static final TYPE_CHECK:I = 0x1

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_NOTI:I = 0x2


# instance fields
.field public checked:Z

.field public enabled:Z

.field public extras:Landroid/os/Bundle;

.field public fragment:Ljava/lang/String;

.field public fragmentArguments:Landroid/os/Bundle;

.field public iconRes:I

.field public id:J

.field public intent:Landroid/content/Intent;

.field public order:I

.field public summary:Ljava/lang/CharSequence;

.field public summaryRes:I

.field public title:Ljava/lang/CharSequence;

.field public titleRes:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/android/settings/dashboard/DashboardTile$1;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardTile$1;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/DashboardTile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    .line 72
    const v0, 0xf4240

    iput v0, p0, Lcom/android/settings/dashboard/DashboardTile;->order:I

    .line 73
    iput v2, p0, Lcom/android/settings/dashboard/DashboardTile;->type:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/settings/dashboard/DashboardTile;->checked:Z

    .line 132
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    .line 72
    const v0, 0xf4240

    iput v0, p0, Lcom/android/settings/dashboard/DashboardTile;->order:I

    .line 73
    iput v2, p0, Lcom/android/settings/dashboard/DashboardTile;->type:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/settings/dashboard/DashboardTile;->checked:Z

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardTile;->readFromParcel(Landroid/os/Parcel;)V

    .line 207
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 152
    iget v0, p0, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    if-eqz v0, :cond_0

    .line 153
    iget v0, p0, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 140
    iget v0, p0, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    if-eqz v0, :cond_0

    .line 141
    iget v0, p0, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardTile;->order:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardTile;->type:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardTile;->checked:Z

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    .line 193
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 195
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    .line 203
    return-void

    :cond_1
    move v0, v2

    .line 190
    goto :goto_0

    :cond_2
    move v1, v2

    .line 191
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    iget-wide v4, p0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget v0, p0, Lcom/android/settings/dashboard/DashboardTile;->order:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/android/settings/dashboard/DashboardTile;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTile;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTile;->checked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 172
    iget v0, p0, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 174
    iget v0, p0, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    :goto_2
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 184
    return-void

    :cond_0
    move v0, v2

    .line 168
    goto :goto_0

    :cond_1
    move v0, v2

    .line 169
    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
