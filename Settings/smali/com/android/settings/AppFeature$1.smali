.class Lcom/android/settings/AppFeature$1;
.super Ljava/lang/Object;
.source "AppFeature.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppFeature;


# direct methods
.method constructor <init>(Lcom/android/settings/AppFeature;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/AppFeature$1;->this$0:Lcom/android/settings/AppFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/AppFeature$1;->this$0:Lcom/android/settings/AppFeature;

    invoke-static {v0}, Lcom/android/settings/AppFeature;->access$100(Lcom/android/settings/AppFeature;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AppFeature$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AppFeature$1$1;-><init>(Lcom/android/settings/AppFeature$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method
