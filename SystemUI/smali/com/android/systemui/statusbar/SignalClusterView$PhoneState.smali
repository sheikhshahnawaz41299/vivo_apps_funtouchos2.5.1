.class Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
.super Ljava/lang/Object;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneState"
.end annotation


# instance fields
.field private mIsMobileTypeIconWide:Z

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileStrengthId:I

.field private mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V
    .locals 4
    .param p2, "subId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 328
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    .line 321
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    .line 329
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040022

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 331
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setViews(Landroid/view/ViewGroup;)V

    .line 332
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "x1"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "x1"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    .line 318
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "x1"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "x1"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .prologue
    .line 318
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    return v0
.end method


# virtual methods
.method public apply(Z)Z
    .locals 7
    .param p1, "isSecondaryIcon"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->access$1200(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 353
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->access$1300(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0, v1, v1, v1}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 355
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->access$1400(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v0

    :goto_2
    invoke-virtual {v3, v0, v1, v1, v1}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 358
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v3, "SignalClusterView"

    const-string v4, "mobile: %s sig=%d typ=%d"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_4

    const-string v0, "VISIBLE"

    :goto_3
    aput-object v0, v5, v1

    const/4 v0, 0x1

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return v0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 353
    goto :goto_1

    :cond_3
    move v0, v1

    .line 355
    goto :goto_2

    .line 358
    :cond_4
    const-string v0, "GONE"

    goto :goto_3

    :cond_5
    move v1, v2

    .line 361
    goto :goto_4
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_0
    return-void
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    .line 337
    const v0, 0x7f1100ab

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    .line 338
    const v0, 0x7f1100ac

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    .line 339
    return-void
.end method
