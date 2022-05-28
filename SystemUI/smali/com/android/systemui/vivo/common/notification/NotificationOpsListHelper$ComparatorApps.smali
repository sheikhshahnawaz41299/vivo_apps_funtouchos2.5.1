.class Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$ComparatorApps;
.super Ljava/lang/Object;
.source "NotificationOpsListHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComparatorApps"
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V
    .locals 1

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$ComparatorApps;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$ComparatorApps;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$ComparatorApps;->sCollator:Ljava/text/Collator;

    check-cast p1, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .end local p1    # "object1":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppLabel()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
