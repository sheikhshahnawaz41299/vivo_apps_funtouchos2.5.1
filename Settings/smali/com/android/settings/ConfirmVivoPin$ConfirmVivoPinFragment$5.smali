.class Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$5;
.super Ljava/lang/Object;
.source "ConfirmVivoPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;
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
    .line 615
    iput-object p1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$5;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$5;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->access$200(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$5;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->access$400(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 618
    return-void
.end method
