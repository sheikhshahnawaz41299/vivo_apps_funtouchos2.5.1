.class enum Lcom/squareup/leakcanary/AndroidExcludedRefs$29;
.super Lcom/squareup/leakcanary/AndroidExcludedRefs;
.source "AndroidExcludedRefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/AndroidExcludedRefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;ILcom/squareup/leakcanary/AndroidExcludedRefs;)V

    .line 1
    return-void
.end method


# virtual methods
.method add(Lcom/squareup/leakcanary/ExcludedRefs$Builder;)V
    .locals 2
    .param p1, "excluded"    # Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .prologue
    .line 372
    const-string v0, "LeakCanary-Heap-Dump"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->thread(Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .line 373
    return-void
.end method
