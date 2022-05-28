.class public Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;
.super Landroid/preference/Preference;
.source "NotificationOpsItemPreference.java"


# instance fields
.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppLabel:Landroid/widget/TextView;

.field private mContentInfo:Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

.field private mContext:Landroid/content/Context;

.field private mHeadTitle:Landroid/widget/TextView;

.field private mIsListHead:Z

.field private mIsListTail:Z

.field private mNotificationShownType:Landroid/widget/TextView;

.field private mOfficialIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContext:Landroid/content/Context;

    .line 27
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mIsListHead:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mIsListTail:Z

    .line 32
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContext:Landroid/content/Context;

    .line 33
    const v0, 0x7f040074

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->setLayoutResource(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentInfo"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    .param p3, "isListHead"    # Z
    .param p4, "isListTail"    # Z

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContext:Landroid/content/Context;

    .line 27
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mIsListHead:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mIsListTail:Z

    .line 39
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContext:Landroid/content/Context;

    .line 40
    const v0, 0x7f040074

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->setLayoutResource(I)V

    .line 41
    iput-object p2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContentInfo:Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 42
    iput-boolean p3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mIsListHead:Z

    .line 43
    iput-boolean p4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mIsListTail:Z

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;)Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContentInfo:Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 50
    const v0, 0x7f1100bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mAppIcon:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f1101d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mAppLabel:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const v0, 0x7f1101d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mOfficialIcon:Landroid/widget/ImageView;

    .line 57
    :goto_0
    const v0, 0x7f1101d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mNotificationShownType:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mAppIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContentInfo:Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mAppLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContentInfo:Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mOfficialIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContentInfo:Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->isOfficialShow()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mNotificationShownType:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContentInfo:Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getNotificationShownType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mNotificationShownType:Landroid/widget/TextView;

    const-string v3, ""

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContentInfo:Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getNotificationShownType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mContentInfo:Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getNotificationShownType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    const v0, 0x7f1101d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference$1;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void

    .line 55
    :cond_1
    const v0, 0x7f1101d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;->mOfficialIcon:Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 74
    goto :goto_1
.end method
