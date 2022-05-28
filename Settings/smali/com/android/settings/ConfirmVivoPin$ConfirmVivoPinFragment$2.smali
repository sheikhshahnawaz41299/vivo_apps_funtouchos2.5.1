.class Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$2;
.super Ljava/lang/Object;
.source "ConfirmVivoPin.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$2;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$2;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->access$000(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$2;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    iget-object v0, v0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
