.class Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;
.super Landroid/widget/SimpleAdapter;
.source "ZoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/ZoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleZoneAdapter"
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mFrom:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTo:[I

.field private mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 300
    iput-object p2, p0, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->mData:Ljava/util/List;

    .line 301
    iput p3, p0, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->mResource:I

    .line 302
    iput-object p4, p0, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->mFrom:[Ljava/lang/String;

    .line 303
    iput-object p5, p0, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->mTo:[I

    .line 304
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 306
    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 13
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 329
    iget-object v10, p0, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->mData:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 330
    .local v4, "dataSet":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez v4, :cond_1

    .line 383
    :cond_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 335
    .local v0, "binder":Landroid/widget/SimpleAdapter$ViewBinder;
    iget-object v5, p0, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->mFrom:[Ljava/lang/String;

    .line 336
    .local v5, "from":[Ljava/lang/String;
    iget-object v8, p0, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->mTo:[I

    .line 337
    .local v8, "to":[I
    array-length v2, v8

    .line 339
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 340
    aget v10, v8, v6

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 341
    .local v9, "v":Landroid/view/View;
    if-eqz v9, :cond_4

    .line 342
    aget-object v10, v5, v6

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 343
    .local v3, "data":Ljava/lang/Object;
    if-nez v3, :cond_5

    const-string v7, ""

    .line 344
    .local v7, "text":Ljava/lang/String;
    :goto_1
    if-nez v7, :cond_2

    .line 345
    const-string v7, ""

    .line 348
    :cond_2
    const/4 v1, 0x0

    .line 349
    .local v1, "bound":Z
    if-eqz v0, :cond_3

    .line 350
    invoke-interface {v0, v9, v3, v7}, Landroid/widget/SimpleAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    .line 353
    :cond_3
    if-nez v1, :cond_4

    .line 354
    instance-of v10, v9, Landroid/widget/Checkable;

    if-eqz v10, :cond_9

    .line 355
    instance-of v10, v3, Ljava/lang/Boolean;

    if-eqz v10, :cond_6

    .line 356
    check-cast v9, Landroid/widget/Checkable;

    .end local v9    # "v":Landroid/view/View;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "data":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 339
    .end local v1    # "bound":Z
    .end local v7    # "text":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 343
    .restart local v3    # "data":Ljava/lang/Object;
    .restart local v9    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 357
    .restart local v1    # "bound":Z
    .restart local v7    # "text":Ljava/lang/String;
    :cond_6
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_7

    .line 358
    check-cast v9, Landroid/widget/TextView;

    .end local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 360
    .restart local v9    # "v":Landroid/view/View;
    :cond_7
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " should be bound to a Boolean, not a "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v3, :cond_8

    const-string v10, "<unknown type>"

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    goto :goto_3

    .line 366
    :cond_9
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_a

    .line 367
    check-cast v9, Landroid/widget/TextView;

    .end local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 368
    .restart local v9    # "v":Landroid/view/View;
    :cond_a
    instance-of v10, v9, Landroid/widget/ImageView;

    if-eqz v10, :cond_c

    .line 369
    instance-of v10, v3, Ljava/lang/Integer;

    if-eqz v10, :cond_b

    .line 370
    check-cast v9, Landroid/widget/ImageView;

    .end local v9    # "v":Landroid/view/View;
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "data":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 372
    .restart local v3    # "data":Ljava/lang/Object;
    .restart local v9    # "v":Landroid/view/View;
    :cond_b
    check-cast v9, Landroid/widget/ImageView;

    .end local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 375
    .restart local v9    # "v":Landroid/view/View;
    :cond_c
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " view that can be bounds by this SimpleAdapter"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "resource"    # I

    .prologue
    .line 317
    if-nez p2, :cond_0

    .line 318
    iget-object v1, p0, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, "v":Landroid/view/View;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->bindView(ILandroid/view/View;)V

    .line 325
    return-object v0

    .line 320
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 310
    iget v0, p0, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
