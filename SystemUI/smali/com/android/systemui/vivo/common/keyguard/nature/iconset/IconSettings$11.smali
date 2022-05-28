.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$11;
.super Ljava/lang/Object;
.source "IconSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 817
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 818
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 843
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$2300(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;Ljava/lang/String;)V

    .line 844
    return-void

    .line 820
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$2202(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;I)I

    goto :goto_0

    .line 823
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$2202(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;I)I

    goto :goto_0

    .line 826
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$2202(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;I)I

    goto :goto_0

    .line 829
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$2202(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;I)I

    goto :goto_0

    .line 832
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$2202(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;I)I

    goto :goto_0

    .line 835
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$2202(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;I)I

    goto :goto_0

    .line 838
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$2202(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;I)I

    goto :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x7f110196
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
