.class Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;
.super Ljava/lang/Object;
.source "CPURealDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/CPURealDataActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridViewHolder"
.end annotation


# instance fields
.field public coreText:Landroid/widget/TextView;

.field private emptyText:Landroid/widget/TextView;

.field public image:Landroid/widget/ImageView;

.field public rangeText:Landroid/widget/TextView;

.field public stateText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vivo/settings/CPURealDataActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/CPURealDataActivity;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->this$0:Lcom/vivo/settings/CPURealDataActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/CPURealDataActivity;Lcom/vivo/settings/CPURealDataActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/CPURealDataActivity;
    .param p2, "x1"    # Lcom/vivo/settings/CPURealDataActivity$1;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;-><init>(Lcom/vivo/settings/CPURealDataActivity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->emptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vivo/settings/CPURealDataActivity$GridViewHolder;->emptyText:Landroid/widget/TextView;

    return-object p1
.end method
