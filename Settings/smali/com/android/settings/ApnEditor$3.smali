.class Lcom/android/settings/ApnEditor$3;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditor;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    invoke-static {v0}, Lcom/android/settings/ApnEditor;->access$000(Lcom/android/settings/ApnEditor;)V

    .line 309
    return-void
.end method