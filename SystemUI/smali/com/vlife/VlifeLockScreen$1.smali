.class Lcom/vlife/VlifeLockScreen$1;
.super Ljava/lang/Object;
.source "VlifeLockScreen.java"

# interfaces
.implements Lcom/vlife/plugin/module/IUnlockHandlerFor3Part;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlife/VlifeLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlife/VlifeLockScreen;


# direct methods
.method constructor <init>(Lcom/vlife/VlifeLockScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vlife/VlifeLockScreen$1;->this$0:Lcom/vlife/VlifeLockScreen;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs handleCommonEventFromModulePlugin(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # [Ljava/lang/Object;

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSoundOn()Z
    .locals 5

    .prologue
    .line 60
    invoke-static {}, Lcom/vlife/VlifeLockScreen;->access$0()Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    const-string v1, "isUnlockSoundOn = {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vlife/VlifeLockScreen$1;->this$0:Lcom/vlife/VlifeLockScreen;

    invoke-static {v4}, Lcom/vlife/VlifeLockScreen;->access$3(Lcom/vlife/VlifeLockScreen;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen$1;->this$0:Lcom/vlife/VlifeLockScreen;

    invoke-static {v0}, Lcom/vlife/VlifeLockScreen;->access$3(Lcom/vlife/VlifeLockScreen;)Z

    move-result v0

    return v0
.end method

.method public isVibrateOn()Z
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Lcom/vlife/VlifeLockScreen;->access$0()Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    const-string v1, "isUnlockVibrateOn = {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vlife/VlifeLockScreen$1;->this$0:Lcom/vlife/VlifeLockScreen;

    invoke-static {v4}, Lcom/vlife/VlifeLockScreen;->access$2(Lcom/vlife/VlifeLockScreen;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen$1;->this$0:Lcom/vlife/VlifeLockScreen;

    invoke-static {v0}, Lcom/vlife/VlifeLockScreen;->access$2(Lcom/vlife/VlifeLockScreen;)Z

    move-result v0

    return v0
.end method

.method public unlock(I)V
    .locals 5
    .param p1, "unlockType"    # I

    .prologue
    .line 46
    invoke-static {}, Lcom/vlife/VlifeLockScreen;->access$0()Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    const-string v1, "unlock unlockType = {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen$1;->this$0:Lcom/vlife/VlifeLockScreen;

    invoke-static {v0}, Lcom/vlife/VlifeLockScreen;->access$1(Lcom/vlife/VlifeLockScreen;)Lcom/vlife/IRegisterUnlockEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen$1;->this$0:Lcom/vlife/VlifeLockScreen;

    invoke-static {v0}, Lcom/vlife/VlifeLockScreen;->access$1(Lcom/vlife/VlifeLockScreen;)Lcom/vlife/IRegisterUnlockEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vlife/IRegisterUnlockEvent;->doUnlock(I)V

    .line 50
    :cond_0
    return-void
.end method
