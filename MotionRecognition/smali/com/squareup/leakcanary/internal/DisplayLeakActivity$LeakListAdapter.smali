.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplayLeakActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeakListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v0, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v0, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 416
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 420
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 421
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 422
    const/16 v10, 0x30

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 423
    const/16 v10, 0xc

    const/16 v11, 0x19

    const/16 v12, 0xc

    const/16 v13, 0x19

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 424
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 425
    .local v9, "titleView":Landroid/widget/TextView;
    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 426
    new-instance v7, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 427
    .local v7, "timeView":Landroid/widget/TextView;
    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 428
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    move-object/from16 p2, v4

    .line 432
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v3

    .line 434
    .local v3, "leak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v11, v11, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, p1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ". "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "index":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " <font color=\'#ff0000\'>"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v12, v3, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v12, v12, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</font>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "appName":Ljava/lang/String;
    iget-object v10, v3, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v10, v10, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-nez v10, :cond_1

    .line 439
    iget-object v10, v3, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v10, v10, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-static {v10}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "className":Ljava/lang/String;
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v11, v3, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-wide v12, v11, Lcom/squareup/leakcanary/AnalysisResult;->retainedHeapSize:J

    invoke-static {v10, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, "size":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " has leaked "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 443
    .local v8, "title":Ljava/lang/String;
    iget-object v10, v3, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-boolean v10, v10, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    if-eqz v10, :cond_0

    .line 444
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[Ignored] "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 447
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 455
    .end local v1    # "className":Ljava/lang/String;
    .end local v5    # "size":Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v11, v3, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->resultFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 458
    const/16 v11, 0x11

    .line 457
    invoke-static {v10, v12, v13, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, "time":Ljava/lang/String;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    return-object p2

    .line 449
    .end local v6    # "time":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 451
    iget-object v11, v3, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v11, v11, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 452
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 453
    iget-object v11, v3, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v11, v11, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 449
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "title":Ljava/lang/String;
    goto :goto_0
.end method
