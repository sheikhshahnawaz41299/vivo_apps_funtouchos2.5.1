.class Lcom/squareup/leakcanary/GcTrigger$1;
.super Ljava/lang/Object;
.source "GcTrigger.java"

# interfaces
.implements Lcom/squareup/leakcanary/GcTrigger;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private enqueueReferences()V
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public runGc()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 32
    invoke-direct {p0}, Lcom/squareup/leakcanary/GcTrigger$1;->enqueueReferences()V

    .line 33
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 34
    return-void
.end method
