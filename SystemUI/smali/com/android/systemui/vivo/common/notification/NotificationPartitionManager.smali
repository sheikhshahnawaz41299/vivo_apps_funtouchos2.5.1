.class public Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;
.super Ljava/lang/Object;
.source "NotificationPartitionManager.java"


# static fields
.field private static final FAKE_ID_CALENDAR:I = 0x2

.field private static final FAKE_ID_NOTIFICATION:I = 0x0

.field private static final FAKE_ID_ONGOING:I = 0x1

.field private static final FAKE_PACKAGE:Ljava/lang/String; = "vivo.statusbar.fake."

.field private static final FAKE_TAG_CALENDAR:Ljava/lang/String; = "calendar"

.field private static final FAKE_TAG_NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final FAKE_TAG_ONGOING:Ljava/lang/String; = "ongoing"

.field private static final TAG:Ljava/lang/String; = "NotificationPartitionManager"

.field private static final TAG_NOTIFICATION_ROW_CALENDAR:Ljava/lang/String; = "calendar"

.field private static final TAG_NOTIFICATION_ROW_MUSIC:Ljava/lang/String; = "music"

.field private static sInstance:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;


# instance fields
.field private mBlockClearDivider:Landroid/widget/ImageView;

.field private mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

.field private mCalendarPartitionConfigObserver:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

.field private mCalendarPartitionEnabled:Z

.field private mCalendarRow:Landroid/view/View;

.field private mCalendarTitle:Landroid/widget/TextView;

.field private mClearButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mFunctionConfigChangeListener:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

.field private mMusicData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationBlockButton:Landroid/widget/TextView;

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationRow:Landroid/view/View;

.field private mNotificationTitle:Landroid/widget/TextView;

.field private mNotificationVisible:Z

.field private mOngoingBlockButton:Landroid/widget/TextView;

.field private mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

.field private mOngoingRow:Landroid/view/View;

.field private mOngoingTitle:Landroid/widget/TextView;

.field private mOngoingVisible:Z

