.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$2;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$2;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$2;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$4(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method
