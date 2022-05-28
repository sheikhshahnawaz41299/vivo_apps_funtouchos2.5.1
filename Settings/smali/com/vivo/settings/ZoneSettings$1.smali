.class Lcom/vivo/settings/ZoneSettings$1;
.super Ljava/lang/Object;
.source "ZoneSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ZoneSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/ZoneSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ZoneSettings;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/vivo/settings/ZoneSettings$1;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v2, p0, Lcom/vivo/settings/ZoneSettings$1;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v2}, Lcom/vivo/settings/ZoneSettings;->access$200(Lcom/vivo/settings/ZoneSettings;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/ZoneSettings$1;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v3}, Lcom/vivo/settings/ZoneSettings;->access$100(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/common/BbkSearchTitleView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/common/BbkSearchTitleView;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 112
    const/4 v0, 0x0

    .local v0, "sltStr":Ljava/lang/String;
    move-object v1, p1

    .line 113
    check-cast v1, Landroid/widget/TextView;

    .line 114
    .local v1, "view":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v2, "#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/vivo/settings/ZoneSettings$1;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-virtual {v2}, Lcom/vivo/settings/ZoneSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/ZoneSettings$1;->this$0:Lcom/vivo/settings/ZoneSettings;

    invoke-static {v2}, Lcom/vivo/settings/ZoneSettings;->access$300(Lcom/vivo/settings/ZoneSettings;)Lcom/vivo/settings/ZoneSettings$MyAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vivo/settings/ZoneSettings$MyAdapter;->locationZone(Ljava/lang/String;)V

    goto :goto_0
.end method
