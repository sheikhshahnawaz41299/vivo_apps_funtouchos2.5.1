.class public Lcom/vivo/settings/ZoneSettings;
.super Landroid/app/ListActivity;
.source "ZoneSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/ZoneSettings$MyComparator;,
        Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;,
        Lcom/vivo/settings/ZoneSettings$MyAdapter;
    }
.end annotation


# static fields
.field private static final HOURS_1:I = 0x36ee80

.field public static final KEY_DISPLAYNAME:Ljava/lang/String; = "name"

.field private static final KEY_DISPLAYNAME_PY:Ljava/lang/String; = "name_pingyin"

.field private static final KEY_GMT:Ljava/lang/String; = "gmt"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_OFFSET:Ljava/lang/String; = "offset"

.field private static final TAG:Ljava/lang/String; = "ZoneSettings"

.field private static final XMLTAG_TIMEZONE:Ljava/lang/String; = "timezone"

.field private static mulPinyin:[Ljava/lang/String;

.field private static mulPinyinReplace:[Ljava/lang/String;


# instance fields
.field private mAbcThumbsSelect:Lcom/vivo/common/AbcThumbsSelect;

.field private mBaseAdapter:Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

.field private mContext:Landroid/content/Context;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListAdapter:Lcom/vivo/settings/ZoneSettings$MyAdapter;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mTitleView:Lcom/vivo/common/BbkSearchTitleView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 394
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u957f"

    aput-object v1, v0, v2

    const-string v1, "\u91cd"

    aput-object v1, v0, v3

    const-string v1, "\u6c88"

    aput-object v1, v0, v4

    sput-object v0, Lcom/vivo/settings/ZoneSettings;->mulPinyin:[Ljava/lang/String;

    .line 395
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u5e38"

    aput-object v1, v0, v2

    const-string v1, "\u866b"

    aput-object v1, v0, v3

    const-string v1, "\u5ba1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/vivo/settings/ZoneSettings;->mulPinyinReplace:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 513
    new-instance v0, Lcom/vivo/settings/ZoneSettings$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/ZoneSettings$2;-><init>(Lcom/vivo/settings/ZoneSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/ZoneSettings;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/common/BbkSearchTitleView;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ZoneSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings;->mTitleView:Lcom/vivo/common/BbkSearchTitleView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/ZoneSettings;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ZoneSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/settings/ZoneSettings$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ZoneSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings;->mListAdapter:Lcom/vivo/settings/ZoneSettings$MyAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/ZoneSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings;->mBaseAdapter:Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/vivo/settings/ZoneSettings;->multPinyinReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/settings/ZoneSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/ZoneSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/vivo/settings/ZoneSettings;->showIndicator(Z)V

    return-void
.end method

.method private static addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "myData":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 477
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "id"

    invoke-virtual {v0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v8, "name"

    invoke-virtual {v0, v8, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 480
    .local v7, "tz":Ljava/util/TimeZone;
    invoke-virtual {v7, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 481
    .local v4, "offset":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 482
    .local v5, "p":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .local v2, "name":Ljava/lang/StringBuilder;
    const-string v8, "GMT"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    if-gez v4, :cond_1

    .line 486
    const/16 v8, 0x2d

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    :goto_0
    const v8, 0x36ee80

    div-int v8, v5, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    const/16 v8, 0x3a

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    const v8, 0xea60

    div-int v1, v5, v8

    .line 495
    .local v1, "min":I
    rem-int/lit8 v1, v1, 0x3c

    .line 497
    const/16 v8, 0xa

    if-ge v1, v8, :cond_0

    .line 498
    const/16 v8, 0x30

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    const-string v8, "gmt"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v8, "offset"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-static {p2}, Lcom/vivo/settings/ZoneSettings;->multPinyinReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "nameStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/vivo/common/utils/HanziToPinyin;->getFullPinyinHasSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 508
    .local v6, "pinyin":Ljava/lang/String;
    const-string v8, "name_pingyin"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    return-void

    .line 488
    .end local v1    # "min":I
    .end local v3    # "nameStr":Ljava/lang/String;
    .end local v6    # "pinyin":Ljava/lang/String;
    :cond_1
    const/16 v8, 0x2b

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;ZI)Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sortedByName"    # Z
    .param p2, "layoutId"    # I

    .prologue
    const/4 v8, 0x2

    .line 405
    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v4, v1

    const/4 v1, 0x1

    const-string v3, "gmt"

    aput-object v3, v4, v1

    .line 406
    .local v4, "from":[Ljava/lang/String;
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    .line 408
    .local v5, "to":[I
    if-eqz p1, :cond_0

    const-string v7, "name_pingyin"

    .line 409
    .local v7, "sortKey":Ljava/lang/String;
    :goto_0
    new-instance v6, Lcom/vivo/settings/ZoneSettings$MyComparator;

    invoke-direct {v6, v7}, Lcom/vivo/settings/ZoneSettings$MyComparator;-><init>(Ljava/lang/String;)V

    .line 410
    .local v6, "comparator":Lcom/vivo/settings/ZoneSettings$MyComparator;
    invoke-static {p0}, Lcom/vivo/settings/ZoneSettings;->getZones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 411
    .local v2, "sortedList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 412
    new-instance v0, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 414
    .local v0, "adapter":Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;
    return-object v0

    .line 408
    .end local v0    # "adapter":Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;
    .end local v2    # "sortedList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6    # "comparator":Lcom/vivo/settings/ZoneSettings$MyComparator;
    .end local v7    # "sortKey":Ljava/lang/String;
    :cond_0
    const-string v7, "offset"

    goto :goto_0

    .line 406
    nop

    :array_0
    .array-data 4
        0x7f0e02d3
        0x7f0e02d4
    .end array-data
.end method

.method private static getZones(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 451
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v8, "myData":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 453
    .local v4, "date":J
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080074

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "cityNames":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080073

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 456
    .local v9, "zoneValues":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 457
    .local v3, "i":I
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v0, v6

    .line 459
    .local v1, "cityName":Ljava/lang/String;
    array-length v10, v9

    if-ge v3, v10, :cond_0

    .line 460
    aget-object v10, v9, v3

    invoke-static {v8, v10, v1, v4, v5}, Lcom/vivo/settings/ZoneSettings;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 466
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 457
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 462
    :cond_0
    const-string v10, "ZoneSettings"

    const-string v11, "getZones error: zoneValues no enough value"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 469
    .end local v1    # "cityName":Ljava/lang/String;
    :cond_1
    const-string v10, "ZoneSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getZones total city:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-object v8
.end method

.method private static multPinyinReplace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 552
    move-object v1, p0

    .line 554
    .local v1, "newStr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/vivo/settings/ZoneSettings;->mulPinyin:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 555
    sget-object v2, Lcom/vivo/settings/ZoneSettings;->mulPinyin:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    sget-object v2, Lcom/vivo/settings/ZoneSettings;->mulPinyin:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/vivo/settings/ZoneSettings;->mulPinyinReplace:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 557
    const-string v2, "ZoneSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multPinyinReplace str:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newStr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_1
    return-object v1
.end method

.method private showIndicator(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    const/16 v1, 0x8

    .line 541
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings;->mAbcThumbsSelect:Lcom/vivo/common/AbcThumbsSelect;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings;->mListAdapter:Lcom/vivo/settings/ZoneSettings$MyAdapter;

    invoke-virtual {v0}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings;->mAbcThumbsSelect:Lcom/vivo/common/AbcThumbsSelect;

    invoke-virtual {v0, v1}, Lcom/vivo/common/AbcThumbsSelect;->setVisibility(I)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/ZoneSettings;->mAbcThumbsSelect:Lcom/vivo/common/AbcThumbsSelect;

    invoke-virtual {v0, v1}, Lcom/vivo/common/AbcThumbsSelect;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 148
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 149
    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "keyWord":Ljava/lang/String;
    iget-object v1, p0, Lcom/vivo/settings/ZoneSettings;->mListAdapter:Lcom/vivo/settings/ZoneSettings$MyAdapter;

    invoke-virtual {v1, v0}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->update(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/vivo/settings/ZoneSettings;->mListAdapter:Lcom/vivo/settings/ZoneSettings$MyAdapter;

    invoke-virtual {v1}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/vivo/settings/ZoneSettings;->mAbcThumbsSelect:Lcom/vivo/common/AbcThumbsSelect;

    invoke-virtual {v1, v2}, Lcom/vivo/common/AbcThumbsSelect;->setVisibility(I)V

    .line 159
    .end local v0    # "keyWord":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v0    # "keyWord":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/ZoneSettings;->mAbcThumbsSelect:Lcom/vivo/common/AbcThumbsSelect;

    invoke-virtual {v1, v2}, Lcom/vivo/common/AbcThumbsSelect;->setVisibility(I)V

    goto :goto_0

    .line 156
    .end local v0    # "keyWord":Ljava/lang/String;
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/vivo/settings/ZoneSettings;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 77
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    iput-object p0, p0, Lcom/vivo/settings/ZoneSettings;->mContext:Landroid/content/Context;

    .line 79
    const v4, 0x7f040107

    invoke-virtual {p0, v4}, Lcom/vivo/settings/ZoneSettings;->setContentView(I)V

    .line 80
    const v4, 0x7f0e0111

    invoke-virtual {p0, v4}, Lcom/vivo/settings/ZoneSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "emptyView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vivo/settings/ZoneSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 82
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/ZoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 83
    const v4, 0x7f0e02d1

    invoke-virtual {p0, v4}, Lcom/vivo/settings/ZoneSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/BbkSearchTitleView;

    iput-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mTitleView:Lcom/vivo/common/BbkSearchTitleView;

    .line 84
    const v4, 0x7f0e02d2

    invoke-virtual {p0, v4}, Lcom/vivo/settings/ZoneSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/AbcThumbsSelect;

    iput-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mAbcThumbsSelect:Lcom/vivo/common/AbcThumbsSelect;

    .line 85
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mTitleView:Lcom/vivo/common/BbkSearchTitleView;

    invoke-virtual {v4, p0}, Lcom/vivo/common/BbkSearchTitleView;->setSearchTextChanageListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mTitleView:Lcom/vivo/common/BbkSearchTitleView;

    invoke-virtual {v4}, Lcom/vivo/common/BbkSearchTitleView;->getSearchRightButton()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vivo/settings/ZoneSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0032

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 90
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "language":Ljava/lang/String;
    const-string v4, "ro.product.model.bbk"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "realName":Ljava/lang/String;
    const-string v4, "ZoneSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "realName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  language = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v4, "PD1309F_EX"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mTitleView:Lcom/vivo/common/BbkSearchTitleView;

    invoke-virtual {v4}, Lcom/vivo/common/BbkSearchTitleView;->getSearchRightButton()Landroid/widget/Button;

    move-result-object v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v7, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 96
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mTitleView:Lcom/vivo/common/BbkSearchTitleView;

    invoke-virtual {v4}, Lcom/vivo/common/BbkSearchTitleView;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object v4

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v4, v7, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 101
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mTitleView:Lcom/vivo/common/BbkSearchTitleView;

    invoke-virtual {v4, p0}, Lcom/vivo/common/BbkSearchTitleView;->setRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mTitleView:Lcom/vivo/common/BbkSearchTitleView;

    invoke-virtual {v4}, Lcom/vivo/common/BbkSearchTitleView;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object v4

    const v5, 0x7f0b0961

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 103
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mTitleView:Lcom/vivo/common/BbkSearchTitleView;

    invoke-virtual {v4}, Lcom/vivo/common/BbkSearchTitleView;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 104
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f040108

    invoke-static {v4, v7, v5}, Lcom/vivo/settings/ZoneSettings;->constructTimezoneAdapter(Landroid/content/Context;ZI)Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mBaseAdapter:Lcom/vivo/settings/ZoneSettings$SimpleZoneAdapter;

    .line 105
    new-instance v4, Lcom/vivo/settings/ZoneSettings$MyAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/vivo/settings/ZoneSettings$MyAdapter;-><init>(Lcom/vivo/settings/ZoneSettings;Lcom/vivo/settings/ZoneSettings$1;)V

    iput-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mListAdapter:Lcom/vivo/settings/ZoneSettings$MyAdapter;

    .line 106
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mAbcThumbsSelect:Lcom/vivo/common/AbcThumbsSelect;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/vivo/common/AbcThumbsSelect;->setVisibility(I)V

    .line 107
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mAbcThumbsSelect:Lcom/vivo/common/AbcThumbsSelect;

    new-instance v5, Lcom/vivo/settings/ZoneSettings$1;

    invoke-direct {v5, p0}, Lcom/vivo/settings/ZoneSettings$1;-><init>(Lcom/vivo/settings/ZoneSettings;)V

    invoke-virtual {v4, v5}, Lcom/vivo/common/AbcThumbsSelect;->setThumbsTouchListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mListAdapter:Lcom/vivo/settings/ZoneSettings$MyAdapter;

    invoke-virtual {p0, v4}, Lcom/vivo/settings/ZoneSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    invoke-virtual {p0}, Lcom/vivo/settings/ZoneSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/ZoneSettings;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 128
    iget-object v4, p0, Lcom/vivo/settings/ZoneSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/vivo/settings/ZoneSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->updateListAddTopBottom(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 129
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 133
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 134
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v3, "id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "tzId":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/settings/ZoneSettings;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 142
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/vivo/settings/ZoneSettings;->finish()V

    goto :goto_0
.end method
