.class public final Lcom/squareup/haha/perflib/Field;
.super Ljava/lang/Object;
.source "Field.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Lcom/squareup/haha/perflib/Type;


# direct methods
.method public constructor <init>(Lcom/squareup/haha/perflib/Type;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/squareup/haha/perflib/Field;->mType:Lcom/squareup/haha/perflib/Type;

    .line 35
    iput-object p2, p0, Lcom/squareup/haha/perflib/Field;->mName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    instance-of v2, p1, Lcom/squareup/haha/perflib/Field;

    if-nez v2, :cond_2

    move v0, v1

    .line 55
    goto :goto_0

    .line 58
    :cond_2
    check-cast p1, Lcom/squareup/haha/perflib/Field;

    .line 60
    iget-object v2, p0, Lcom/squareup/haha/perflib/Field;->mType:Lcom/squareup/haha/perflib/Type;

    iget-object v3, p1, Lcom/squareup/haha/perflib/Field;->mType:Lcom/squareup/haha/perflib/Type;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/squareup/haha/perflib/Field;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/squareup/haha/perflib/Field;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/squareup/haha/perflib/Field;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/squareup/haha/perflib/Type;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/squareup/haha/perflib/Field;->mType:Lcom/squareup/haha/perflib/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/squareup/haha/perflib/Field;->mType:Lcom/squareup/haha/perflib/Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/squareup/haha/perflib/Field;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1078
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 65
    return v0
.end method
