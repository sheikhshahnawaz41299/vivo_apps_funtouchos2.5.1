.class public Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;
.super Landroid/preference/Preference;
.source "VivoLabelEntryPreference.java"


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mLabelView:Landroid/widget/TextView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    const v0, 0x7f04006b

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;->setLayoutResource(I)V

    .line 30
    iput-object p2, p0, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;->mTitle:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;->mLabel:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;->mListener:Landroid/view/View$OnClickListener;

    .line 33
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 39
    const v0, 0x7f11009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;->mTitleView:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f11012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;->mLabelView:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
