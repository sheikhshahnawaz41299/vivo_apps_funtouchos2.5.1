.class Lcom/android/keyguard/VivoPasswordView$2;
.super Ljava/lang/Object;
.source "VivoPasswordView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPasswordView;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/keyguard/VivoPasswordView$2;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView$2;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const/4 v0, 0x1

    return v0
.end method
