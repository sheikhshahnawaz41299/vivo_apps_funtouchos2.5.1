.class Lcom/android/settings/TrustedCredentialsSettings$8$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TrustedCredentialsSettings$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/TrustedCredentialsSettings$8;

.field final synthetic val$dialog1:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$8;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$8$1;->this$1:Lcom/android/settings/TrustedCredentialsSettings$8;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$8$1;->val$dialog1:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 798
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$8$1;->this$1:Lcom/android/settings/TrustedCredentialsSettings$8;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$8;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$8$1;->this$1:Lcom/android/settings/TrustedCredentialsSettings$8;

    iget-object v2, v2, Lcom/android/settings/TrustedCredentialsSettings$8;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 799
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 800
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$8$1;->val$dialog1:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 801
    return-void
.end method
