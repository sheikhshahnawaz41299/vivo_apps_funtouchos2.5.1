.class Lcom/vivo/SmartKey/b;
.super Ljava/lang/Object;
.source "ApplicationListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic v:Lcom/vivo/SmartKey/ApplicationListActivity;


# direct methods
.method constructor <init>(Lcom/vivo/SmartKey/ApplicationListActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vivo/SmartKey/b;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .prologue
    .line 97
    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/vivo/SmartKey/b;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(Lcom/vivo/SmartKey/ApplicationListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/vivo/SmartKey/b;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(Lcom/vivo/SmartKey/ApplicationListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/SmartKey/f;

    iget-object v1, v0, Lcom/vivo/SmartKey/f;->packageName:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/vivo/SmartKey/b;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(Lcom/vivo/SmartKey/ApplicationListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/SmartKey/f;

    iget-object v2, v0, Lcom/vivo/SmartKey/f;->w:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/vivo/SmartKey/b;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(Lcom/vivo/SmartKey/ApplicationListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/SmartKey/f;

    iget-object v0, v0, Lcom/vivo/SmartKey/f;->className:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->u()I

    move-result v3

    .line 103
    iget-object v4, p0, Lcom/vivo/SmartKey/b;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5, v2, v3}, Lcom/vivo/SmartKey/ApplicationListActivity;->a(Lcom/vivo/SmartKey/ApplicationListActivity;ZLjava/lang/String;I)V

    .line 104
    iget-object v4, p0, Lcom/vivo/SmartKey/b;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v4}, Lcom/vivo/SmartKey/ApplicationListActivity;->b(Lcom/vivo/SmartKey/ApplicationListActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " last choice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/vivo/SmartKey/SmartKeyApp;->i(I)V

    .line 106
    iget-object v3, p0, Lcom/vivo/SmartKey/b;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v3}, Lcom/vivo/SmartKey/ApplicationListActivity;->c(Lcom/vivo/SmartKey/ApplicationListActivity;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "smartkey_start_application_package"

    invoke-static {v3, v4, v1}, Lcom/vivo/SmartKey/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    iget-object v1, p0, Lcom/vivo/SmartKey/b;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v1}, Lcom/vivo/SmartKey/ApplicationListActivity;->c(Lcom/vivo/SmartKey/ApplicationListActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "smartkey_start_application_name"

    invoke-static {v1, v3, v2}, Lcom/vivo/SmartKey/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    iget-object v1, p0, Lcom/vivo/SmartKey/b;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-static {v1}, Lcom/vivo/SmartKey/ApplicationListActivity;->c(Lcom/vivo/SmartKey/ApplicationListActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "smartkey_start_class_name"

    invoke-static {v1, v2, v0}, Lcom/vivo/SmartKey/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    iget-object v0, p0, Lcom/vivo/SmartKey/b;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-virtual {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->finish()V

    .line 113
    :cond_0
    return-void
.end method
