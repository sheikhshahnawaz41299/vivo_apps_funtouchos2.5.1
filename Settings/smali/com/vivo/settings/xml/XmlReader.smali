.class public Lcom/vivo/settings/xml/XmlReader;
.super Ljava/lang/Object;
.source "XmlReader.java"


# static fields
.field public static NEXT_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "XmlReader.Settings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/vivo/settings/xml/XmlReader;->NEXT_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadPreferencesFromResource(Landroid/content/Context;I)Ljava/util/List;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/settings/xml/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v10, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/xml/Node;>;"
    const/4 v13, 0x0

    .line 37
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 39
    .local v14, "resources":Landroid/content/res/Resources;
    :try_start_0
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 40
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v17

    .line 42
    .local v17, "type":I
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 43
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 44
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 45
    .local v15, "tagName":Ljava/lang/String;
    if-eqz v15, :cond_5

    const-string v18, "intent"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, "action":Ljava/lang/String;
    const/4 v12, 0x0

    .line 48
    .local v12, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 49
    .local v3, "className":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 50
    invoke-interface {v13, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "action"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 51
    invoke-interface {v13, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 49
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 52
    :cond_1
    invoke-interface {v13, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "targetClass"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 53
    invoke-interface {v13, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 54
    :cond_2
    invoke-interface {v13, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "targetPackage"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 55
    invoke-interface {v13, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vivo/settings/xml/Node;

    .line 64
    .local v8, "n":Lcom/vivo/settings/xml/Node;
    invoke-virtual {v8, v2}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    .line 65
    if-eqz v3, :cond_4

    if-eqz v12, :cond_4

    .line 66
    invoke-virtual {v8, v3}, Lcom/vivo/settings/xml/Node;->setClassName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v8, v12}, Lcom/vivo/settings/xml/Node;->setPackage(Ljava/lang/String;)V

    .line 69
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/vivo/settings/xml/Node;->setIsCategory(Z)V

    .line 71
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "n":Lcom/vivo/settings/xml/Node;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_5
    if-eqz v15, :cond_c

    const-string v18, "Category"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 72
    const/4 v7, 0x0

    .line 73
    .local v7, "key":Ljava/lang/String;
    const/16 v16, 0x0

    .line 74
    .local v16, "title":I
    const v11, 0x7fffffff

    .line 75
    .local v11, "order":I
    const/4 v5, 0x0

    .line 76
    .local v5, "fragment":Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_a

    .line 77
    invoke-interface {v13, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "key"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 78
    invoke-interface {v13, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 76
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 79
    :cond_7
    invoke-interface {v13, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "title"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 81
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v16

    goto :goto_4

    .line 82
    :cond_8
    invoke-interface {v13, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "fragment"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 83
    invoke-interface {v13, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 84
    :cond_9
    invoke-interface {v13, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "order"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 85
    invoke-interface {v13, v6, v11}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v11

    goto :goto_4

    .line 88
    :cond_a
    if-eqz v16, :cond_c

    .line 89
    new-instance v9, Lcom/vivo/settings/xml/Node;

    sget v18, Lcom/vivo/settings/xml/XmlReader;->NEXT_ID:I

    add-int/lit8 v19, v18, 0x1

    sput v19, Lcom/vivo/settings/xml/XmlReader;->NEXT_ID:I

    move/from16 v0, v18

    invoke-direct {v9, v0}, Lcom/vivo/settings/xml/Node;-><init>(I)V

    .line 90
    .local v9, "node":Lcom/vivo/settings/xml/Node;
    invoke-virtual {v9, v7}, Lcom/vivo/settings/xml/Node;->setKey(Ljava/lang/String;)V

    .line 91
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/vivo/settings/xml/Node;->setStrRes(I)V

    .line 92
    invoke-virtual {v9, v11}, Lcom/vivo/settings/xml/Node;->setOrder(I)V

    .line 93
    if-eqz v5, :cond_b

    .line 95
    invoke-virtual {v9, v5}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    .line 96
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/vivo/settings/xml/Node;->setIsCategory(Z)V

    .line 98
    :cond_b
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v5    # "fragment":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "node":Lcom/vivo/settings/xml/Node;
    .end local v11    # "order":I
    .end local v15    # "tagName":Ljava/lang/String;
    .end local v16    # "title":I
    :cond_c
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    goto/16 :goto_0

    .line 104
    .end local v17    # "type":I
    :catch_0
    move-exception v4

    .line 105
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v18, "XmlReader.Settings"

    const-string v19, "error "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_d
    :goto_5
    return-object v10

    .line 106
    :catch_1
    move-exception v4

    .line 107
    .local v4, "e":Ljava/io/IOException;
    const-string v18, "XmlReader.Settings"

    const-string v19, "error "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static readNodeXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 13
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/settings/xml/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/xml/Node;>;"
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 116
    .local v7, "nodeParents":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/vivo/settings/xml/Node;>;"
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 117
    .local v3, "eventType":I
    :goto_0
    const/4 v9, 0x1

    if-eq v3, v9, :cond_3

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "event type is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 119
    if-eq v3, v11, :cond_0

    if-eq v3, v12, :cond_0

    .line 121
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 122
    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "xmlNodeName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "xml node name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 126
    if-eqz v8, :cond_9

    const-string v9, "node"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 127
    if-ne v3, v11, :cond_b

    .line 128
    new-instance v6, Lcom/vivo/settings/xml/Node;

    invoke-direct {v6}, Lcom/vivo/settings/xml/Node;-><init>()V

    .line 129
    .local v6, "n":Lcom/vivo/settings/xml/Node;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    if-ge v4, v9, :cond_8

    .line 130
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "attrName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "attrName is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " attr is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 132
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 129
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 135
    :cond_2
    const-string v9, "action"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 136
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 178
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v4    # "i":I
    .end local v6    # "n":Lcom/vivo/settings/xml/Node;
    .end local v8    # "xmlNodeName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "XmlReader.Settings"

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "node list size is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 184
    return-object v0

    .line 139
    .restart local v1    # "attrName":Ljava/lang/String;
    .restart local v3    # "eventType":I
    .restart local v4    # "i":I
    .restart local v6    # "n":Lcom/vivo/settings/xml/Node;
    .restart local v8    # "xmlNodeName":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v9, "extra"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 140
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/vivo/settings/xml/Node;->setSpeicalExtra(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 180
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v4    # "i":I
    .end local v6    # "n":Lcom/vivo/settings/xml/Node;
    .end local v8    # "xmlNodeName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 181
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "XmlReader.Settings"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 143
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "attrName":Ljava/lang/String;
    .restart local v3    # "eventType":I
    .restart local v4    # "i":I
    .restart local v6    # "n":Lcom/vivo/settings/xml/Node;
    .restart local v8    # "xmlNodeName":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v9, "filter"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 144
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/vivo/settings/xml/Node;->addFilter(Ljava/lang/String;)V

    goto :goto_2

    .line 147
    :cond_6
    const-string v9, "id"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v9

    if-eqz v9, :cond_7

    .line 149
    :try_start_3
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/vivo/settings/xml/Node;->setId(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 150
    :catch_2
    move-exception v9

    goto :goto_2

    .line 154
    :cond_7
    :try_start_4
    const-string v9, "-r"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 155
    invoke-static {v1}, Lcom/vivo/settings/xml/Node;->getStringLocal(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 156
    .local v5, "locale":Ljava/util/Locale;
    if-eqz v5, :cond_1

    .line 157
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v9}, Lcom/vivo/settings/xml/Node;->setDescription(Ljava/util/Locale;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 163
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v5    # "locale":Ljava/util/Locale;
    :cond_8
    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 164
    const-string v9, "add child"

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vivo/settings/xml/Node;

    invoke-virtual {v9, v6}, Lcom/vivo/settings/xml/Node;->addChild(Lcom/vivo/settings/xml/Node;)V

    .line 170
    :goto_4
    invoke-virtual {v7, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .end local v4    # "i":I
    .end local v6    # "n":Lcom/vivo/settings/xml/Node;
    :cond_9
    :goto_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 177
    goto/16 :goto_0

    .line 167
    .restart local v4    # "i":I
    .restart local v6    # "n":Lcom/vivo/settings/xml/Node;
    :cond_a
    const-string v9, "add to list"

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 171
    .end local v4    # "i":I
    .end local v6    # "n":Lcom/vivo/settings/xml/Node;
    :cond_b
    if-ne v3, v12, :cond_9

    .line 172
    const-string v9, "pop"

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5
.end method
