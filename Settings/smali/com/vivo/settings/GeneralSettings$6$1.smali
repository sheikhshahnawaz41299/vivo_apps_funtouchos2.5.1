.class Lcom/vivo/settings/GeneralSettings$6$1;
.super Ljava/lang/Object;
.source "GeneralSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/GeneralSettings$6;->getSearchNodes(Landroid/content/Context;)Ljava/util/List;
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
        "Lcom/vivo/settings/xml/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/GeneralSettings$6;


# direct methods
.method constructor <init>(Lcom/vivo/settings/GeneralSettings$6;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/vivo/settings/GeneralSettings$6$1;->this$0:Lcom/vivo/settings/GeneralSettings$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vivo/settings/xml/Node;Lcom/vivo/settings/xml/Node;)I
    .locals 2
    .param p1, "lhs"    # Lcom/vivo/settings/xml/Node;
    .param p2, "rhs"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 696
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->getOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/vivo/settings/xml/Node;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 693
    check-cast p1, Lcom/vivo/settings/xml/Node;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/vivo/settings/xml/Node;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/GeneralSettings$6$1;->compare(Lcom/vivo/settings/xml/Node;Lcom/vivo/settings/xml/Node;)I

    move-result v0

    return v0
.end method
