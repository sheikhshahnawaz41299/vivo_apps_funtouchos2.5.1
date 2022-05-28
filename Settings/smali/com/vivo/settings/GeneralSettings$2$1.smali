.class Lcom/vivo/settings/GeneralSettings$2$1;
.super Ljava/lang/Object;
.source "GeneralSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/GeneralSettings$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/settings/GeneralSettings$2;


# direct methods
.method constructor <init>(Lcom/vivo/settings/GeneralSettings$2;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/vivo/settings/GeneralSettings$2$1;->this$1:Lcom/vivo/settings/GeneralSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings$2$1;->this$1:Lcom/vivo/settings/GeneralSettings$2;

    iget-object v0, v0, Lcom/vivo/settings/GeneralSettings$2;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v0}, Lcom/vivo/settings/GeneralSettings;->access$400(Lcom/vivo/settings/GeneralSettings;)V

    .line 361
    return-void
.end method
