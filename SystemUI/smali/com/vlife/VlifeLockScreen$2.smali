.class Lcom/vlife/VlifeLockScreen$2;
.super Ljava/lang/Object;
.source "VlifeLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlife/VlifeLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlife/VlifeLockScreen;


# direct methods
.method constructor <init>(Lcom/vlife/VlifeLockScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vlife/VlifeLockScreen$2;->this$0:Lcom/vlife/VlifeLockScreen;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen$2;->this$0:Lcom/vlife/VlifeLockScreen;

    invoke-static {v0}, Lcom/vlife/VlifeLockScreen;->access$4(Lcom/vlife/VlifeLockScreen;)Lcom/vlife/IRegisterOnTouchEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen$2;->this$0:Lcom/vlife/VlifeLockScreen;

    invoke-static {v0}, Lcom/vlife/VlifeLockScreen;->access$4(Lcom/vlife/VlifeLockScreen;)Lcom/vlife/IRegisterOnTouchEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlife/IRegisterOnTouchEvent;->onTouch()V

    .line 279
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
