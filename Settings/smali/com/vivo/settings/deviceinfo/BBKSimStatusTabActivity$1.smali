.class Lcom/vivo/settings/deviceinfo/BBKSimStatusTabActivity$1;
.super Ljava/lang/Object;
.source "BBKSimStatusTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/deviceinfo/BBKSimStatusTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusTabActivity;


# direct methods
.method constructor <init>(Lcom/vivo/settings/deviceinfo/BBKSimStatusTabActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusTabActivity$1;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vivo/settings/deviceinfo/BBKSimStatusTabActivity$1;->this$0:Lcom/vivo/settings/deviceinfo/BBKSimStatusTabActivity;

    invoke-virtual {v0}, Lcom/vivo/settings/deviceinfo/BBKSimStatusTabActivity;->finish()V

    .line 74
    return-void
.end method
