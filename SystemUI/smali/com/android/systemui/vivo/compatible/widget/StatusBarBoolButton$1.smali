.class Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$1;
.super Ljava/lang/Object;
.source "StatusBarBoolButton.java"

# interfaces
.implements Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;->setOnCheckedChangeListener(Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$OnCheckedChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;

.field final synthetic val$listener:Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$OnCheckedChangeListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$OnCheckedChangeListener;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$1;->this$0:Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;

    iput-object p2, p0, Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$1;->val$listener:Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$OnCheckedChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/BbkMoveBoolButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/BbkMoveBoolButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$1;->val$listener:Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$1;->this$0:Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;

    invoke-interface {v0, v1, p2}, Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/android/systemui/vivo/compatible/widget/StatusBarBoolButton;Z)V

    .line 30
    return-void
.end method
