.class Lcom/android/settings/TrustedCredentialsSettings$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$1;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 201
    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$1;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v4}, Lcom/android/settings/TrustedCredentialsSettings;->access$300(Lcom/android/settings/TrustedCredentialsSettings;)Lcom/vivo/common/TabSelector;

    move-result-object v4

    if-nez v4, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v3, 0x0

    .line 205
    .local v3, "tab":Lcom/android/settings/TrustedCredentialsSettings$Tab;
    const/4 v0, 0x0

    .line 206
    .local v0, "contentView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$1;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v4}, Lcom/android/settings/TrustedCredentialsSettings;->access$300(Lcom/android/settings/TrustedCredentialsSettings;)Lcom/vivo/common/TabSelector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/common/TabSelector;->getCurrentTab()I

    move-result v1

    .line 207
    .local v1, "currentTab":I
    if-nez v1, :cond_3

    .line 208
    sget-object v3, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 209
    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$1;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v4}, Lcom/android/settings/TrustedCredentialsSettings;->access$400(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 214
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$600(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 219
    .local v2, "listView":Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v2, v5, v5}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 221
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 210
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 211
    sget-object v3, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 212
    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$1;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v4}, Lcom/android/settings/TrustedCredentialsSettings;->access$500(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/FrameLayout;

    move-result-object v0

    goto :goto_1
.end method
