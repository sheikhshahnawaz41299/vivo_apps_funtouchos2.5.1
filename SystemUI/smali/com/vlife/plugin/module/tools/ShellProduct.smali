.class public Lcom/vlife/plugin/module/tools/ShellProduct;
.super Ljava/lang/Object;
.source "ShellProduct.java"


# static fields
.field private static currentHostName:Ljava/lang/String;

.field private static currentPackageName:Ljava/lang/String;

.field private static currentProductName:Ljava/lang/String;

.field private static log:Lcom/handpet/common/utils/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/vlife/plugin/module/tools/ShellProduct;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/vlife/plugin/module/tools/ShellProduct;->log:Lcom/handpet/common/utils/log/ILogger;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getCurrentProductHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/vlife/plugin/module/tools/ShellProduct;->currentHostName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentProductPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/vlife/plugin/module/tools/ShellProduct;->currentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "productName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hostName"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-object v0, Lcom/vlife/plugin/module/tools/ShellProduct;->currentProductName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/vlife/plugin/module/tools/ShellProduct;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "only can be init once"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->warn(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 30
    :cond_0
    sput-object p0, Lcom/vlife/plugin/module/tools/ShellProduct;->currentProductName:Ljava/lang/String;

    .line 31
    sput-object p1, Lcom/vlife/plugin/module/tools/ShellProduct;->currentPackageName:Ljava/lang/String;

    .line 32
    sput-object p2, Lcom/vlife/plugin/module/tools/ShellProduct;->currentHostName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEnable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "productName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Lcom/vlife/plugin/module/tools/ShellProduct;->isShell()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vlife/plugin/module/tools/ShellProduct;->currentProductName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShell()Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/vlife/plugin/module/tools/ShellProduct;->currentProductName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
