.class final Lcom/vivo/SmartKey/e;
.super Ljava/lang/Object;
.source "ApplicationListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/SmartKey/e;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/vivo/SmartKey/f;Lcom/vivo/SmartKey/f;)I
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vivo/SmartKey/e;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/vivo/SmartKey/f;->w:Ljava/lang/String;

    iget-object v2, p2, Lcom/vivo/SmartKey/f;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 186
    check-cast p1, Lcom/vivo/SmartKey/f;

    check-cast p2, Lcom/vivo/SmartKey/f;

    invoke-virtual {p0, p1, p2}, Lcom/vivo/SmartKey/e;->a(Lcom/vivo/SmartKey/f;Lcom/vivo/SmartKey/f;)I

    move-result v0

    return v0
.end method
