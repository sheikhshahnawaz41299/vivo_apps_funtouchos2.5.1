.class Lcom/vlife/plugin/module/ModuleFactory$2;
.super Ljava/lang/Object;
.source "ModuleFactory.java"

# interfaces
.implements Lcom/vlife/plugin/module/IResModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlife/plugin/module/ModuleFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public buildNotification(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 5
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "icon_left"    # Landroid/graphics/Bitmap;
    .param p5, "icon_right"    # Landroid/graphics/Bitmap;
    .param p6, "background"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/high16 v4, -0x1000000

    .line 94
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 95
    .local v1, "n":Landroid/app/Notification;
    sget v2, Lcom/vlife/R$drawable;->vlife_logo:I

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 96
    iput-object p2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 97
    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 98
    iput-object p1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 99
    new-instance v0, Landroid/widget/RemoteViews;

    .line 100
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->access$1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 101
    sget v3, Lcom/vlife/R$layout;->vlife_quarter_notification:I

    .line 99
    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 102
    .local v0, "contentView":Landroid/widget/RemoteViews;
    if-eqz p4, :cond_2

    .line 103
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->access$2()Lcom/handpet/common/utils/log/ILogger;

    move-result-object v2

    const-string v3, "[QuarterDisplayScheme] letf!=null"

    invoke-interface {v2, v3}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;)V

    .line 104
    sget v2, Lcom/vlife/R$id;->image_left:I

    invoke-virtual {v0, v2, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 110
    :goto_0
    sget v2, Lcom/vlife/R$id;->title:I

    invoke-virtual {v0, v2, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 111
    sget v2, Lcom/vlife/R$id;->description:I

    invoke-virtual {v0, v2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 112
    if-eqz p5, :cond_0

    .line 113
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->access$2()Lcom/handpet/common/utils/log/ILogger;

    move-result-object v2

    const-string v3, "[QuarterDisplayScheme] right!=null"

    invoke-interface {v2, v3}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;)V

    .line 114
    sget v2, Lcom/vlife/R$id;->image_right:I

    invoke-virtual {v0, v2, p5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 116
    :cond_0
    if-eqz p6, :cond_1

    .line 117
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->access$2()Lcom/handpet/common/utils/log/ILogger;

    move-result-object v2

    const-string v3, "[QuarterDisplayScheme] background!=null"

    invoke-interface {v2, v3}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;)V

    .line 118
    sget v2, Lcom/vlife/R$id;->image_background:I

    invoke-virtual {v0, v2, p6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 121
    sget v2, Lcom/vlife/R$id;->title:I

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 122
    sget v2, Lcom/vlife/R$id;->description:I

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 124
    :cond_1
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 125
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_3

    .line 126
    sget v2, Lcom/vlife/R$id;->relativelayout:I

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 131
    :goto_1
    return-object v1

    .line 106
    :cond_2
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->access$2()Lcom/handpet/common/utils/log/ILogger;

    move-result-object v2

    const-string v3, "[QuarterDisplayScheme] letf==null"

    invoke-interface {v2, v3}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;)V

    .line 107
    sget v2, Lcom/vlife/R$id;->image_left:I

    .line 108
    sget v3, Lcom/vlife/R$drawable;->icon:I

    .line 107
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 129
    :cond_3
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->access$1()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public getSlideInLeft()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/vlife/R$anim;->vlife_slide_in_left:I

    return v0
.end method

.method public getSlideOutRight()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/vlife/R$anim;->vlife_slide_out_right:I

    return v0
.end method
