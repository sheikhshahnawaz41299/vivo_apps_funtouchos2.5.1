.class public Lcom/android/settings/location/DimmableIconPreference;
.super Landroid/preference/Preference;
.source "DimmableIconPreference.java"


# static fields
.field private static final ICON_ALPHA_DISABLED:I = 0x66

.field private static final ICON_ALPHA_ENABLED:I = 0xff


# instance fields
.field private final mContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-object p4, p0, Lcom/android/settings/location/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p3, p0, Lcom/android/settings/location/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/android/settings/location/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 53
    return-void
.end method

.method private dimIcon(Z)V
    .locals 3
    .param p1, "dimmed"    # Z

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings/location/DimmableIconPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v1, 0x66

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/settings/location/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_0
    return-void

    .line 58
    :cond_1
    const/16 v1, 0xff

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 78
    iget-object v1, p0, Lcom/android/settings/location/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, "titleView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings/location/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onParentChanged(Landroid/preference/Preference;Z)V
    .locals 0
    .param p1, "parent"    # Landroid/preference/Preference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p2}, Lcom/android/settings/location/DimmableIconPreference;->dimIcon(Z)V

    .line 66
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    .line 67
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 71
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/location/DimmableIconPreference;->dimIcon(Z)V

    .line 72
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 73
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
