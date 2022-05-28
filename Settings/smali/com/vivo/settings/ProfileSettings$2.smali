.class Lcom/vivo/settings/ProfileSettings$2;
.super Ljava/lang/Object;
.source "ProfileSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ProfileSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/ProfileSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ProfileSettings;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/vivo/settings/ProfileSettings$2;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 193
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$2;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$200(Lcom/vivo/settings/ProfileSettings;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$2;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$2;->this$0:Lcom/vivo/settings/ProfileSettings;

    const v2, 0x7f0b08b5

    invoke-virtual {v1, v2}, Lcom/vivo/settings/ProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v7, p0, Lcom/vivo/settings/ProfileSettings$2;->this$0:Lcom/vivo/settings/ProfileSettings;

    new-instance v0, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    iget-object v1, p0, Lcom/vivo/settings/ProfileSettings$2;->this$0:Lcom/vivo/settings/ProfileSettings;

    iget-object v2, p0, Lcom/vivo/settings/ProfileSettings$2;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-virtual {v2}, Lcom/vivo/settings/ProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;-><init>(Ljava/lang/String;)V

    const v5, 0x7f0b08b3

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;-><init>(Lcom/vivo/settings/ProfileSettings;Landroid/content/Context;ZLcom/vivo/settings/ProfileSettings$ProfileInfo;II)V

    invoke-static {v7, v0}, Lcom/vivo/settings/ProfileSettings;->access$302(Lcom/vivo/settings/ProfileSettings;Lcom/vivo/settings/ProfileSettings$EditProfileDialog;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    .line 197
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$2;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$300(Lcom/vivo/settings/ProfileSettings;)Lcom/vivo/settings/ProfileSettings$EditProfileDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vivo/settings/ProfileSettings$EditProfileDialog;->show(Z)V

    goto :goto_0
.end method