.field private mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarPartitionEnabled:Z

    .line 90
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isCalendarPartitionEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarPartitionEnabled:Z

    .line 93
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager$1;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarPartitionConfigObserver:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mFunctionConfigChangeListener:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mFunctionConfigChangeListener:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarPartitionConfigObserver:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->registerCalendarConfigObserver(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;)V

    .line 104
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarPartitionEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private belongToMusicData(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.bbkmusic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private belongToUsb(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const/16 v1, 0x271b

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const v1, 0x1ae1e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    .line 86
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    return-object v0
.end method

.method public static ignoreLongClick(Landroid/view/View;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    const-string v0, ""

    .line 233
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 236
    .restart local v0    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 242
    :pswitch_0
    return v1

    .line 236
    :sswitch_0
    const-string v4, "calendar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    goto :goto_0

    :sswitch_1
    const-string v4, "music"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xaa104c2 -> :sswitch_0
        0x636ee25 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initializePatitionTitles()V
    .locals 26

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0122

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v14, v5, v6

    .line 140
    .local v14, "bottomPadding":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    const v6, 0x7f040075

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 143
    .local v23, "notificationTitleLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setIsRootNamespace(Z)V

    .line 144
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6, v7, v14}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 146
    const v5, 0x7f1101db

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationTitle:Landroid/widget/TextView;

    .line 149
    const v5, 0x7f1100bb

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationBlockButton:Landroid/widget/TextView;

    .line 150
    const v5, 0x7f1101dd

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mClearButton:Landroid/widget/TextView;

    .line 151
    const v5, 0x7f1101dc

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mBlockClearDivider:Landroid/widget/ImageView;

    .line 154
    new-instance v2, Landroid/service/notification/StatusBarNotification;

    const-string v3, "vivo.statusbar.fake.notification"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "notification"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    new-instance v11, Landroid/os/UserHandle;

    const/4 v12, -0x1

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct/range {v2 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 156
    .local v2, "sbnNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 157
    new-instance v17, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 158
    .local v17, "entryNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/LayoutInflater;

    .line 160
    .local v22, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040076

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 162
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const v6, 0x7f110113

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 163
    .local v20, "expandedNotification":Lcom/android/systemui/statusbar/NotificationContentView;
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 164
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 165
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v6}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 166
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationRow:Landroid/view/View;

    .line 169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    const v6, 0x7f040075

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 171
    .local v24, "ongoingTitleLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setIsRootNamespace(Z)V

    .line 172
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v7, v14}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 174
    const v5, 0x7f1101db

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingTitle:Landroid/widget/TextView;

    .line 175
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingTitle:Landroid/widget/TextView;

    const v6, 0x7f0e01b2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 178
    const v5, 0x7f1100bb

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingBlockButton:Landroid/widget/TextView;

    .line 181
    new-instance v3, Landroid/service/notification/StatusBarNotification;

    const-string v4, "vivo.statusbar.fake.ongoing"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "ongoing"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Landroid/app/Notification;

    invoke-direct {v11}, Landroid/app/Notification;-><init>()V

    new-instance v12, Landroid/os/UserHandle;

    const/4 v13, -0x1

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct/range {v3 .. v12}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 183
    .local v3, "sbnOngoing":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 184
    new-instance v18, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 185
    .local v18, "entryOngoing":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const v5, 0x7f040076

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 187
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const v6, 0x7f110113

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 188
    .local v21, "expandedOngoing":Lcom/android/systemui/statusbar/NotificationContentView;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 189
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v6}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 191
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingRow:Landroid/view/View;

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    const v6, 0x7f040075

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 196
    .local v15, "calendarTitleLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setIsRootNamespace(Z)V

    .line 197
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v15, v5, v6, v7, v14}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 199
    const v5, 0x7f1101db

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarTitle:Landroid/widget/TextView;

    .line 201
    new-instance v4, Landroid/service/notification/StatusBarNotification;

    const-string v5, "vivo.statusbar.fake.calendar"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "calendar"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Landroid/app/Notification;

    invoke-direct {v12}, Landroid/app/Notification;-><init>()V

    new-instance v13, Landroid/os/UserHandle;

    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-direct {v13, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct/range {v4 .. v13}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 203
    .local v4, "sbnCalendar":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 204
    new-instance v16, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 205
    .local v16, "entryCalendar":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const v5, 0x7f040076

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 207
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const v6, 0x7f110113

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 208
    .local v19, "expandedCalendar":Lcom/android/systemui/statusbar/NotificationContentView;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 209
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 210
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 211
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarRow:Landroid/view/View;

    .line 212
    return-void
.end method

.method public static isFakeStatusBarNotificationForTitle(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x1

    .line 247
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vivo.statusbar.fake."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v1

    if-nez v1, :cond_1

    .line 255
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPartitionTitle(Landroid/view/View;)Z
    .locals 1
    .param p0, "row"    # Landroid/view/View;

    .prologue
    .line 224
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sortNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.bbkmusic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const-string v1, "music"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.providers.calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const-string v1, "calendar"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateText()V
    .locals 6

    .prologue
    const v5, 0x7f0e01b4

    const/4 v4, 0x0

    .line 382
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 383
    .local v1, "titleSize":I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0124

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 385
    .local v0, "buttonSize":I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleEntry()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationVisible:Z

    .line 387
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleEntry()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingVisible:Z

    .line 388
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationVisible:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingVisible:Z

    if-nez v2, :cond_8

    .line 389
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationTitle:Landroid/widget/TextView;

    const v3, 0x7f0e01b1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 395
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 396
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingTitle:Landroid/widget/TextView;

    const v3, 0x7f0e01b2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 399
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mClearButton:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 400
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mClearButton:Landroid/widget/TextView;

    const v3, 0x7f0e01b5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 401
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mClearButton:Landroid/widget/TextView;

    int-to-float v3, v0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 404
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationBlockButton:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 405
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationBlockButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 406
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationBlockButton:Landroid/widget/TextView;

    int-to-float v3, v0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 409
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingBlockButton:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 410
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingBlockButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 411
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingBlockButton:Landroid/widget/TextView;

    int-to-float v3, v0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 414
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 415
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationTitle:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 416
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationTitle:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 418
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 419
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingTitle:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 420
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingTitle:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 422
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 423
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarTitle:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 424
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarTitle:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 426
    :cond_7
    return-void

    .line 391
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationTitle:Landroid/widget/TextView;

    const v3, 0x7f0e01b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public alwaysExpandThis(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->belongToMusicData(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->belongToUsb(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public considerAsOngoing(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCalendarData()Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method public getMusicData()Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method public getNotificationData()Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method public getNotificationParentData(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->belongToMusicData(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    .line 280
    :goto_0
    return-object v0

    .line 271
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.providers.calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->considerAsOngoing(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    goto :goto_0

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    goto :goto_0
.end method

.method public getOngoingData()Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method public hideAllPartitionTitles()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 369
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    return-void
.end method

.method public isOverSpeedUpdating(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 302
    sget-object v0, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->UPDATE_NOTIFICATION_WHITLE_APP_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->updatePartitionTitles()V

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->updateText()V

    .line 378
    return-void
.end method

.method public setOnClickBlockListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationBlockButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingBlockButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method

.method public setOnClickClearListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void
.end method

.method public setParentDataAndView(Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "forNotification"    # Lcom/android/systemui/statusbar/NotificationData;
    .param p2, "forOngoing"    # Lcom/android/systemui/statusbar/NotificationData;
    .param p3, "forCalendar"    # Lcom/android/systemui/statusbar/NotificationData;
    .param p4, "forMusic"    # Lcom/android/systemui/statusbar/NotificationData;
    .param p5, "parent"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 109
    iput-object p2, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    .line 110
    iput-object p3, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    .line 111
    iput-object p4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    .line 112
    iput-object p5, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->initializePatitionTitles()V

    .line 116
    return-void
.end method

.method public updatePartitionTitles()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 310
    const-string v4, "NotificationPartitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePartitionTitles(), isKeyguardShowingWithoutShade() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", KeyguardNotificationManager.getState() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    if-nez v4, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getState()I

    move-result v4

    if-eq v4, v9, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleEntry()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationVisible:Z

    .line 322
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleEntry()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingVisible:Z

    .line 324
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->isSpsState()Z

    move-result v2

    .line 327
    .local v2, "isSpsOn":Z
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/NotificationData;->hasBlockableEntry(Landroid/content/Context;)Z

    move-result v0

    .line 328
    .local v0, "hasBlockableNotification":Z
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/NotificationData;->hasBlockableEntry(Landroid/content/Context;)Z

    move-result v1

    .line 329
    .local v1, "hasBlockableOngoing":Z
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 330
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationBlockButton:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mBlockClearDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingBlockButton:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationVisible:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingVisible:Z

    if-nez v4, :cond_4

    .line 345
    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationVisible:Z

    .line 346
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationTitle:Landroid/widget/TextView;

    const v7, 0x7f0e01b1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 347
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0205bf

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 355
    .local v3, "titleBg":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationRow:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingRow:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarRow:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationRow:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationVisible:Z

    if-eqz v4, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingRow:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingVisible:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleEntry()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f0e01ae

    :goto_5
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    .line 365
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarRow:Landroid/view/View;

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mCalendarPartitionEnabled:Z

    if-eqz v7, :cond_8

    if-nez v2, :cond_8

    :goto_6
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 333
    .end local v3    # "titleBg":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 334
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationBlockButton:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mBlockClearDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingBlockButton:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 338
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationBlockButton:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mBlockClearDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mOngoingBlockButton:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 349
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mNotificationTitle:Landroid/widget/TextView;

    const v7, 0x7f0e01b0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 350
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .restart local v3    # "titleBg":Landroid/graphics/drawable/Drawable;
    :cond_5
    move v4, v6

    .line 360
    goto :goto_3

    :cond_6
    move v4, v6

    .line 361
    goto :goto_4

    .line 363
    :cond_7
    const v4, 0x7f0e01af

    goto :goto_5

    :cond_8
    move v5, v6

    .line 365
    goto :goto_6
.end method
