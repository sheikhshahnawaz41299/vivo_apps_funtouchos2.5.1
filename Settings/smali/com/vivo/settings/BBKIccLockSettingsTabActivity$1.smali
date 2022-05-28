.class Lcom/vivo/settings/BBKIccLockSettingsTabActivity$1;
.super Ljava/lang/Object;
.source "BBKIccLockSettingsTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/BBKIccLockSettingsTabActivity;


# direct methods
.method constructor <init>(Lcom/vivo/settings/BBKIccLockSettingsTabActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vivo/settings/BBKIccLockSettingsTabActivity$1;->this$0:Lcom/vivo/settings/BBKIccLockSettingsTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vivo/settings/BBKIccLockSettingsTabActivity$1;->this$0:Lcom/vivo/settings/BBKIccLockSettingsTabActivity;

    invoke-virtual {v0}, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;->finish()V

    .line 84
    return-void
.end method
