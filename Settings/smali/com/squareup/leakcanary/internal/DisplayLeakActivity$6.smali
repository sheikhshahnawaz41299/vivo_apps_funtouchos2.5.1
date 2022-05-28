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

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 286
    invoke-static {}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->detectedLeakDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 287
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 289
    move-object v0, v2

    .local v0, "array":[Ljava/io/File;
    array-length v4, v2

    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 294
    .end local v0    # "array":[Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "length":I
    :cond_0
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$2(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Ljava/util/List;)V

    .line 295
    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {v5}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$2(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 296
    return-void

    .line 290
    .restart local v0    # "array":[Ljava/io/File;
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    :cond_1
    aget-object v1, v0, v3

    .line 291
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 289
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
