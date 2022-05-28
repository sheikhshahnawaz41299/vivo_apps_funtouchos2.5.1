.class public Lcom/tpad/ux/funlocker/DrawLockScreen;
.super Ljava/lang/Object;
.source "DrawLockScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native EngineExit(I)V
.end method

.method public static native EnginePause(I)V
.end method

.method public static native EnginePushKey(II)V
.end method

.method public static native EnginePushTPEvent(IIII)V
.end method

.method public static native EngineRender(ILandroid/graphics/Bitmap;)I
.end method

.method public static native EngineRenderArea(ILandroid/graphics/Bitmap;)Ljava/lang/String;
.end method

.method public static native EngineRestart(I)V
.end method

.method public static native EngineSetCalCutOffestFunc(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native EngineSetCallbackFunc(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native EngineSetColorKey(III)V
.end method

.method public static native EngineSetGetObjectFunc(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native EngineSetLogLevel(II)V
.end method

.method public static native EngineStart(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native EngineStartBuffer(IIII[BLjava/lang/String;III)I
.end method

.method public static native EngineStartFile(IIIILjava/lang/String;Ljava/lang/String;III)I
.end method

.method public static native EngineStartFromBuffer([BLjava/lang/String;II)I
.end method

.method public static native GetEngineInfo()Ljava/lang/String;
.end method

.method public static native GetHeight(I)I
.end method

.method public static native GetOpenGL(I)I
.end method

.method public static native GetTransparent(I)I
.end method

.method public static native GetUXContentHeight(ILjava/lang/String;)I
.end method

.method public static native GetUXContentWidth(ILjava/lang/String;)I
.end method

.method public static native GetUXCreateTime(I)Ljava/lang/String;
.end method

.method public static native GetUXCreator(I)Ljava/lang/String;
.end method

.method public static native GetUXFileData(ILjava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native GetUXFileDataFromBuffer(I[BLjava/lang/String;)[B
.end method

.method public static native GetUXHeight([B)I
.end method

.method public static native GetUXKey([B)Ljava/lang/String;
.end method

.method public static native GetUXNeedOpenGL([B)I
.end method

.method public static native GetUXSupportTransparent([B)I
.end method

.method public static native GetUXVersion(I)I
.end method

.method public static native GetUXWidth([B)I
.end method

.method public static native GetWidth(I)I
.end method

.method public static native InvokeJS(ILjava/lang/String;I)I
.end method

.method public static native InvokeJSWithData(ILjava/lang/String;[B)I
.end method

.method public static native InvokeJSWithString(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native RestoreVlaue(ILjava/lang/String;)I
.end method

.method public static native SetElmData(IIIII[B)I
.end method

.method public static native SetElmDataByBitmap(IIILandroid/graphics/Bitmap;)I
.end method

.method public static native SetElmDataByBuffer(IIIII[B)I
.end method

.method public static native UpdateInfo(ILjava/lang/String;)I
.end method

.method public static native UpdateTime(ILjava/lang/String;)I
.end method

.method public static native setObject(ILjava/lang/Object;)V
.end method
