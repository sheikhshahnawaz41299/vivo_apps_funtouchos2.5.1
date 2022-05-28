.class Lcom/vivo/settings/VivoSettingsBaseActivity$1;
.super Ljava/lang/Object;
.source "VivoSettingsBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoSettingsBaseActivity;->showBBKBackButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoSettingsBaseActivity;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoSettingsBaseActivity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vivo/settings/VivoSettingsBaseActivity$1;->this$0:Lcom/vivo/settings/VivoSettingsBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vivo/settings/VivoSettingsBaseActivity$1;->this$0:Lcom/vivo/settings/VivoSettingsBaseActivity;

    invoke-virtual {v0}, Lcom/vivo/settings/VivoSettingsBaseActivity;->finish()V

    .line 38
    return-void
.end method
