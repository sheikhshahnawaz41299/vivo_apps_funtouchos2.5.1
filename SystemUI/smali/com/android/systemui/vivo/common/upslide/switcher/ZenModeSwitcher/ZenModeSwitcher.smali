.class public Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "ZenModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ZenModeSwitcher"


# instance fields
.field private mZenModeIsOn:Z

.field private mZenModeObserver:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mZenModeObserver:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mZenModeIsOn:Z

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mZenModeIsOn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->collapseUpSlideView()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 115
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 118
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 121
    :goto_0
    return-object v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ZenModeSwitcher"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSwitcherIcon()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f020612

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f020611

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->getSwitcherIcon()V

    .line 58
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mZenModeObserver:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mZenModeObserver:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->register()V

    .line 60
    return-void
.end method

.method public refreshDisplay()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 38
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "zen_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 39
    .local v1, "zenModeState":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mZenModeIsOn:Z

    .line 41
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mZenModeIsOn:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mTextColorLight:I

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mZenModeIsOn:Z

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 45
    :goto_2
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v3, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v0, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    :cond_0
    return-void

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    move v2, v3

    .line 39
    goto :goto_0

    .line 41
    :cond_2
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mTextColorDark:I

    goto :goto_1

    .line 44
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 88
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 112
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
