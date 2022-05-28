.class Lcom/android/systemui/statusbar/BaseStatusBar$11$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$11;->onLongPress(Landroid/view/View;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$11;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$11;)V
    .locals 0

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$11;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 1263
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$11;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$702(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1264
    return-void
.end method
