.class Lcom/vivo/SmartKey/h;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic G:Lcom/vivo/SmartKey/MainActivity;


# direct methods
.method constructor <init>(Lcom/vivo/SmartKey/MainActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/vivo/SmartKey/h;->G:Lcom/vivo/SmartKey/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vivo/SmartKey/h;->G:Lcom/vivo/SmartKey/MainActivity;

    invoke-virtual {v0}, Lcom/vivo/SmartKey/MainActivity;->finish()V

    .line 106
    return-void
.end method
