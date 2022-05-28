.class Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$5;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$5;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$5;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->settPattern()V

    .line 587
    return-void
.end method
