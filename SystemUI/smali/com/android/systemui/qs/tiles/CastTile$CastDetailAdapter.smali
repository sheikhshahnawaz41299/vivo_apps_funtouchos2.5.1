.class final Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;
.super Ljava/lang/Object;
.source "CastTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CastDetailAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field private final mVisibleOrder:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 1

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/CastTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/CastTile$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateItems(Ljava/util/Set;)V

    return-void
.end method

.method private updateItems(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/statusbar/policy/CastController$CastDevice;>;"
    const/4 v9, 0x1

    .line 194
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v7, :cond_0

    .line 232
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v6, 0x0

    .line 196
    .local v6, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 198
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 199
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget v7, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 200
    new-instance v5, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v5}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 201
    .local v5, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    const v7, 0x7f02007f

    iput v7, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 202
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v7, v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$1400(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    .line 203
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/CastTile;->access$1500(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0e00fe

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    .line 204
    iput-object v0, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 205
    iput-boolean v9, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 206
    new-array v6, v9, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .end local v6    # "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 211
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    .end local v5    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    .restart local v6    # "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_2
    if-nez v6, :cond_6

    .line 212
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 213
    .restart local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->id:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 215
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v7

    new-array v6, v7, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "i":I
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 218
    .local v4, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 219
    .restart local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 220
    new-instance v5, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v5}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 221
    .restart local v5    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    const v7, 0x7f02007e

    iput v7, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 222
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v7, v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$1400(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    .line 223
    iget v7, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-ne v7, v9, :cond_5

    .line 224
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/CastTile;->access$1600(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0e0100

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    .line 226
    :cond_5
    iput-object v0, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 227
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v5, v6, v1

    move v1, v2

    .line 228
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 231
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    .end local v1    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v7, v6}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 168
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v1, "Cast"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 170
    if-nez p2, :cond_1

    .line 171
    invoke-static {}, Lcom/android/systemui/qs/tiles/CastTile;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$700(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addOnAttachStateChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v1, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v1, 0x7f02007d

    const v2, 0x7f0e00f7

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$1300(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateItems(Ljava/util/Set;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$1300(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->setDiscovering(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/android/systemui/qs/tiles/CastTile;->access$500()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f0e00f3

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 236
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 238
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->access$1300(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/CastController;->startCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V

    goto :goto_0
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 245
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->access$1300(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/CastController;->stopCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V

    goto :goto_0
.end method

.method public setToggleState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 164
    return-void
.end method
