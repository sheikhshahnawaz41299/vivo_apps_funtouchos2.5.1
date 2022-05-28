.class enum Lcom/squareup/leakcanary/AndroidExcludedRefs$28;
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
    .line 374
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
    const/4 v1, 0x1

    .line 376
    const-class v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->clazz(Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .line 377
    const-class v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->clazz(Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .line 378
    const-class v0, Ljava/lang/ref/PhantomReference;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->clazz(Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .line 379
    const-string v0, "java.lang.ref.Finalizer"

    invoke-virtual {p1, v0, v1}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->clazz(Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .line 380
    const-string v0, "java.lang.ref.FinalizerReference"

    invoke-virtual {p1, v0, v1}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->clazz(Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .line 381
    return-void
.end method
