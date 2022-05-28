.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;
.super Ljava/lang/Object;
.source "ShortcutSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 160
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$000(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$100(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 161
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i theme use and is saving"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$400(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$400(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->id:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    invoke-static {v4, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$402(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    .line 166
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$400(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$400(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->checked:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, v4, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->checked:Z

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    .line 169
    .local v0, "info":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    iget-boolean v1, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->checked:Z

    if-nez v1, :cond_3

    :goto_2
    iput-boolean v2, v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->checked:Z

    .line 170
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$402(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    .line 171
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$600(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;->notifyDataSetChanged()V

    .line 174
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$300(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V

    goto :goto_0

    .end local v0    # "info":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    :cond_2
    move v1, v3

    .line 166
    goto :goto_1

    .restart local v0    # "info":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    :cond_3
    move v2, v3

    .line 169
    goto :goto_2
.end method
