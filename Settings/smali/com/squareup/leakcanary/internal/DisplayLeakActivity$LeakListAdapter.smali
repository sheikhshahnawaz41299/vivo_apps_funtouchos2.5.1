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
    .line 363
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v0

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
    .line 374
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v10, 0x19

    const/16 v9, 0xc

    .line 378
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v3, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 379
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 380
    const/16 v8, 0x30

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 381
    invoke-virtual {v3, v9, v10, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 382
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 383
    .local v7, "titleView":Landroid/widget/TextView;
    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 384
    new-instance v5, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 385
    .local v5, "timeView":Landroid/widget/TextView;
    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 386
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    move-object p2, v3

    .line 389
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v2

    .line 391
    .local v2, "leak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    if-nez p1, :cond_0

    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$1(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 392
    const-string v1, "MAX. "

    .line 398
    .local v1, "index":Ljava/lang/String;
    :goto_0
    iget-object v8, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v8, v8, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-nez v8, :cond_1

    .line 399
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " <font color=\'#ff0000\'>"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v10, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v10, v10, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</font>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "appName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v9, v9, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-static {v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has leaked. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 404
    .end local v0    # "appName":Ljava/lang/String;
    .local v6, "title":Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v9, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v9, v9, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const/16 v9, 0x11

    invoke-static {v8, v10, v11, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "time":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    return-object p2

    .line 395
    .end local v1    # "index":Ljava/lang/String;
    .end local v4    # "time":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, p1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "index":Ljava/lang/String;
    goto/16 :goto_0

    .line 402
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v9, v9, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v9, v9, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto :goto_1
.end method
