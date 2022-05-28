.class public final Lcom/tpad/ux/funlocker/ExternalUtils;
.super Lcom/tpad/ux/funlocker/DrawLockScreen;
.source "ExternalUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tpad/ux/funlocker/DrawLockScreen;-><init>()V

    return-void
.end method

.method static EngineSetCalCutOffestFunc()I
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x0

    const-string v1, "com/tpad/ux/funlocker/RenderView"

    .line 25
    const-string v2, "CallBack"

    .line 24
    invoke-static {v0, v1, v2}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineSetCalCutOffestFunc(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static EngineSetCallbackFunc()I
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x0

    const-string v1, "com/tpad/ux/funlocker/RenderView"

    .line 20
    const-string v2, "UXLaunch"

    .line 19
    invoke-static {v0, v1, v2}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineSetCallbackFunc(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static EngineSetCallbackFunc(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "func"    # Ljava/lang/String;

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineSetCallbackFunc(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static EngineSetGetObjectFunc()I
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x0

    const-string v1, "com/tpad/ux/funlocker/RenderView"

    .line 30
    const-string v2, "getObject"

    .line 29
    invoke-static {v0, v1, v2}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineSetGetObjectFunc(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static UXLaunch(ILjava/lang/String;)V
    .locals 2
    .param p0, "engine"    # I
    .param p1, "ret"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "ExternalUtils"

    .line 35
    const-string v1, "Must set the class Name and Method Name at EngineSetCallbackFunc"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public static initEngineCallback()V
    .locals 0

    .prologue
    .line 13
    invoke-static {}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineSetCallbackFunc()I

    .line 14
    invoke-static {}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineSetCalCutOffestFunc()I

    .line 15
    invoke-static {}, Lcom/tpad/ux/funlocker/ExternalUtils;->EngineSetGetObjectFunc()I

    .line 16
    return-void
.end method
