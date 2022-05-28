.class public Lcom/android/systemui/vivo/common/utils/SmartShowContext;
.super Ljava/lang/Object;
.source "SmartShowContext.java"


# static fields
.field static mContext:Landroid/content/ISmartShowContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->mContext:Landroid/content/ISmartShowContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/content/ISmartShowContext;
    .locals 4

    .prologue
    .line 29
    sget-object v2, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->mContext:Landroid/content/ISmartShowContext;

    if-nez v2, :cond_0

    .line 31
    :try_start_0
    const-string v2, "android.content.SmartShowContext"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 33
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ISmartShowContext;

    sput-object v2, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->mContext:Landroid/content/ISmartShowContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->mContext:Landroid/content/ISmartShowContext;

    return-object v2

    .line 34
    :catch_0
    move-exception v2

    goto :goto_0
.end method
