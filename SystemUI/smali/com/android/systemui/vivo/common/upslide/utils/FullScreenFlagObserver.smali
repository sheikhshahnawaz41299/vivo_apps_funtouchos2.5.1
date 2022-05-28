.class public Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;
.super Landroid/database/ContentObserver;
.source "FullScreenFlagObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FullScreenFlagObserver"


# instance fields
.field private mCallback:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver$Callback;

.field private mContext:Landroid/content/Context;

.field private mIsFullScreen:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->mIsFullScreen:Z

    .line 21
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private refreshFullScreenFlag()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vivo_fullscreen_flag"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->mIsFullScreen:Z

    .line 39
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->mCallback:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver$Callback;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->mCallback:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver$Callback;

    invoke-interface {v1}, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver$Callback;->onFullScreenChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 38
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FullScreenFlagObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get fullscreen flag error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public isFullScreen()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->mIsFullScreen:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->refreshFullScreenFlag()V

    .line 27
    return-void
.end method

.method public registerCallback(Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver$Callback;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->mCallback:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver$Callback;

    if-nez v0, :cond_0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->mCallback:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver$Callback;

    .line 55
    :cond_0
    return-void
.end method

.method public startObserving()V
    .locals 4

    .prologue
    .line 30
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 31
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "vivo_fullscreen_flag"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 34
    return-void
.end method
