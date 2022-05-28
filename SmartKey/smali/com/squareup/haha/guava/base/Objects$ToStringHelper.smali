.class public final Lcom/squareup/haha/guava/base/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# instance fields
.field private final className:Ljava/lang/String;

.field private holderHead:Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

.field private holderTail:Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;-><init>(B)V

    iput-object v0, p0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->holderHead:Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

    .line 202
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->holderHead:Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->holderTail:Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

    .line 203
    iput-boolean v1, p0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->omitNullValues:Z

    .line 209
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->className:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;-><init>(B)V

    .line 409
    iget-object v1, p0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->holderTail:Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;->next:Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->holderTail:Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

    .line 410
    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/String;I)Lcom/squareup/haha/guava/base/Objects$ToStringHelper;
    .locals 1

    .prologue
    .line 281
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/haha/guava/base/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/haha/guava/base/Objects$ToStringHelper;
    .locals 2

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->addHolder()Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v1

    .line 421
    iput-object p2, v1, Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 422
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    .line 423
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 389
    const-string v1, ""

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 392
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->holderHead:Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

    iget-object v0, v0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;->next:Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

    :goto_0
    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, ", "

    .line 398
    iget-object v3, v0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 399
    iget-object v3, v0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    :cond_0
    iget-object v3, v0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v0, v0, Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;->next:Lcom/squareup/haha/guava/base/Objects$ToStringHelper$ValueHolder;

    goto :goto_0

    .line 404
    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
