.class Lcom/android/settings/SmsDefaultDialog$2;
.super Ljava/lang/Object;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmsDefaultDialog;->createWarningDlg(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmsDefaultDialog;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/SmsDefaultDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog$2;->this$0:Lcom/android/settings/SmsDefaultDialog;

    iput-object p2, p0, Lcom/android/settings/SmsDefaultDialog$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$2;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-static {v0}, Lcom/android/settings/SmsDefaultDialog;->access$000(Lcom/android/settings/SmsDefaultDialog;)Lcom/vivo/services/security/client/VivoPermissionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog$2;->val$pkgName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->setWhiteListApp(Ljava/lang/String;Z)V

    .line 200
    return-void
.end method
