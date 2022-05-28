.class public abstract Lcom/handpet/common/utils/log/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static emptyLog:Lcom/handpet/common/utils/log/ILogger;

.field private static log:Z

.field private static logMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/handpet/common/utils/log/ILogger;",
            ">;"
        }
    .end annotation
.end field

.field private static proguardLogEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/handpet/common/utils/log/LoggerFactory;->logMappings:Ljava/util/Map;

    .line 15
    sput-boolean v1, Lcom/handpet/common/utils/log/LoggerFactory;->proguardLogEnable:Z

    .line 16
    sput-boolean v1, Lcom/handpet/common/utils/log/LoggerFactory;->log:Z

    .line 17
    new-instance v0, Lcom/handpet/common/utils/log/EmptyLogger;

    invoke-direct {v0}, Lcom/handpet/common/utils/log/EmptyLogger;-><init>()V

    sput-object v0, Lcom/handpet/common/utils/log/LoggerFactory;->emptyLog:Lcom/handpet/common/utils/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/handpet/common/utils/log/ILogger;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 21
    sget-object v0, Lcom/handpet/common/utils/log/LoggerFactory;->emptyLog:Lcom/handpet/common/utils/log/ILogger;

    .line 23
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/String;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/handpet/common/utils/log/ILogger;
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    sget-boolean v1, Lcom/handpet/common/utils/log/LoggerFactory;->log:Z

    if-nez v1, :cond_2

    .line 28
    :cond_0
    sget-object v0, Lcom/handpet/common/utils/log/LoggerFactory;->emptyLog:Lcom/handpet/common/utils/log/ILogger;

    .line 39
    :cond_1
    :goto_0
    return-object v0

    .line 30
    :cond_2
    sget-object v1, Lcom/handpet/common/utils/log/LoggerFactory;->logMappings:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handpet/common/utils/log/ILogger;

    .line 31
    .local v0, "log":Lcom/handpet/common/utils/log/ILogger;
    if-nez v0, :cond_1

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_3

    sget-boolean v1, Lcom/handpet/common/utils/log/LoggerFactory;->proguardLogEnable:Z

    if-eqz v1, :cond_4

    .line 33
    :cond_3
    new-instance v0, Lcom/handpet/common/utils/log/AndroidLogger;

    .end local v0    # "log":Lcom/handpet/common/utils/log/ILogger;
    invoke-direct {v0, p0}, Lcom/handpet/common/utils/log/AndroidLogger;-><init>(Ljava/lang/String;)V

    .line 34
    .restart local v0    # "log":Lcom/handpet/common/utils/log/ILogger;
    sget-object v1, Lcom/handpet/common/utils/log/LoggerFactory;->logMappings:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_4
    sget-object v0, Lcom/handpet/common/utils/log/LoggerFactory;->emptyLog:Lcom/handpet/common/utils/log/ILogger;

    goto :goto_0
.end method
