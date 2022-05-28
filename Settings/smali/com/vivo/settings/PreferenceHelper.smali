.class public Lcom/vivo/settings/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 64
    return-void
.end method

.method private static getDivider(Landroid/content/Context;Ljava/util/Vector;)Lcom/android/settings/PreferenceDivider;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/settings/PreferenceDivider;",
            ">;)",
            "Lcom/android/settings/PreferenceDivider;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "cache":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/settings/PreferenceDivider;>;"
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Lcom/android/settings/PreferenceDivider;

    invoke-direct {v0, p0}, Lcom/android/settings/PreferenceDivider;-><init>(Landroid/content/Context;)V

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/PreferenceDivider;

    .line 72
    .local v0, "divider":Lcom/android/settings/PreferenceDivider;
    invoke-virtual {p1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
