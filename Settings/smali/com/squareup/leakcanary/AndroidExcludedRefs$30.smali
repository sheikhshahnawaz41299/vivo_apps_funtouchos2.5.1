.class enum Lcom/squareup/leakcanary/AndroidExcludedRefs$30;
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
    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;ILcom/squareup/leakcanary/AndroidExcludedRefs;)V

    .line 1
    return-void
.end method


# virtual methods
.method add(Lcom/squareup/leakcanary/ExcludedRefs$Builder;)V
    .locals 3
    .param p1, "excluded"    # Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .prologue
    .line 382
    const-string v0, "android.view.Choreographer$FrameDisplayEventReceiver"

    .line 383
    const-string v1, "mMessageQueue"

    const/4 v2, 0x1

    .line 382
    invoke-virtual {p1, v0, v1, v2}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->instanceField(Ljava/lang/String;Ljava/lang/String;Z)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    .line 384
    return-void
.end method
