.class Lcom/vivo/settings/ProfileSettings$1$1;
.super Ljava/lang/Object;
.source "ProfileSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ProfileSettings$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/settings/ProfileSettings$1;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ProfileSettings$1;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/vivo/settings/ProfileSettings$1$1;->this$1:Lcom/vivo/settings/ProfileSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vivo/settings/ProfileSettings$1$1;->this$1:Lcom/vivo/settings/ProfileSettings$1;

    iget-object v0, v0, Lcom/vivo/settings/ProfileSettings$1;->this$0:Lcom/vivo/settings/ProfileSettings;

    invoke-static {v0}, Lcom/vivo/settings/ProfileSettings;->access$000(Lcom/vivo/settings/ProfileSettings;)V

    .line 109
    return-void
.end method
