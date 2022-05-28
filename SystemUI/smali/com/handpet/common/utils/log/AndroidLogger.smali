.class Lcom/handpet/common/utils/log/AndroidLogger;
.super Lcom/handpet/common/utils/log/AbstractLogger;
.source "AndroidLogger.java"


# static fields
.field private static final DEBUG:Z

.field private static final START_TIME:J


# instance fields
.field private count:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/handpet/common/utils/log/AndroidLogger;->START_TIME:J

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/handpet/common/utils/log/AbstractLogger;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private getLine()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 112
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 113
    .local v1, "find":Z
    array-length v5, v0

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_0

    .line 124
    :goto_1
    return v3

    .line 113
    :cond_0
    aget-object v2, v0, v4

    .line 114
    .local v2, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/handpet/common/utils/log/AbstractLogger;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 115
    const/4 v1, 0x1

    .line 113
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    :cond_2
    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/handpet/common/utils/log/AbstractLogger;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 120
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    goto :goto_1
.end method

.method private toFullMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-wide v6, Lcom/handpet/common/utils/log/AndroidLogger;->START_TIME:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long v0, v4, v6

    .line 103
    .local v0, "ms":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][tid_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/handpet/common/utils/log/AndroidLogger;->getLine()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "msg":Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method protected d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getStatusModule()Lcom/vlife/plugin/module/IStatusModule;

    move-result-object v0

    .line 44
    .local v0, "status":Lcom/vlife/plugin/module/IStatusModule;
    if-eqz v0, :cond_0

    const-string v1, "log"

    invoke-interface {v0, v1}, Lcom/vlife/plugin/module/IStatusModule;->functionEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/handpet/common/utils/log/AndroidLogger;->toFullMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 46
    if-eqz p3, :cond_1

    .line 47
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 11
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getStatusModule()Lcom/vlife/plugin/module/IStatusModule;

    move-result-object v2

    .line 83
    .local v2, "status":Lcom/vlife/plugin/module/IStatusModule;
    if-eqz v2, :cond_0

    const-string v4, "log"

    invoke-interface {v2, v4}, Lcom/vlife/plugin/module/IStatusModule;->functionEnable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/handpet/common/utils/log/AndroidLogger;->toFullMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "full_message":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 86
    invoke-static {p1, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v1    # "full_message":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    if-eqz v2, :cond_1

    iget v4, p0, Lcom/handpet/common/utils/log/AndroidLogger;->count:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_1

    .line 92
    iget v4, p0, Lcom/handpet/common/utils/log/AndroidLogger;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/handpet/common/utils/log/AndroidLogger;->count:I

    .line 93
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 94
    .local v3, "writer":Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 95
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "error":Ljava/lang/String;
    const-string v4, "dev_thread_throwable"

    const/4 v5, 0x5

    new-array v5, v5, [[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "tag"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "message"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "name"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "count"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/handpet/common/utils/log/AndroidLogger;->count:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "error"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    aput-object v7, v5, v6

    invoke-interface {v2, v4, v5}, Lcom/vlife/plugin/module/IStatusModule;->ua(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 98
    .end local v0    # "error":Ljava/lang/String;
    .end local v3    # "writer":Ljava/io/StringWriter;
    :cond_1
    return-void

    .line 88
    .restart local v1    # "full_message":Ljava/lang/String;
    :cond_2
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getStatusModule()Lcom/vlife/plugin/module/IStatusModule;

    move-result-object v0

    .line 57
    .local v0, "status":Lcom/vlife/plugin/module/IStatusModule;
    if-eqz v0, :cond_0

    const-string v1, "log"

    invoke-interface {v0, v1}, Lcom/vlife/plugin/module/IStatusModule;->functionEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/handpet/common/utils/log/AndroidLogger;->toFullMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 59
    if-eqz p3, :cond_1

    .line 60
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getStatusModule()Lcom/vlife/plugin/module/IStatusModule;

    move-result-object v0

    .line 31
    .local v0, "status":Lcom/vlife/plugin/module/IStatusModule;
    if-eqz v0, :cond_0

    const-string v1, "log"

    invoke-interface {v0, v1}, Lcom/vlife/plugin/module/IStatusModule;->functionEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/handpet/common/utils/log/AndroidLogger;->toFullMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 33
    if-eqz p3, :cond_1

    .line 34
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getStatusModule()Lcom/vlife/plugin/module/IStatusModule;

    move-result-object v0

    .line 70
    .local v0, "status":Lcom/vlife/plugin/module/IStatusModule;
    if-eqz v0, :cond_0

    const-string v1, "log"

    invoke-interface {v0, v1}, Lcom/vlife/plugin/module/IStatusModule;->functionEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/handpet/common/utils/log/AndroidLogger;->toFullMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 72
    if-eqz p3, :cond_1

    .line 73
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
