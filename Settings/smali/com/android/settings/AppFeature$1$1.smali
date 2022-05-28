.class Lcom/android/settings/AppFeature$1$1;
.super Ljava/lang/Object;
.source "AppFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppFeature$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/AppFeature$1;


# direct methods
.method constructor <init>(Lcom/android/settings/AppFeature$1;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/AppFeature$1$1;->this$1:Lcom/android/settings/AppFeature$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/settings/AppFeature$1$1;->this$1:Lcom/android/settings/AppFeature$1;

    iget-object v1, v1, Lcom/android/settings/AppFeature$1;->this$0:Lcom/android/settings/AppFeature;

    invoke-static {v1}, Lcom/android/settings/AppFeature;->access$000(Lcom/android/settings/AppFeature;)Lcom/android/settings/AppFeature$SyncStatusCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AppFeature$1$1;->this$1:Lcom/android/settings/AppFeature$1;

    iget-object v1, v1, Lcom/android/settings/AppFeature$1;->this$0:Lcom/android/settings/AppFeature;

    invoke-static {v1}, Lcom/android/settings/AppFeature;->access$000(Lcom/android/settings/AppFeature;)Lcom/android/settings/AppFeature$SyncStatusCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/AppFeature$SyncStatusCallBack;->onSyncStateUpdated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
