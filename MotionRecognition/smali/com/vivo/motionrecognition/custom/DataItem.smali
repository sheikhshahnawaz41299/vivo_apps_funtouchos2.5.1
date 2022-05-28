.class public Lcom/vivo/motionrecognition/custom/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private callName:Ljava/lang/String;

.field private callNumber:Ljava/lang/String;

.field private carid:I

.field private clsName:Ljava/lang/String;

.field private function:I

.field private index:I

.field private pkName:Ljava/lang/String;

.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/motionrecognition/custom/DataItem;->carid:I

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataItem;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataItem;->callName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataItem;->callNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCarid()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/vivo/motionrecognition/custom/DataItem;->carid:I

    return v0
.end method

.method public getClsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataItem;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method public getFunction()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/vivo/motionrecognition/custom/DataItem;->function:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/vivo/motionrecognition/custom/DataItem;->index:I

    return v0
.end method

.method public getPkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataItem;->pkName:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/DataItem;->points:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/DataItem;->appName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setCallName(Ljava/lang/String;)V
    .locals 0
    .param p1, "callName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/DataItem;->callName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setCallNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "callNumber"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/DataItem;->callNumber:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setCarid(I)V
    .locals 0
    .param p1, "carid"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/vivo/motionrecognition/custom/DataItem;->carid:I

    .line 86
    return-void
.end method

.method public setClsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "clsName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/DataItem;->clsName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setFunction(I)V
    .locals 0
    .param p1, "function"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/vivo/motionrecognition/custom/DataItem;->function:I

    .line 79
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/vivo/motionrecognition/custom/DataItem;->index:I

    .line 32
    return-void
.end method

.method public setPkName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/DataItem;->pkName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPoints(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "ps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/DataItem;->points:Ljava/util/ArrayList;

    .line 90
    return-void
.end method
