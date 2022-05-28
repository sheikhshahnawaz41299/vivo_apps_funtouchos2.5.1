.class Lcom/vivo/settings/AsyncImageLoader$1;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/AsyncImageLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/AsyncImageLoader;


# direct methods
.method constructor <init>(Lcom/vivo/settings/AsyncImageLoader;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vivo/settings/AsyncImageLoader$1;->this$0:Lcom/vivo/settings/AsyncImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vivo/settings/AsyncImageLoader$1;->this$0:Lcom/vivo/settings/AsyncImageLoader;

    invoke-virtual {v0}, Lcom/vivo/settings/AsyncImageLoader;->drawDefaultItemIcon()V

    .line 70
    return-void
.end method
