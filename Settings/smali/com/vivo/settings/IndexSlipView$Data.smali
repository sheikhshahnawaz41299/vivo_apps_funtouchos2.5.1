.class Lcom/vivo/settings/IndexSlipView$Data;
.super Ljava/lang/Object;
.source "IndexSlipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/IndexSlipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field count:I

.field index:I

.field position:I

.field sortKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/vivo/settings/IndexSlipView;


# direct methods
.method public constructor <init>(Lcom/vivo/settings/IndexSlipView;Ljava/lang/String;II)V
    .locals 2
    .param p2, "sortKey"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 724
    iput-object p1, p0, Lcom/vivo/settings/IndexSlipView$Data;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/IndexSlipView$Data;->sortKey:Ljava/lang/String;

    .line 720
    iput v1, p0, Lcom/vivo/settings/IndexSlipView$Data;->position:I

    .line 721
    iput v1, p0, Lcom/vivo/settings/IndexSlipView$Data;->index:I

    .line 722
    iput v1, p0, Lcom/vivo/settings/IndexSlipView$Data;->count:I

    .line 725
    iput-object p2, p0, Lcom/vivo/settings/IndexSlipView$Data;->sortKey:Ljava/lang/String;

    .line 726
    iput p3, p0, Lcom/vivo/settings/IndexSlipView$Data;->position:I

    .line 727
    iput p4, p0, Lcom/vivo/settings/IndexSlipView$Data;->index:I

    .line 728
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lcom/vivo/settings/IndexSlipView$Data;->count:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lcom/vivo/settings/IndexSlipView$Data;->index:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/vivo/settings/IndexSlipView$Data;->position:I

    return v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView$Data;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 743
    iput p1, p0, Lcom/vivo/settings/IndexSlipView$Data;->count:I

    .line 744
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "<index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    iget v1, p0, Lcom/vivo/settings/IndexSlipView$Data;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 756
    const-string v1, ",sortKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView$Data;->sortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const-string v1, ",position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    iget v1, p0, Lcom/vivo/settings/IndexSlipView$Data;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 762
    const-string v1, ",count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    iget v1, p0, Lcom/vivo/settings/IndexSlipView$Data;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
