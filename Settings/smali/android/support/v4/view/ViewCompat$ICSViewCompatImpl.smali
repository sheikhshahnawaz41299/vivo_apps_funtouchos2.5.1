.class Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICSViewCompatImpl"
.end annotation


# static fields
.field static accessibilityDelegateCheckFailed:Z

.field static mAccessibilityDelegateField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 933
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 931
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 986
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 987
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    .line 990
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 991
    .local v0, "vpa":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    if-nez v0, :cond_1

    .line 992
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .end local v0    # "vpa":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    .line 993
    .restart local v0    # "vpa":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    :cond_1
    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 936
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 940
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 963
    sget-boolean v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    if-eqz v3, :cond_0

    .line 980
    :goto_0
    return v2

    .line 966
    :cond_0
    sget-object v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    .line 968
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "mAccessibilityDelegate"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 970
    sget-object v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :cond_1
    :try_start_1
    sget-object v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "t":Ljava/lang/Throwable;
    sput-boolean v1, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    goto :goto_0

    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    move v1, v2

    .line 977
    goto :goto_1

    .line 978
    :catch_1
    move-exception v0

    .line 979
    .restart local v0    # "t":Ljava/lang/Throwable;
    sput-boolean v1, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 948
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 949
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 952
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatICS;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    .line 953
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 944
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 945
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delegate"    # Landroid/support/v4/view/AccessibilityDelegateCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 957
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatICS;->setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V

    .line 959
    return-void

    .line 957
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getBridge()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fitSystemWindows"    # Z

    .prologue
    .line 1000
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 1001
    return-void
.end method
