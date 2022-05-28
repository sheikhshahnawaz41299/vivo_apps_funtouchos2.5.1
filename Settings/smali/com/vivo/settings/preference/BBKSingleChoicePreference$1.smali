.class Lcom/vivo/settings/preference/BBKSingleChoicePreference$1;
.super Ljava/lang/Object;
.source "BBKSingleChoicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/preference/BBKSingleChoicePreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/preference/BBKSingleChoicePreference;


# direct methods
.method constructor <init>(Lcom/vivo/settings/preference/BBKSingleChoicePreference;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference$1;->this$0:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference$1;->this$0:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference$1;->this$0:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-static {}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->access$000()Landroid/widget/CompoundButton;

    move-result-object v2

    iget-object v0, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference$1;->this$0:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 92
    iget-object v0, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference$1;->this$0:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setChecked()V

    .line 93
    iget-object v0, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference$1;->this$0:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-static {v0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->access$100(Lcom/vivo/settings/preference/BBKSingleChoicePreference;)V

    .line 95
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
