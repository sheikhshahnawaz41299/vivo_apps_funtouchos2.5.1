.class public Lcom/vivo/settings/xml/XmlWriter;
.super Ljava/lang/Object;
.source "XmlWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildElement(Lorg/w3c/dom/Document;Lcom/vivo/settings/xml/Node;)Lorg/w3c/dom/Element;
    .locals 15
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 80
    const-string v13, "node"

    invoke-interface {p0, v13}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 81
    .local v5, "element":Lorg/w3c/dom/Element;
    const-string v13, "id"

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/settings/xml/Node;->getId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/vivo/settings/xml/Node;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 84
    const-string v13, "action"

    invoke-interface {v5, v13, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/vivo/settings/xml/Node;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "className":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 88
    const-string v13, "className"

    invoke-interface {v5, v13, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/vivo/settings/xml/Node;->getPackage()Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, "packageName":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 92
    const-string v13, "packageName"

    invoke-interface {v5, v13, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/vivo/settings/xml/Node;->getExtra()Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "extra":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 96
    const-string v13, "extra"

    invoke-interface {v5, v13, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/vivo/settings/xml/Node;->getFilterString()Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "filter":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 100
    const-string v13, "filter"

    invoke-interface {v5, v13, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/vivo/settings/xml/Node;->getEnableString()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "enable":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 104
    const-string v13, "enable"

    invoke-interface {v5, v13, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/vivo/settings/xml/Node;->isCategory()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 107
    const-string v13, "isCategory"

    const-string v14, "true"

    invoke-interface {v5, v13, v14}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/vivo/settings/xml/Node;->getXmlPath()Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, "xmlPath":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 111
    const-string v13, "xmlPath"

    invoke-interface {v5, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/vivo/settings/xml/Node;->getDescriptions()Ljava/util/HashMap;

    move-result-object v4

    .line 114
    .local v4, "dess":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/Locale;Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Locale;

    .line 115
    .local v10, "l":Ljava/util/Locale;
    invoke-static {v10}, Lcom/vivo/settings/xml/Node;->getLocalString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v5, v14, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v10    # "l":Ljava/util/Locale;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/vivo/settings/xml/Node;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    .line 119
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/xml/Node;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/xml/Node;

    .line 120
    .local v1, "child":Lcom/vivo/settings/xml/Node;
    invoke-static {p0, v1}, Lcom/vivo/settings/xml/XmlWriter;->buildElement(Lorg/w3c/dom/Document;Lcom/vivo/settings/xml/Node;)Lorg/w3c/dom/Element;

    move-result-object v13

    invoke-interface {v5, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 122
    .end local v1    # "child":Lcom/vivo/settings/xml/Node;
    :cond_9
    return-object v5
.end method

.method public static varargs buildXml([Lcom/vivo/settings/xml/Node;)Lorg/w3c/dom/Document;
    .locals 8
    .param p0, "nodes"    # [Lcom/vivo/settings/xml/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 64
    .local v3, "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 66
    .local v2, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 67
    move-object v0, p0

    .local v0, "arr$":[Lcom/vivo/settings/xml/Node;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 68
    .local v6, "n":Lcom/vivo/settings/xml/Node;
    invoke-static {v1, v6}, Lcom/vivo/settings/xml/XmlWriter;->buildElement(Lorg/w3c/dom/Document;Lcom/vivo/settings/xml/Node;)Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    .end local v6    # "n":Lcom/vivo/settings/xml/Node;
    :cond_0
    return-object v1
.end method

.method public static outputXml(Lorg/w3c/dom/Document;Ljava/io/Writer;)V
    .locals 6
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    .line 43
    .local v2, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 44
    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 46
    .local v1, "source":Ljavax/xml/transform/dom/DOMSource;
    const-string v4, "encoding"

    const-string v5, "utf-8"

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v4, "indent"

    const-string v5, "yes"

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 50
    .local v0, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v3, v1, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 51
    return-void
.end method
