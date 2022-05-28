.class final Lcom/android/systemui/vivo/common/notification/SceneNotificationManager$1;
.super Ljava/util/HashSet;
.source "SceneNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 31
    const-string v0, "com.android.phone"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager$1;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v0, "com.android.mms.service"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager$1;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager$1;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v0, "com.iqoo.secure"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager$1;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v0, "com.android.BBKClock"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager$1;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method
