.class public Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;
.super Lcom/vivo/app/VivoBaseActivity;
.source "NotificationTopPreViewTypeSettingActivity.java"


# instance fields
.field private mCollectData:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

.field private mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroup:Landroid/widget/RadioGroup;

.field private mHeadsUpBtn:Landroid/widget/RadioButton;

.field private mHeadsUpView:Landroid/widget/ImageView;

.field private mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

.field private mSilentBtn:Landroid/widget/RadioButton;

.field private mSilentView:Landroid/widget/ImageView;

.field private mTickerBtn:Landroid/widget/RadioButton;

.field private mTickerView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mData:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mHeadsUpView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mTickerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mSilentView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mData:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mCollectData:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mHeadsUpBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mTickerBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mSilentBtn:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v1, 0x7f040077

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e01c6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->setTitleLeftButtonIcon(I)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->setTitleLeftButtonEnable(Z)V

    .line 48
    new-instance v1, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$1;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->showTitleLeftButton()V

    .line 57
    invoke-static {p0}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mCollectData:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    .line 60
    const v1, 0x7f1101e1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mGroup:Landroid/widget/RadioGroup;

    .line 61
    const v1, 0x7f1101e2

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mHeadsUpBtn:Landroid/widget/RadioButton;

    .line 62
    const v1, 0x7f1100f8

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mTickerBtn:Landroid/widget/RadioButton;

    .line 63
    const v1, 0x7f1101e3

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mSilentBtn:Landroid/widget/RadioButton;

    .line 64
    const v1, 0x7f1101de

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mHeadsUpView:Landroid/widget/ImageView;

    .line 65
    const v1, 0x7f1101df

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mTickerView:Landroid/widget/ImageView;

    .line 66
    const v1, 0x7f1101e0

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mSilentView:Landroid/widget/ImageView;

    .line 68
    invoke-static {p0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .line 69
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getNotificationTipStyle()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "style":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mHeadsUpBtn:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 71
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mTickerBtn:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 72
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mSilentBtn:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    const-string v4, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 73
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mHeadsUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0204b1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mTickerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0204b8

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mSilentView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0204b4

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mHeadsUpBtn:Landroid/widget/RadioButton;

    new-instance v2, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$2;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mTickerBtn:Landroid/widget/RadioButton;

    new-instance v2, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$3;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mSilentBtn:Landroid/widget/RadioButton;

    new-instance v2, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$4;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mHeadsUpView:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$5;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mTickerView:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$6;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;->mSilentView:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity$7;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationTopPreViewTypeSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void

    :cond_0
    move v1, v3

    .line 70
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 71
    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const v1, 0x7f0204b0

    goto :goto_3

    .line 75
    :cond_4
    const v1, 0x7f0204b7

    goto :goto_4

    .line 77
    :cond_5
    const v1, 0x7f0204b3

    goto :goto_5
.end method
