.class Lcom/android/settings/SettingsActivity$MainSettingsResouce$1;
.super Lcom/vivo/settings/xml/SettingsResouce;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity$MainSettingsResouce;->getChildResouces(Ljava/lang/Integer;)Lcom/vivo/settings/xml/SettingsResouce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vivo/settings/xml/SettingsResouce",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity$MainSettingsResouce;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity$MainSettingsResouce;)V
    .locals 0

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$MainSettingsResouce$1;->this$0:Lcom/android/settings/SettingsActivity$MainSettingsResouce;

    invoke-direct {p0}, Lcom/vivo/settings/xml/SettingsResouce;-><init>()V

    return-void
.end method


# virtual methods
.method public fixChildNode(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 1800
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    .line 1801
    return-void
.end method

.method public fixIntent(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 1795
    const-string v0, "android.settings.SETTINGS.SUB_SETTINGS"

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    .line 1796
    return-void
.end method

.method public getSearchNodes(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/settings/xml/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1805
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$MainSettingsResouce$1;->getXmlResouce()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/vivo/settings/xml/ItemUtils;->generatePrefNodeList(Landroid/content/Context;ILcom/vivo/settings/xml/SettingsResouce;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXmlResouce()I
    .locals 1

    .prologue
    .line 1810
    const v0, 0x7f060027

    return v0
.end method

.method public bridge synthetic isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1783
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity$MainSettingsResouce$1;->isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1787
    const-string v0, "vivoAccountsCategory"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    const/4 v0, 0x0

    .line 1790
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
