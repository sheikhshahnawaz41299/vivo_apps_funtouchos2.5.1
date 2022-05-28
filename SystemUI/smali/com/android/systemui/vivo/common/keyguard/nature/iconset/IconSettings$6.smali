.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$6;
.super Ljava/lang/Object;
.source "IconSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->initCustomInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field private mStart:I

.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$1200(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$6;->mStart:I

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$6;->mCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->setEditTextLength(Landroid/view/View;II)V

    .line 259
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 250
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 253
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$6;->mStart:I

    .line 254
    iput p4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$6;->mCount:I

    .line 255
    return-void
.end method
