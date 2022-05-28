.class public Lcom/vivo/motionrecognition/custom/VivoSystemProperties;
.super Ljava/lang/Object;
.source "VivoSystemProperties.java"


# static fields
.field private static mClassType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mGetIntMethod:Ljava/lang/reflect/Method;

.field private static mGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mClassType:Ljava/lang/Class;

    .line 7
    sput-object v0, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mGetMethod:Ljava/lang/reflect/Method;

    .line 8
    sput-object v0, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mGetIntMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {}, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->init()V

    .line 25
    const/4 v2, 0x0

    .line 27
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mGetMethod:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mClassType:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-object v2

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->init()V

    .line 37
    const/4 v2, 0x0

    .line 39
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mGetIntMethod:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mClassType:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v2

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 48
    invoke-static {}, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->init()V

    .line 49
    move v2, p1

    .line 51
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mGetIntMethod:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mClassType:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 52
    .local v1, "v":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 56
    .end local v1    # "v":Ljava/lang/Integer;
    :goto_0
    return v2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static init()V
    .locals 6

    .prologue
    .line 12
    :try_start_0
    sget-object v1, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mClassType:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 13
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mClassType:Ljava/lang/Class;

    .line 14
    sget-object v1, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mClassType:Ljava/lang/Class;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mGetMethod:Ljava/lang/reflect/Method;

    .line 15
    sget-object v1, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mClassType:Ljava/lang/Class;

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/vivo/motionrecognition/custom/VivoSystemProperties;->mGetIntMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 17
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 18
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
