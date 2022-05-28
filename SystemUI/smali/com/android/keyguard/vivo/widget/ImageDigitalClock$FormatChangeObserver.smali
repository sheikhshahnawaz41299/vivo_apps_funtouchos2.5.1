.class Lcom/android/keyguard/vivo/widget/ImageDigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "ImageDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/vivo/widget/ImageDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field private mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/vivo/widget/ImageDigitalClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/vivo/widget/ImageDigitalClock;)V
    .locals 1
    .param p1, "clock"    # Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    .prologue
    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 121
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    .line 122
    invoke-virtual {p1}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$FormatChangeObserver;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    .line 128
    .local v0, "digitalClock":Lcom/android/keyguard/vivo/widget/ImageDigitalClock;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->updateTime()V

    .line 138
    :goto_0
    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$FormatChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    goto :goto_0
.end method
