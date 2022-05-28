.class Lcom/android/keyguard/VivoBaseView$5;
.super Ljava/lang/Object;
.source "VivoBaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoBaseView;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoBaseView;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoBaseView;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/keyguard/VivoBaseView$5;->this$0:Lcom/android/keyguard/VivoBaseView;

    iput-object p2, p0, Lcom/android/keyguard/VivoBaseView$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 795
    const-string v0, "VivoBaseView"

    const-string v1, "onClick dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 797
    return-void
.end method
