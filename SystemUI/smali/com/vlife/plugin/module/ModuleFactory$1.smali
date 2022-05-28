.class Lcom/vlife/plugin/module/ModuleFactory$1;
.super Ljava/lang/Object;
.source "ModuleFactory.java"

# interfaces
.implements Lcom/vlife/plugin/module/IStatusModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlife/plugin/module/ModuleFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createActivityHandler(Ljava/lang/String;)Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public createBroadcastReceiverHandler(Ljava/lang/String;)Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public createServiceHandler(Ljava/lang/String;)Lcom/vlife/plugin/module/impl/IServiceHandler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public functionEnable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, "release"

    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ua(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "ua"    # [[Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method
