.class enum Lcom/squareup/leakcanary/AndroidExcludedRefs$9;
.super Lcom/squareup/leakcanary/AndroidExcludedRefs;
.source "AndroidExcludedRefs.java"


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;IZLcom/squareup/leakcanary/AndroidExcludedRefs;)V

    .line 1
    return-void
.end method


# virtual methods
.method add(Lcom/squareup/leakcanary/ExcludedRefs$Builder;)V
    .locals 2

    .prologue
    .line 188
    const-string v0, "android.view.textservice.SpellCheckerSession$1"

    const-string v1, "this$0"

    invoke-virtual {p1, v0, v1}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->instanceField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .line 189
    return-void
.end method
