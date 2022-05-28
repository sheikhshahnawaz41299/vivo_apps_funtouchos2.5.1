.class Lcom/vivo/settings/notification/VivoZenModeDowntime$1;
.super Ljava/lang/Object;
.source "VivoZenModeDowntime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/notification/VivoZenModeDowntime;->showBBKBackButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;


# direct methods
.method constructor <init>(Lcom/vivo/settings/notification/VivoZenModeDowntime;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$1;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$1;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-virtual {v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->finish()V

    .line 115
    return-void
.end method
