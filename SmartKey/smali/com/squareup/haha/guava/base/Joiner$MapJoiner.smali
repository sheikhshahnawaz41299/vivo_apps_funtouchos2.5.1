.class public final Lcom/squareup/haha/guava/base/Joiner$MapJoiner;
.super Ljava/lang/Object;
.source "Joiner.java"


# instance fields
.field private final joiner$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

.field private final keyValueSeparator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/squareup/haha/guava/base/Ascii;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;->joiner$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

    .line 305
    invoke-static {p2}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/haha/guava/base/Ascii;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;-><init>(Lcom/squareup/haha/guava/base/Ascii;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 393
    .line 1354
    :try_start_0
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1357
    iget-object v1, p0, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;->joiner$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/haha/guava/base/Ascii;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1358
    iget-object v1, p0, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1359
    iget-object v1, p0, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;->joiner$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/haha/guava/base/Ascii;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1360
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;->joiner$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

    .line 2066
    iget-object v0, v0, Lcom/squareup/haha/guava/base/Ascii;->separator:Ljava/lang/String;

    .line 1361
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1362
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1363
    iget-object v1, p0, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;->joiner$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/haha/guava/base/Ascii;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1364
    iget-object v1, p0, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1365
    iget-object v1, p0, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;->joiner$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/haha/guava/base/Ascii;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 397
    :cond_0
    return-object p1
.end method
