.class abstract Lcom/handpet/common/utils/log/AbstractLogger;
.super Ljava/lang/Object;
.source "AbstractLogger.java"

# interfaces
.implements Lcom/handpet/common/utils/log/ILogger;


# static fields
.field public static final DELIM_STR:Ljava/lang/String; = "{}"


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "i":I
    const/4 v2, 0x0

    .line 101
    .local v2, "j":I
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x32

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 102
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 103
    .local v3, "l":I
    const/4 v3, 0x0

    :goto_0
    array-length v5, p2

    if-lt v3, v5, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    .end local v3    # "l":I
    .end local v4    # "sbuf":Ljava/lang/StringBuffer;
    .end local p1    # "messagePattern":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 104
    .restart local v3    # "l":I
    .restart local v4    # "sbuf":Ljava/lang/StringBuffer;
    .restart local p1    # "messagePattern":Ljava/lang/String;
    :cond_1
    const-string v5, "{}"

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 105
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 106
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    add-int/lit8 v1, v2, 0x2

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "l":I
    .end local v4    # "sbuf":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method


# virtual methods
.method protected abstract d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/handpet/common/utils/log/AbstractLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/handpet/common/utils/log/AbstractLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method public final varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/handpet/common/utils/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/handpet/common/utils/log/AbstractLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method protected abstract e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public error(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/handpet/common/utils/log/AbstractLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/handpet/common/utils/log/AbstractLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public final varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/handpet/common/utils/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/handpet/common/utils/log/AbstractLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1, p1}, Lcom/handpet/common/utils/log/AbstractLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method protected abstract i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/handpet/common/utils/log/AbstractLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/handpet/common/utils/log/AbstractLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public final varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/handpet/common/utils/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/handpet/common/utils/log/AbstractLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method protected abstract v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public verbose(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/handpet/common/utils/log/AbstractLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/handpet/common/utils/log/AbstractLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method

.method public final varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/handpet/common/utils/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/handpet/common/utils/log/AbstractLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method protected abstract w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/handpet/common/utils/log/AbstractLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/handpet/common/utils/log/AbstractLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public final varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/handpet/common/utils/log/AbstractLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/handpet/common/utils/log/AbstractLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/handpet/common/utils/log/AbstractLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method
