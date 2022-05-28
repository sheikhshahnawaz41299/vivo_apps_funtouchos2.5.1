.class Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;
.super Ljava/lang/Object;
.source "LockscreenWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadStreamObj"
.end annotation


# instance fields
.field public callback:Ljava/lang/Runnable;

.field public name:Ljava/lang/String;

.field public stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "nm"    # Ljava/lang/String;
    .param p2, "stm"    # Ljava/io/InputStream;
    .param p3, "cback"    # Ljava/lang/Runnable;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;->name:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;->stream:Ljava/io/InputStream;

    .line 37
    iput-object p3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper$LoadStreamObj;->callback:Ljava/lang/Runnable;

    .line 38
    return-void
.end method
