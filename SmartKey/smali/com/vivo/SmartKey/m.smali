.class public Lcom/vivo/SmartKey/m;
.super Ljava/lang/Object;
.source "SettingPreference.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 37
    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 38
    invoke-static {p0, p1}, Lcom/vivo/SmartKey/m;->b(Landroid/content/Context;Landroid/widget/ListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 39
    invoke-static {p0, p1}, Lcom/vivo/SmartKey/m;->c(Landroid/content/Context;Landroid/widget/ListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/widget/ListView;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 46
    return-object v0
.end method

.method public static c(Landroid/content/Context;Landroid/widget/ListView;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 53
    return-object v0
.end method
