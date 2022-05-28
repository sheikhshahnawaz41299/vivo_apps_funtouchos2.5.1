.class Lcom/vivo/SmartKey/a;
.super Ljava/lang/Object;
.source "ApplicationListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic v:Lcom/vivo/SmartKey/ApplicationListActivity;


# direct methods
.method constructor <init>(Lcom/vivo/SmartKey/ApplicationListActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vivo/SmartKey/a;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vivo/SmartKey/a;->v:Lcom/vivo/SmartKey/ApplicationListActivity;

    invoke-virtual {v0}, Lcom/vivo/SmartKey/ApplicationListActivity;->finish()V

    .line 84
    return-void
.end method
