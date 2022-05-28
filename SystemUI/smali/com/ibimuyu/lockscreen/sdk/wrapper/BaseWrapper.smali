.class public abstract Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;
.super Ljava/lang/Object;
.source "BaseWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$EngineErrorListener;,
        Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "com.ibimuyu.lockscreen"

.field private static final TAG:Ljava/lang/String; = "BaseWrapper"


# instance fields
.field protected mCallbackHandler:Landroid/os/Handler;

.field protected mContext:Landroid/content/Context;

.field protected mEngineErrorListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$EngineErrorListener;

.field protected mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

.field protected mLayout:Landroid/view/ViewGroup;

.field protected mListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;

.field protected mPackageName:Ljava/lang/String;

.field protected mUnlockRunnable:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const-string v0, "com.ibimuyu.lockscreen"

    invoke-direct {p0, p1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mLayout:Landroid/view/ViewGroup;

    .line 20
    iput-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mUnlockRunnable:Ljava/lang/Runnable;

    .line 21
    iput-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mCallbackHandler:Landroid/os/Handler;

    .line 26
    iput-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;

    .line 28
    iput-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mEngineErrorListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$EngineErrorListener;

    .line 204
    iput-object p1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mContext:Landroid/content/Context;

    .line 205
    iput-object p2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mPackageName:Ljava/lang/String;

    .line 206
    return-void
.end method


# virtual methods
.method public create()Z
    .locals 4

    .prologue
    .line 87
    new-instance v1, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-direct {v1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;-><init>()V

    iput-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    .line 88
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    iget-object v2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->create(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 90
    .local v0, "ok":Z
    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mLayout:Landroid/view/ViewGroup;

    .line 93
    new-instance v1, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$1;-><init>(Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mCallbackHandler:Landroid/os/Handler;

    .line 119
    const/4 v1, 0x1

    .line 124
    :goto_0
    return v1

    .line 121
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    .line 124
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public destory()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 133
    iget-object v4, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v4, :cond_1

    .line 134
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 135
    .local v0, "msg":Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 136
    iget-object v4, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v4, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->callFWMethod(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "obj":Ljava/lang/Object;
    iput-object v5, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mUnlockRunnable:Ljava/lang/Runnable;

    .line 140
    iget-object v4, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 141
    iput-object v5, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mLayout:Landroid/view/ViewGroup;

    .line 143
    iget-object v4, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v4, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    iput-object v5, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mCallbackHandler:Landroid/os/Handler;

    .line 147
    iget-object v4, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v4}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->destory()V

    .line 148
    iput-object v5, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    .line 150
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return v2

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v2, v3

    .line 150
    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    move v2, v3

    .line 152
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v3, :cond_0

    .line 188
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 189
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x7

    iput v3, v0, Landroid/os/Message;->what:I

    .line 190
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v3, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->callFWMethod(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v1

    .line 192
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 195
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return v2
.end method

.method public play()Z
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v1, :cond_0

    .line 161
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 162
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 163
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->sendMsgToFW(Landroid/os/Message;)Z

    move-result v1

    .line 165
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stop()Z
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 175
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iget-object v1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mFrameWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;

    invoke-virtual {v1, v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->sendMsgToFW(Landroid/os/Message;)Z

    move-result v1

    .line 178
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateLayout(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 213
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 215
    iget-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mLayout:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;->mLayout:Landroid/view/ViewGroup;

    .line 218
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
