.class Lcom/vivo/settings/notification/settime/RepeatPreferenceEx$1;
.super Ljava/lang/Object;
.source "RepeatPreferenceEx.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;


# direct methods
.method constructor <init>(Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx$1;->this$0:Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx$1;->this$0:Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;

    invoke-static {v0}, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->access$000(Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;)V

    .line 184
    return-void
.end method
