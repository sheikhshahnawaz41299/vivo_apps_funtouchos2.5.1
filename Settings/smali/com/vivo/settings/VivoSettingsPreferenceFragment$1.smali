.class Lcom/vivo/settings/VivoSettingsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "VivoSettingsPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoSettingsPreferenceFragment;->showBBKBackButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoSettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoSettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/vivo/settings/VivoSettingsPreferenceFragment$1;->this$0:Lcom/vivo/settings/VivoSettingsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vivo/settings/VivoSettingsPreferenceFragment$1;->this$0:Lcom/vivo/settings/VivoSettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->finish()V

    .line 141
    return-void
.end method
