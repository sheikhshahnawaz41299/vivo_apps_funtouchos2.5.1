.class Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "CPURealDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/CPURealDataActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GridViewAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field final synthetic this$0:Lcom/vivo/settings/CPURealDataActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/settings/CPURealDataActivity;Landroid/content/Context;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resourceId"    # I

    .prologue
    .line 117
    iput-object p1, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;->this$0:Lcom/vivo/settings/CPURealDataActivity;

    .line 118
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 119
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 120
    iput p3, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;->mResource:I

    .line 121
    const-string v0, "CPURealDateActivity"

    const-string v1, "new GridViewAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;->this$0:Lcom/vivo/settings/CPURealDataActivity;

    invoke-static {v0}, Lcom/vivo/settings/CPURealDataActivity;->access$200(Lcom/vivo/settings/CPURealDataActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 136
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, "mViewHolder":Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;
    if-nez p2, :cond_0

    .line 143
    iget-object v4, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;->mResource:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 144
    new-instance v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;

    .end local v2    # "mViewHolder":Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;
    iget-object v4, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;->this$0:Lcom/vivo/settings/CPURealDataActivity;

    invoke-direct {v2, v4, v6}, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;-><init>(Lcom/vivo/settings/CPURealDataActivity;Lcom/vivo/settings/CPURealDataActivity$1;)V

    .line 145
    .restart local v2    # "mViewHolder":Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;
    const v4, 0x7f0e00b3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->image:Landroid/widget/ImageView;

    .line 146
    const v4, 0x7f0e00b5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->coreText:Landroid/widget/TextView;

    .line 147
    const v4, 0x7f0e00b6

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->stateText:Landroid/widget/TextView;

    .line 148
    const v4, 0x7f0e00b8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->rangeText:Landroid/widget/TextView;

    .line 149
    const v4, 0x7f0e00b7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v2, v4}, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->access$402(Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 150
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 156
    .local v0, "coreNum":I
    iget-object v4, v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->coreText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;->this$0:Lcom/vivo/settings/CPURealDataActivity;

    const v7, 0x7f0b07e0

    invoke-virtual {v6, v7}, Lcom/vivo/settings/CPURealDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v4, v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->image:Landroid/widget/ImageView;

    const v5, 0x7f020026

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    invoke-static {}, Lcom/vivo/settings/CPURealDataActivity;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    invoke-static {}, Lcom/vivo/settings/CPURealDataActivity;->readCpuRangeFileleByline()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "range":Ljava/lang/String;
    iget-object v4, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;->this$0:Lcom/vivo/settings/CPURealDataActivity;

    invoke-virtual {v4}, Lcom/vivo/settings/CPURealDataActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b07e1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 161
    iget-object v4, v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->rangeText:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v4, v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->rangeText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {v2}, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->access$400(Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    .end local v3    # "range":Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/vivo/settings/CPURealDataActivity;->readCpuFreqFileleByline(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "freq":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 173
    iget-object v4, v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->stateText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewAdapter;->this$0:Lcom/vivo/settings/CPURealDataActivity;

    const v6, 0x7f0b07e2

    invoke-virtual {v5, v6}, Lcom/vivo/settings/CPURealDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_2
    return-object p2

    .line 152
    .end local v0    # "coreNum":I
    .end local v1    # "freq":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mViewHolder":Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;
    check-cast v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;

    .restart local v2    # "mViewHolder":Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;
    goto :goto_0

    .line 165
    .restart local v0    # "coreNum":I
    :cond_1
    iget-object v4, v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->rangeText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-static {v2}, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->access$400(Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 175
    .restart local v1    # "freq":Ljava/lang/String;
    :cond_2
    iget-object v4, v2, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->stateText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GHZ"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
