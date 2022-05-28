.class final Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplayLeakAdapter.java"


# static fields
.field private static final NORMAL_ROW:I = 0x1

.field private static final TOP_ROW:I


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/LeakTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private opened:[Z

.field private referenceKey:Ljava/lang/String;

.field private referenceName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private elementToHtmlString(Lcom/squareup/leakcanary/LeakTraceElement;ZZ)Ljava/lang/String;
    .locals 9
    .param p1, "element"    # Lcom/squareup/leakcanary/LeakTraceElement;
    .param p2, "root"    # Z
    .param p3, "opened"    # Z

    .prologue
    .line 93
    const-string v0, ""

    .line 94
    .local v0, "htmlString":Ljava/lang/String;
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->referenceName:Ljava/lang/String;

    if-nez v5, :cond_6

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "leaks "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    :goto_0
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->type:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    sget-object v6, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    if-ne v5, v6, :cond_1

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "<font color=\'#c48a47\'>static</font> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->holder:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    sget-object v6, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->ARRAY:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    if-eq v5, v6, :cond_2

    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->holder:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    sget-object v6, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->THREAD:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    if-ne v5, v6, :cond_3

    .line 104
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "<font color=\'#f3cf83\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->holder:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    invoke-virtual {v6}, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_3
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->className:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 109
    .local v2, "separator":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_7

    .line 110
    const-string v1, ""

    .line 111
    .local v1, "qualifier":Ljava/lang/String;
    iget-object v3, p1, Lcom/squareup/leakcanary/LeakTraceElement;->className:Ljava/lang/String;

    .line 117
    .local v3, "simpleName":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_4

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "<font color=\'#919191\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<font color=\'#ffffff\'>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "styledClassName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->referenceName:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".<font color=\'#998bb5\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->referenceName:Ljava/lang/String;

    const-string v7, "<"

    const-string v8, "&lt;"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ">"

    const-string v8, "&gt;"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_2
    if-eqz p3, :cond_5

    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->extra:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " <font color=\'#919191\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->extra:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_5
    return-object v0

    .line 97
    .end local v1    # "qualifier":Ljava/lang/String;
    .end local v2    # "separator":I
    .end local v3    # "simpleName":Ljava/lang/String;
    .end local v4    # "styledClassName":Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_0

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "references "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 114
    .restart local v2    # "separator":I
    :cond_7
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->className:Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 115
    .restart local v1    # "qualifier":Ljava/lang/String;
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->className:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "simpleName":Ljava/lang/String;
    goto/16 :goto_1

    .line 126
    .restart local v4    # "styledClassName":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " <font color=\'#f3cf83\'>instance</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private static findById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/squareup/leakcanary/LeakTraceElement;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/LeakTraceElement;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getItem(I)Lcom/squareup/leakcanary/LeakTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 173
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 39
    .local v5, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getItemViewType(I)I

    move-result v17

    if-nez v17, :cond_1

    .line 40
    if-nez p2, :cond_0

    .line 41
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 42
    .local v14, "refTopRow":Landroid/widget/TextView;
    const/high16 v17, 0x41900000    # 18.0f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    const/16 v17, 0x12

    const/16 v18, 0x0

    const/16 v19, 0x12

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 44
    const v17, 0x84a6c5

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 45
    const v17, 0xffffff

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    move-object/from16 p2, v14

    .end local v14    # "refTopRow":Landroid/widget/TextView;
    :cond_0
    move-object/from16 v15, p2

    .line 48
    check-cast v15, Landroid/widget/TextView;

    .line 49
    .local v15, "textView":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .end local v15    # "textView":Landroid/widget/TextView;
    :goto_0
    return-object p2

    .line 52
    :cond_1
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v10, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v17, 0x90

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 54
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 55
    new-instance v4, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v4, v5, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    .local v4, "connector":Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->setMinimumWidth(I)V

    .line 57
    const/16 v17, 0x10

    const/16 v18, 0x10

    const/16 v19, 0x10

    const/16 v20, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->setPadding(IIII)V

    .line 58
    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    .local v16, "textView2":Landroid/widget/TextView;
    const/16 v17, 0x10

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    new-instance v11, Lcom/squareup/leakcanary/internal/MoreDetailsView;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v11, v5, v0}, Lcom/squareup/leakcanary/internal/MoreDetailsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    .local v11, "moreDetailsView":Lcom/squareup/leakcanary/internal/MoreDetailsView;
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/squareup/leakcanary/internal/MoreDetailsView;->setMinimumWidth(I)V

    .line 62
    const/16 v17, 0x24

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/squareup/leakcanary/internal/MoreDetailsView;->setMinimumHeight(I)V

    .line 63
    const/16 v17, 0x10

    const/16 v18, 0x10

    const/16 v19, 0x10

    const/16 v20, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/squareup/leakcanary/internal/MoreDetailsView;->setPadding(IIII)V

    .line 64
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, 0x30

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v12, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v10, v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, 0x24

    const/16 v18, 0x24

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v13, "params2":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v10, v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    move-object/from16 p2, v10

    .line 70
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/4 v9, 0x1

    .line 71
    .local v9, "isRoot":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    .line 72
    .local v8, "isLeakingInstance":Z
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getItem(I)Lcom/squareup/leakcanary/LeakTraceElement;

    move-result-object v6

    .line 73
    .local v6, "element":Lcom/squareup/leakcanary/LeakTraceElement;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v9, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elementToHtmlString(Lcom/squareup/leakcanary/LeakTraceElement;ZZ)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "htmlString":Ljava/lang/String;
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 75
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " <font color=\'#919191\'>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "</font>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 77
    :cond_2
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    if-eqz v9, :cond_5

    .line 79
    sget-object v17, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->START:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->setType(Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;)V

    .line 87
    :goto_3
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/squareup/leakcanary/internal/MoreDetailsView;->setOpened(Z)V

    goto/16 :goto_0

    .line 70
    .end local v6    # "element":Lcom/squareup/leakcanary/LeakTraceElement;
    .end local v7    # "htmlString":Ljava/lang/String;
    .end local v8    # "isLeakingInstance":Z
    .end local v9    # "isRoot":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 71
    .restart local v9    # "isRoot":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 81
    .restart local v6    # "element":Lcom/squareup/leakcanary/LeakTraceElement;
    .restart local v7    # "htmlString":Ljava/lang/String;
    .restart local v8    # "isLeakingInstance":Z
    :cond_5
    if-eqz v8, :cond_6

    .line 82
    sget-object v17, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->END:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->setType(Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;)V

    goto :goto_3

    .line 85
    :cond_6
    sget-object v17, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->setType(Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;)V

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x2

    return v0
.end method

.method public toggleRow(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 146
    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-boolean v0, v1, p1

    .line 147
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->notifyDataSetChanged()V

    .line 148
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public update(Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "leakTrace"    # Lcom/squareup/leakcanary/LeakTrace;
    .param p2, "referenceKey"    # Ljava/lang/String;
    .param p3, "referenceName"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    iput-object p2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceKey:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceName:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/squareup/leakcanary/LeakTrace;->elements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    .line 141
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    .line 142
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
