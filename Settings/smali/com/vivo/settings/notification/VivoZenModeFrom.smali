.class public Lcom/vivo/settings/notification/VivoZenModeFrom;
.super Lcom/vivo/settings/VivoListFragment;
.source "VivoZenModeFrom.java"


# static fields
.field private static final GROUPS_COLUMNS:[Ljava/lang/String;

.field private static final SOURCE_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "VivoZenModeFrom"

.field private static final ZEN_MODE_CONTACTS_GROUP:Ljava/lang/String; = "zen_mode_contacts_group"

.field private static final ZEN_MODE_GROUP_NAME:Ljava/lang/String; = "zen_mode_group_name"


# instance fields
.field private ACCOUNT_NAME_INDEX:I

.field private GROUP_TITLE_INDEX:I

.field private ID_INDEX:I

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

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContactsGroups:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->GROUPS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/vivo/settings/VivoListFragment;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->int_cur_locale_postion:I

    .line 65
    iput-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContactsGroups:Landroid/util/ArrayMap;

    .line 66
    iput-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mCursor:Landroid/database/Cursor;

    .line 67
    iput v1, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->GROUP_TITLE_INDEX:I

    .line 68
    iput v1, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->ACCOUNT_NAME_INDEX:I

    .line 69
    iput v1, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->ID_INDEX:I

    return-void
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 236
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 239
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 242
    :goto_0
    return-object v2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VivoZenModeFrom"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 219
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 222
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    .line 223
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 224
    iput-object p1, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 225
    const-string v3, "VivoZenModeFrom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved mConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VivoZenModeFrom"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeFrom;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 148
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeFrom;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContext:Landroid/content/Context;

    .line 149
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    const v3, 0x7f04006b

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 208
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 209
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeFrom;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 215
    .local v0, "context":Landroid/content/Context;
    return-object v2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 155
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v3}, Lcom/vivo/settings/SingleChoiseAdapter;->getCount()I

    move-result v3

    if-gt p3, v3, :cond_0

    if-gez p3, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v3, "VivoZenModeFrom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    if-eqz v3, :cond_2

    .line 160
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v3, p3}, Lcom/vivo/settings/SingleChoiseAdapter;->setCheckPos(I)V

    .line 161
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual {v3}, Lcom/vivo/settings/SingleChoiseAdapter;->notifyDataSetInvalidated()V

    .line 163
    :cond_2
    const/4 v2, -0x1

    .line 164
    .local v2, "val":I
    packed-switch p3, :pswitch_data_0

    .line 178
    move v2, p3

    .line 181
    :goto_1
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 182
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 183
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 184
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    .line 185
    .local v0, "isCurrModeOn":Z
    :goto_4
    if-eqz v0, :cond_3

    .line 186
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_mode"

    iget-boolean v3, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_5
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    :cond_3
    const/4 v3, 0x4

    if-ge v2, v3, :cond_9

    .line 190
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v3, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .end local v2    # "val":I
    :cond_4
    iput v2, v1, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 191
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode_contacts_group"

    const-wide/16 v6, -0x1

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 192
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Landroid/service/notification/ZenModeConfig;->groupid:J

    .line 200
    :goto_6
    invoke-direct {p0, v1}, Lcom/vivo/settings/notification/VivoZenModeFrom;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 201
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeFrom;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_0

    .line 166
    .end local v0    # "isCurrModeOn":Z
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .restart local v2    # "val":I
    :pswitch_0
    const/4 v2, -0x1

    .line 167
    goto :goto_1

    .line 169
    :pswitch_1
    const/4 v2, 0x2

    .line 170
    goto :goto_1

    .line 172
    :pswitch_2
    const/4 v2, 0x1

    .line 173
    goto :goto_1

    .line 175
    :pswitch_3
    const/4 v2, 0x0

    .line 176
    goto :goto_1

    .line 182
    .restart local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 183
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 184
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .line 186
    .restart local v0    # "isCurrModeOn":Z
    :cond_8
    const/4 v3, 0x2

    goto :goto_5

    .line 194
    :cond_9
    const/4 v3, 0x2

    iput v3, v1, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 195
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_mode_contacts_group"

    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContactsGroups:Landroid/util/ArrayMap;

    add-int/lit8 v6, v2, -0x4

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 196
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_mode_group_name"

    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContactsGroups:Landroid/util/ArrayMap;

    add-int/lit8 v6, v2, -0x4

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContactsGroups:Landroid/util/ArrayMap;

    add-int/lit8 v4, v2, -0x4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/service/notification/ZenModeConfig;->groupid:J

    goto :goto_6

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onPause()V

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 18

    .prologue
    .line 78
    invoke-super/range {p0 .. p0}, Lcom/vivo/settings/VivoListFragment;->onResume()V

    .line 79
    const-string v2, "VivoZenModeFrom"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const v2, 0x7f0b07b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/notification/VivoZenModeFrom;->setTitle(I)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/notification/VivoZenModeFrom;->showBBKBackButton()V

    .line 82
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContactsGroups:Landroid/util/ArrayMap;

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode_contacts_group"

    const-wide/16 v6, -0x1

    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 84
    .local v10, "groupId":J
    const-string v5, "account_type NOT NULL AND account_name NOT NULL AND auto_add=0 AND favorites=0 AND deleted=0"

    .line 87
    .local v5, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    sget-object v4, Lcom/vivo/settings/notification/VivoZenModeFrom;->GROUPS_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mCursor:Landroid/database/Cursor;

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mCursor:Landroid/database/Cursor;

    const-string v3, "title"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->GROUP_TITLE_INDEX:I

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mCursor:Landroid/database/Cursor;

    const-string v3, "account_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->ACCOUNT_NAME_INDEX:I

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->ID_INDEX:I

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 94
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->GROUP_TITLE_INDEX:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 96
    .local v17, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->ACCOUNT_NAME_INDEX:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "account":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->ID_INDEX:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 98
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContactsGroups:Landroid/util/ArrayMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Phone"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v17    # "title":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 98
    .restart local v17    # "title":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 102
    .end local v8    # "account":Ljava/lang/String;
    .end local v14    # "id":J
    .end local v17    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/notification/VivoZenModeFrom;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 103
    .local v16, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContactsGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    new-array v9, v2, [Ljava/lang/String;

    .line 104
    .local v9, "fromItems":[Ljava/lang/String;
    const/4 v2, 0x0

    const v3, 0x7f0b0882

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    .line 105
    const/4 v2, 0x1

    const v3, 0x7f0b08ee

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    .line 106
    const/4 v2, 0x2

    const v3, 0x7f0b07de

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    .line 107
    const/4 v2, 0x3

    const v3, 0x7f0b07b8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    .line 108
    const/4 v12, 0x4

    .local v12, "i":I
    :goto_2
    array-length v2, v9

    if-ge v12, v2, :cond_2

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContactsGroups:Landroid/util/ArrayMap;

    add-int/lit8 v3, v12, -0x4

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v9, v12

    .line 108
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 111
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_5

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v2, :cond_4

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    packed-switch v2, :pswitch_data_0

    .line 134
    :cond_3
    :goto_3
    new-instance v2, Lcom/vivo/settings/SingleChoiseAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/notification/VivoZenModeFrom;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->int_cur_locale_postion:I

    invoke-direct {v2, v3, v4, v9}, Lcom/vivo/settings/SingleChoiseAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mAdapter:Lcom/vivo/settings/SingleChoiseAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/notification/VivoZenModeFrom;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    return-void

    .line 115
    :pswitch_0
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->int_cur_locale_postion:I

    goto :goto_3

    .line 118
    :pswitch_1
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->int_cur_locale_postion:I

    goto :goto_3

    .line 121
    :pswitch_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->int_cur_locale_postion:I

    goto :goto_3

    .line 125
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->int_cur_locale_postion:I

    goto :goto_3

    .line 128
    :cond_5
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContactsGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v13, v2, :cond_3

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->mContactsGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-nez v2, :cond_6

    .line 130
    add-int/lit8 v2, v13, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/notification/VivoZenModeFrom;->int_cur_locale_postion:I

    .line 128
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
