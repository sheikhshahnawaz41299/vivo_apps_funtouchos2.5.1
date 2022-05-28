.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 342
    iget-object v4, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {v4}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getLeakDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 343
    .local v3, "leakDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 344
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 345
    array-length v6, v2

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_1

    .line 352
    :cond_0
    iget-object v4, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    .line 353
    iget-object v4, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-virtual {v4}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 354
    return-void

    .line 345
    :cond_1
    aget-object v1, v2, v4

    .line 346
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 347
    .local v0, "deleted":Z
    if-nez v0, :cond_2

    .line 348
    const-string v7, "Could not delete file %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
