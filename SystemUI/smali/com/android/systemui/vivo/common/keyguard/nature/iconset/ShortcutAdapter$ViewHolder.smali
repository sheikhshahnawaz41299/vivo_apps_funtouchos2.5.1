.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ShortcutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field ShortcutIcon:Landroid/widget/TextView;

.field ShortcutLable:Landroid/widget/TextView;

.field ShortcutSiwtch:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;
    .param p2, "x1"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$1;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter$ViewHolder;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;)V

    return-void
.end method
