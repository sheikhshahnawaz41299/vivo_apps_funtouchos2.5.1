.class Lcom/android/settings/sim/SimSettings$SimPreference$1;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

.field final synthetic val$tintSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings$SimPreference;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iput-object p2, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v0, p3}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$102(Lcom/android/settings/sim/SimSettings$SimPreference;I)I

    .line 353
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
