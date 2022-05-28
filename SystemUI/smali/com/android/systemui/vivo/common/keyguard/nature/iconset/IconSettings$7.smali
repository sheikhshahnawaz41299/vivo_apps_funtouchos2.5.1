.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;
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

.field private mIsMax:Z

.field private mStart:I

.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;->mIsMax:Z

    if-eqz v0, :cond_0

    .line 283
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;->mStart:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;->mStart:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;->mCount:I

    add-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 284
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$700(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$700(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 287
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 269
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 272
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;->mStart:I

    .line 273
    iput p4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;->mCount:I

    .line 274
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$600(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;->mIsMax:Z

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$7;->mIsMax:Z

    goto :goto_0
.end method
