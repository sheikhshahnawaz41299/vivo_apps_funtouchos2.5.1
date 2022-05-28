.class public Lcom/android/systemui/vivo/common/keyguard/KeyguardViewFactory;
.super Ljava/lang/Object;
.source "KeyguardViewFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardViewFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHallWindowView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyguardOnlineView(ILandroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p0, "themeId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    packed-switch p0, :pswitch_data_0

    .line 94
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 83
    :pswitch_1
    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->getKeyguardVLView(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->getKeyguardZKView(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_3
    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getKeyguardTPView(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    move-result-object v0

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getSmartWakeView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getView(Landroid/content/Context;I)Landroid/view/View;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeId"    # I

    .prologue
    const v6, 0x7f04005d

    const v5, 0x7f040055

    const/4 v4, 0x0

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "view":Landroid/view/View;
    const-string v1, "KeyguardViewFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "themeId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    packed-switch p1, :pswitch_data_0

    .line 68
    :cond_0
    :pswitch_0
    const-string v1, "KeyguardViewFactory"

    const-string v2, "Mathc ThemeID failed ! Replace with Classical ThemeID"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 73
    :goto_0
    if-nez v0, :cond_1

    .line 74
    const-string v1, "KeyguardViewFactory"

    const-string v2, "getView failed ! Replace with Classical View"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    :cond_1
    return-object v0

    .line 33
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    goto :goto_0

    .line 36
    :pswitch_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040056

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    goto :goto_0

    .line 39
    :pswitch_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04005c

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    goto :goto_0

    .line 42
    :pswitch_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    goto :goto_0

    .line 45
    :pswitch_5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    goto :goto_0

    .line 48
    :pswitch_6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040069

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    goto :goto_0

    .line 51
    :pswitch_7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04005e

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    goto :goto_0

    .line 63
    :pswitch_8
    invoke-static {p1, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardViewFactory;->getKeyguardOnlineView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
