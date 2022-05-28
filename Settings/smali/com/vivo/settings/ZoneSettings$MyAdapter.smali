.class Lcom/vivo/settings/ZoneSettings$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "ZoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/ZoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field private availIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fullMode:Z

.field final synthetic this$0:Lcom/vivo/settings/ZoneSettings;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/ZoneSettings;)V
    .locals 1

    .prologue
    .line 161
    iput-object p1, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->fullMode:Z

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->availIndexes:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/ZoneSettings;Lcom/vivo/settings/ZoneSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/ZoneSettings;
    .param p2, "x1"    # Lcom/vivo/settings/ZoneSettings$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/vivo/settings/ZoneSettings$MyAdapter;-><init>(Lcom/vivo/settings/ZoneSettings;)V

    return-void
.end method

.method private getRealPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 190
    :try_start_0
    iget-boolean v2, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->fullMode:Z

    if-eqz v2, :cond_0

    move v1, p1

    .line 193
    :goto_0
    return v1

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->availIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFited(ILjava/lang/String;)I
    .locals 8
    .param p1, "pos"    # I
    .param p2, "sltStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 270
    invoke-virtual {p0, p1}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, "data":Ljava/lang/Object;
    instance-of v4, v0, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 272
    check-cast v0, Ljava/util/Map;

    .end local v0    # "data":Ljava/lang/Object;
    const-string v4, "name"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/vivo/settings/ZoneSettings;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "nameStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/common/utils/HanziToPinyin;->getFirstPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "pinyin":Ljava/lang/String;
    const-string v4, "ZoneSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addItem displayName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pinyin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int/2addr v4, v5

    .line 281
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "nameStr":Ljava/lang/String;
    .end local v3    # "pinyin":Ljava/lang/String;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->fullMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v0}, Lcom/vivo/settings/ZoneSettings;->access$400(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->availIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v0}, Lcom/vivo/settings/ZoneSettings;->access$400(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->getRealPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v0}, Lcom/vivo/settings/ZoneSettings;->access$400(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->getRealPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v0}, Lcom/vivo/settings/ZoneSettings;->access$400(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->getRealPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v1}, Lcom/vivo/settings/ZoneSettings;->access$400(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

    move-result-object v2

    iget-boolean v1, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->fullMode:Z

    if-eqz v1, :cond_0

    .end local p1    # "position":I
    :goto_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, "view":Landroid/view/View;
    return-object v0

    .line 224
    .end local v0    # "view":Landroid/view/View;
    .restart local p1    # "position":I
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->availIndexes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v0}, Lcom/vivo/settings/ZoneSettings;->access$400(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public locationZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "sltStr"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "start":I
    invoke-virtual {p0}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->getCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 243
    .local v0, "end":I
    invoke-virtual {p0}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->isFited(ILjava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 249
    invoke-direct {p0, v0, p1}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->isFited(ILjava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "mid":I
    :goto_1
    sub-int v3, v0, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 254
    add-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 255
    invoke-direct {p0, v1, p1}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->isFited(ILjava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 256
    move v0, v1

    goto :goto_1

    .line 258
    :cond_2
    move v2, v1

    goto :goto_1

    .line 261
    :cond_3
    iget-object v3, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-virtual {v3}, Lcom/vivo/settings/ZoneSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;)V
    .locals 7
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v4, "ZoneSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update keyWord:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->fullMode:Z

    .line 183
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->notifyDataSetInvalidated()V

    .line 184
    return-void

    .line 169
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v3, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v4}, Lcom/vivo/settings/ZoneSettings;->access$400(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 172
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v4}, Lcom/vivo/settings/ZoneSettings;->access$400(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "data":Ljava/lang/Object;
    instance-of v4, v0, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 174
    check-cast v0, Ljava/util/Map;

    .end local v0    # "data":Ljava/lang/Object;
    const-string v4, "name"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_2
    iput-object v3, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->availIndexes:Ljava/util/ArrayList;

    .line 181
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vivo/settings/ZoneSettings$MyAdapter;->fullMode:Z

    goto :goto_0
.end method
