.class Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
.super Ljava/lang/Object;
.source "NotificationBlockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationInfo"
.end annotation


# instance fields
.field private contentView:Landroid/widget/RemoteViews;

.field private enabled:Z

.field private id:I

.field private instanceId:I

.field private isTitle:Z

.field private pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;ILandroid/widget/RemoteViews;I)V
    .locals 2
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "instanceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 140
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->pkg:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->isTitle:Z

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->enabled:Z

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->instanceId:I

    .line 141
    iput-object p2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->pkg:Ljava/lang/String;

    .line 142
    iput p3, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->id:I

    .line 143
    if-nez p4, :cond_0

    .line 144
    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->contentView:Landroid/widget/RemoteViews;

    .line 148
    :goto_0
    iput p5, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->instanceId:I

    .line 149
    return-void

    .line 146
    :cond_0
    invoke-virtual {p4}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;ILandroid/widget/RemoteViews;ILcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/widget/RemoteViews;
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$1;

    .prologue
    .line 132
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;Ljava/lang/String;ILandroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->contentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->id:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->isTitle:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->isTitle:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->enabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->enabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->instanceId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationInfo;->pkg:Ljava/lang/String;

    return-object v0
.end method
