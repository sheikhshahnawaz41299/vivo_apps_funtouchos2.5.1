.class Lcom/vivo/settings/AsyncCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "AsyncCheckBoxPreference.java"

# interfaces
.implements Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/AsyncCheckBoxPreference;->bindCheckBox(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/AsyncCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/vivo/settings/AsyncCheckBoxPreference;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference$1;->this$0:Lcom/vivo/settings/AsyncCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/BbkMoveBoolButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/BbkMoveBoolButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    iget-object v3, p0, Lcom/vivo/settings/AsyncCheckBoxPreference$1;->this$0:Lcom/vivo/settings/AsyncCheckBoxPreference;

    invoke-virtual {v3}, Lcom/vivo/settings/AsyncCheckBoxPreference;->isChecked()Z

    move-result v3

    if-ne p2, v3, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/AsyncCheckBoxPreference$1;->this$0:Lcom/vivo/settings/AsyncCheckBoxPreference;

    invoke-virtual {v3}, Lcom/vivo/settings/AsyncCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 76
    .local v0, "newValue":Z
    :goto_1
    iget-object v3, p0, Lcom/vivo/settings/AsyncCheckBoxPreference$1;->this$0:Lcom/vivo/settings/AsyncCheckBoxPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/AsyncCheckBoxPreference;->access$000(Lcom/vivo/settings/AsyncCheckBoxPreference;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    iget-object v1, p0, Lcom/vivo/settings/AsyncCheckBoxPreference$1;->this$0:Lcom/vivo/settings/AsyncCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/vivo/settings/AsyncCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .end local v0    # "newValue":Z
    :cond_2
    move v0, v2

    .line 74
    goto :goto_1

    .line 79
    .restart local v0    # "newValue":Z
    :cond_3
    if-eqz p1, :cond_0

    .line 80
    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/BbkMoveBoolButton;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method
