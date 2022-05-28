.class public Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;
.super Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;
.source "LockscreenWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;,
        Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$ZKDeviceInfo;
    }
.end annotation


# static fields
.field public static final TYPE_CALL_INFO:I = 0x0

.field public static final TYPE_SMS_INFO:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static setWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "defaultLockWallpaperPath"    # Ljava/lang/String;

    .prologue
    .line 447
    move-object v1, p2

    .line 448
    .local v1, "file":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v3, "wallpaper":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 451
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 452
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 453
    .local v2, "stream":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 454
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "defaultLockWallpaperPath"    # Ljava/lang/String;

    .prologue
    .line 467
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v5, "wallpaper":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 469
    const/4 v2, 0x0

    .line 471
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 472
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v6, 0x2000

    :try_start_1
    new-array v0, v6, [B

    .line 474
    .local v0, "buffer":[B
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 476
    .local v4, "is":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 477
    .local v1, "count":I
    if-gtz v1, :cond_1

    .line 483
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 487
    if-eqz v3, :cond_3

    .line 489
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 495
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 480
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :cond_1
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v3, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 481
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 484
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v4    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 487
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v2, :cond_0

    .line 489
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 490
    :catch_1
    move-exception v6

    goto :goto_1

    .line 486
    :catchall_0
    move-exception v6

    .line 487
    :goto_3
    if-eqz v2, :cond_2

    .line 489
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 494
    :cond_2
    :goto_4
    throw v6

    .line 490
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v4    # "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 486
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 484
    :catch_4
    move-exception v6

    goto :goto_2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :cond_3
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public changePhoneData(ID)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "data"    # D

    .prologue
    .line 401
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v1, :cond_0

    .line 402
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 403
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 404
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 405
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 406
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->sendMsgToFW(Landroid/os/Message;)Z

    .line 408
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public create()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-super {p0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->create()Z

    .line 81
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    iget-object v2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->init(Landroid/os/Handler;I)Z

    move-result v0

    .line 84
    :cond_0
    return v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v1, :cond_0

    .line 327
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 328
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 329
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->callFWMethod(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 331
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasBackground()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v3, :cond_0

    .line 313
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0xa

    iput v3, v0, Landroid/os/Message;->what:I

    .line 315
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v3, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->callFWMethod(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v1

    .line 316
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 318
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return v2
.end method

.method public haveLockScreenSound()Z
    .locals 3

    .prologue
    .line 502
    const/4 v1, 0x0

    .line 503
    .local v1, "result":Z
    iget-object v2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v2, :cond_0

    .line 504
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 505
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v0, Landroid/os/Message;->what:I

    .line 506
    iget-object v2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v2, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->sendMsgToFW(Landroid/os/Message;)Z

    move-result v1

    .line 508
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return v1
.end method

.method public hide()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mLayout:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 243
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 244
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0xf

    iput v3, v0, Landroid/os/Message;->what:I

    .line 245
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v3, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->callFWMethod(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v1

    .line 246
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 248
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return v2
.end method

.method public load(Ljava/lang/String;Ljava/io/InputStream;ZZ)Landroid/view/View;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "istrean"    # Ljava/io/InputStream;
    .param p3, "autoShow"    # Z
    .param p4, "autoPlay"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 131
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v3, :cond_2

    .line 132
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v0, Landroid/os/Message;->what:I

    .line 134
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 135
    if-eqz p4, :cond_1

    :goto_1
    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 136
    new-instance v1, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;

    invoke-direct {v1, p1, p2, v6}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Runnable;)V

    .line 137
    .local v1, "obj":Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v3, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->callFWMethod(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 140
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->updateLayout(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 142
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "obj":Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;
    .end local v2    # "view":Landroid/view/View;
    :goto_2
    return-object v3

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v3, v5

    .line 134
    goto :goto_0

    :cond_1
    move v4, v5

    .line 135
    goto :goto_1

    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    move-object v3, v6

    .line 142
    goto :goto_2
.end method

.method public load(Ljava/lang/String;Ljava/io/InputStream;ZZLjava/lang/Runnable;)Landroid/view/View;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "istrean"    # Ljava/io/InputStream;
    .param p3, "autoShow"    # Z
    .param p4, "autoPlay"    # Z
    .param p5, "callbackbeforekillself"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 158
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v3, :cond_2

    .line 159
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 160
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v0, Landroid/os/Message;->what:I

    .line 161
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 162
    if-eqz p4, :cond_1

    :goto_1
    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 163
    new-instance v1, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;

    invoke-direct {v1, p1, p2, p5}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Runnable;)V

    .line 164
    .local v1, "obj":Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v3, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->callFWMethod(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 167
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->updateLayout(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 169
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "obj":Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;
    .end local v2    # "view":Landroid/view/View;
    :goto_2
    return-object v3

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v3, v5

    .line 161
    goto :goto_0

    :cond_1
    move v4, v5

    .line 162
    goto :goto_1

    .line 169
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public load(ZZ)Landroid/view/View;
    .locals 5
    .param p1, "autoShow"    # Z
    .param p2, "autoPlay"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 182
    iget-object v2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v2, :cond_2

    .line 183
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 185
    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 186
    if-eqz p2, :cond_1

    :goto_1
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 187
    iget-object v2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v2, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->callFWMethod(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 188
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->updateLayout(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 191
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "view":Landroid/view/View;
    :goto_2
    return-object v2

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v2, v4

    .line 185
    goto :goto_0

    :cond_1
    move v3, v4

    .line 186
    goto :goto_1

    .line 191
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onBatteryChange(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 392
    const/4 v0, 0x2

    int-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->changePhoneData(ID)V

    .line 393
    return-void
.end method

.method public onMissCallChange(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 376
    const/4 v0, 0x1

    int-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->changePhoneData(ID)V

    .line 377
    return-void
.end method

.method public onUnreadMsgChange(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 384
    const/4 v0, 0x0

    int-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->changePhoneData(ID)V

    .line 385
    return-void
.end method

.method public registUnlockerListener(Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->unregistUnlockerListener()V

    .line 357
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v1, :cond_1

    .line 352
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 353
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 354
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->sendMsgToFW(Landroid/os/Message;)Z

    .line 356
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iput-object p1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;

    goto :goto_0
.end method

.method public setCallAndSmsNumber(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 431
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v1, :cond_0

    .line 432
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 433
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x12

    iput v1, v0, Landroid/os/Message;->what:I

    .line 434
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 435
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 436
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->sendMsgToFW(Landroid/os/Message;)Z

    .line 438
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setDeviceInfo(Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$ZKDeviceInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$ZKDeviceInfo;

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 114
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->sendMsgToFW(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setDeviceInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "deviceid"    # Ljava/lang/String;
    .param p2, "networkOptName"    # Ljava/lang/String;
    .param p3, "networkType"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v1, :cond_0

    .line 95
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 97
    new-instance v1, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$ZKDeviceInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$ZKDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->sendMsgToFW(Landroid/os/Message;)Z

    .line 100
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setNewThemeId(Ljava/lang/String;)V
    .locals 2
    .param p1, "themeId"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v1, :cond_0

    .line 417
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 418
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 419
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 420
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->sendMsgToFW(Landroid/os/Message;)Z

    .line 422
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setUnlockRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runbale"    # Ljava/lang/Runnable;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mUnlockRunnable:Ljava/lang/Runnable;

    .line 263
    return-void
.end method

.method public show(Z)Z
    .locals 5
    .param p1, "autoPlay"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    iget-object v2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 218
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 219
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0xe

    iput v2, v0, Landroid/os/Message;->what:I

    .line 220
    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 221
    iget-object v2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v2, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->callFWMethod(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v1

    .line 222
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v4, v3

    .line 224
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return v4

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    move v2, v4

    .line 220
    goto :goto_0
.end method

.method public unLoad()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v3, :cond_0

    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 201
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0xb

    iput v3, v0, Landroid/os/Message;->what:I

    .line 202
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v3, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->callFWMethod(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v1

    .line 203
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 205
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return v2
.end method

.method public unregistUnlockerListener()V
    .locals 2

    .prologue
    .line 363
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v1, :cond_0

    .line 364
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 365
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 366
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->sendMsgToFW(Landroid/os/Message;)Z

    .line 368
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;

    .line 369
    return-void
.end method

.method public updateWallpaper()V
    .locals 2

    .prologue
    .line 299
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v1, :cond_0

    .line 300
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 301
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 302
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->sendMsgToFW(Landroid/os/Message;)Z

    .line 304
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public updateWallpaper(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "lockScreenDir"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/default_lock_wallpaper.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->setWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->updateWallpaper()V

    .line 283
    return-void
.end method

.method public updateWallpaper(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "copyWallpaper2lockScreenDir"    # Ljava/lang/Runnable;

    .prologue
    .line 290
    if-eqz p1, :cond_0

    .line 291
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 292
    invoke-virtual {p0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->updateWallpaper()V

    .line 294
    :cond_0
    return-void
.end method

.method public updateWallpaper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "newWallpaperPath"    # Ljava/lang/String;
    .param p2, "lockScreenDir"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/default_lock_wallpaper.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->setWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->updateWallpaper()V

    .line 273
    return-void
.end method
