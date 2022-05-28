.class Lcom/android/settings/TrustedCredentialsSettings$8;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;

.field final synthetic val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$8;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$8;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 791
    move-object v2, p1

    .line 792
    .local v2, "dialog1":Landroid/content/DialogInterface;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$8;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v3}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 793
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$8;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$8;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v3, v4}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 794
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$8;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings$8;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-static {v3, v4}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$3300(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 795
    const v3, 0x1040013

    new-instance v4, Lcom/android/settings/TrustedCredentialsSettings$8$1;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/TrustedCredentialsSettings$8$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings$8;Landroid/content/DialogInterface;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 803
    const v3, 0x1040009

    new-instance v4, Lcom/android/settings/TrustedCredentialsSettings$8$2;

    invoke-direct {v4, p0}, Lcom/android/settings/TrustedCredentialsSettings$8$2;-><init>(Lcom/android/settings/TrustedCredentialsSettings$8;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 809
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 810
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 811
    return-void
.end method
