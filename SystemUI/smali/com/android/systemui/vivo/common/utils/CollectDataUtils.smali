.class public Lcom/android/systemui/vivo/common/utils/CollectDataUtils;
.super Ljava/lang/Object;
.source "CollectDataUtils.java"


# static fields
.field public static final KEYGUARD_EVENT_ID:Ljava/lang/String; = "1064"

.field public static final SYSTEMUI_EVENT_ID:Ljava/lang/String; = "1063"

.field private static final TAG:Ljava/lang/String; = "CollectDataUtils"

.field private static sInstance:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;


# instance fields
.field private mCollectData:Lcom/vivo/common/VivoCollectData;

.field private mContext:Landroid/content/Context;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->mData:Ljava/util/HashMap;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/vivo/common/VivoCollectData;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/common/VivoCollectData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->mCollectData:Lcom/vivo/common/VivoCollectData;

    .line 24
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    .line 30
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    return-object v0
.end method


# virtual methods
.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "switcherName"    # Ljava/lang/String;
    .param p2, "option"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->mData:Ljava/util/HashMap;

    const-string v1, "tab"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->mData:Ljava/util/HashMap;

    const-string v1, "op"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->mData:Ljava/util/HashMap;

    const-string v1, "status"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "1063"

    const-string v1, "10638"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->mData:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->mData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    return-void
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 12
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->mCollectData:Lcom/vivo/common/VivoCollectData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v11, p3

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CollectDataUtils"

    const-string v2, "write data failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
