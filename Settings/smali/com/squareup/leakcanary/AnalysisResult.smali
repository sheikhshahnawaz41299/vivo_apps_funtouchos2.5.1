.class public final Lcom/squareup/leakcanary/AnalysisResult;
.super Ljava/lang/Object;
.source "AnalysisResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final analysisDurationMs:J

.field public final className:Ljava/lang/String;

.field public final excludedLeak:Z

.field public final failure:Ljava/lang/Throwable;

.field public final leakFound:Z

.field public final leakTrace:Lcom/squareup/leakcanary/LeakTrace;


# direct methods
.method private constructor <init>(ZZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/Throwable;J)V
    .locals 0
    .param p1, "leakFound"    # Z
    .param p2, "excludedLeak"    # Z
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "leakTrace"    # Lcom/squareup/leakcanary/LeakTrace;
    .param p5, "failure"    # Ljava/lang/Throwable;
    .param p6, "analysisDurationMs"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/squareup/leakcanary/AnalysisResult;->leakFound:Z

    .line 32
    iput-boolean p2, p0, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    .line 33
    iput-object p3, p0, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/squareup/leakcanary/AnalysisResult;->leakTrace:Lcom/squareup/leakcanary/LeakTrace;

    .line 35
    iput-object p5, p0, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    .line 36
    iput-wide p6, p0, Lcom/squareup/leakcanary/AnalysisResult;->analysisDurationMs:J

    .line 37
    return-void
.end method

.method public static failure(Ljava/lang/Throwable;J)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 9
    .param p0, "failure"    # Ljava/lang/Throwable;
    .param p1, "analysisDurationMs"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 27
    new-instance v0, Lcom/squareup/leakcanary/AnalysisResult;

    move v2, v1

    move-object v4, v3

    move-object v5, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/squareup/leakcanary/AnalysisResult;-><init>(ZZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/Throwable;J)V

    return-object v0
.end method

.method public static leakDetected(ZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;J)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 9
    .param p0, "excludedLeak"    # Z
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "leakTrace"    # Lcom/squareup/leakcanary/LeakTrace;
    .param p3, "analysisDurationMs"    # J

    .prologue
    .line 23
    new-instance v0, Lcom/squareup/leakcanary/AnalysisResult;

    const/4 v1, 0x1

    const/4 v5, 0x0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/squareup/leakcanary/AnalysisResult;-><init>(ZZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/Throwable;J)V

    return-object v0
.end method

.method public static noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 8
    .param p0, "analysisDurationMs"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/squareup/leakcanary/AnalysisResult;

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    move-wide v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/squareup/leakcanary/AnalysisResult;-><init>(ZZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/Throwable;J)V

    return-object v0
.end method
