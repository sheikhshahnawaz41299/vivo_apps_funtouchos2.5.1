.class Lcom/handpet/common/utils/log/EmptyLogger;
.super Ljava/lang/Object;
.source "EmptyLogger.java"

# interfaces
.implements Lcom/handpet/common/utils/log/ILogger;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 21
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 57
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 49
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 69
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 61
    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 17
    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 13
    return-void
.end method

.method public varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 53
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 65
    return-void
.end method
