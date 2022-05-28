.class Lcom/vivo/settings/IndexSlipView$3;
.super Ljava/lang/Object;
.source "IndexSlipView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/IndexSlipView;->fillShowingDatasBySort(Ljava/util/LinkedList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vivo/settings/IndexSlipView$Data;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/IndexSlipView;


# direct methods
.method constructor <init>(Lcom/vivo/settings/IndexSlipView;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/vivo/settings/IndexSlipView$3;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vivo/settings/IndexSlipView$Data;Lcom/vivo/settings/IndexSlipView$Data;)I
    .locals 3
    .param p1, "next"    # Lcom/vivo/settings/IndexSlipView$Data;
    .param p2, "current"    # Lcom/vivo/settings/IndexSlipView$Data;

    .prologue
    .line 539
    invoke-virtual {p1}, Lcom/vivo/settings/IndexSlipView$Data;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 540
    .local v1, "nextPosition":Ljava/lang/Integer;
    invoke-virtual {p2}, Lcom/vivo/settings/IndexSlipView$Data;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 542
    .local v0, "currentPosition":Ljava/lang/Integer;
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 535
    check-cast p1, Lcom/vivo/settings/IndexSlipView$Data;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/vivo/settings/IndexSlipView$Data;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/IndexSlipView$3;->compare(Lcom/vivo/settings/IndexSlipView$Data;Lcom/vivo/settings/IndexSlipView$Data;)I

    move-result v0

    return v0
.end method
