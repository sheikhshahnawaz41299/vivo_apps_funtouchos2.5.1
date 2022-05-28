.class public Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
.super Ljava/lang/Object;
.source "VivoRecentItem.java"


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public instanceId:I

.field public intent:Landroid/content/Intent;

.field public isExcluded:Z

.field public isProtected:Z

.field public label:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public persistentTaskId:I

.field public resolveInfo:Landroid/content/pm/ResolveInfo;

.field public showingPin:Z

.field public taskId:I

.field public uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IIZ)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "persistentTaskId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "instanceId"    # I
    .param p6, "isExcluded"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->taskId:I

    .line 41
    iput p2, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->persistentTaskId:I

    .line 42
    iput-object p3, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->instanceId:I

    .line 44
    iput p4, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->uid:I

    .line 45
    iput-boolean p6, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isExcluded:Z

    .line 46
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ILjava/lang/CharSequence;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "persistentTaskId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "instanceId"    # I
    .param p5, "label"    # Ljava/lang/CharSequence;
    .param p6, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p9, "uid"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->taskId:I

    .line 28
    iput p2, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->persistentTaskId:I

    .line 29
    iput-object p3, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->instanceId:I

    .line 31
    iput-object p5, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->label:Ljava/lang/CharSequence;

    .line 32
    iput-object p6, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 33
    iput-object p7, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->intent:Landroid/content/Intent;

    .line 34
    iput-object p8, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 35
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isProtected:Z

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isProtected:Z

    .line 36
    iput p9, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->uid:I

    .line 37
    return-void
.end method


# virtual methods
.method public setProtected(Z)V
    .locals 0
    .param p1, "isProtected"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isProtected:Z

    .line 50
    return-void
.end method
