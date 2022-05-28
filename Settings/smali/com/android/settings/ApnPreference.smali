.class public Lcom/android/settings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ApnPreference"


# instance fields
.field private mEditable:Z

.field private mProtectFromCheckedChange:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSelectable:Z

.field private mSelectedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 61
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 62
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 54
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 45
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 46
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 112
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->setLayoutResource(I)V

    .line 113
    return-void
.end method


# virtual methods
.method public getSelectable()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 74
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 75
    .local v4, "view":Landroid/view/View;
    const v6, 0x7f0e0011

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "radioContainer":Landroid/view/View;
    const v6, 0x7f0e0012

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 78
    .local v5, "widget":Landroid/view/View;
    if-eqz v5, :cond_3

    instance-of v6, v5, Landroid/widget/RadioButton;

    if-eqz v6, :cond_3

    move-object v2, v5

    .line 79
    check-cast v2, Landroid/widget/RadioButton;

    .line 80
    .local v2, "rb":Landroid/widget/RadioButton;
    iget-boolean v6, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v6, :cond_5

    .line 81
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 87
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 92
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 93
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    iput-boolean v8, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 100
    .end local v0    # "isChecked":Z
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/android/settings/ApnPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 103
    .end local v2    # "rb":Landroid/widget/RadioButton;
    :cond_3
    const v6, 0x7f0e0010

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 104
    .local v3, "textLayout":Landroid/view/View;
    if-eqz v3, :cond_4

    instance-of v6, v3, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_4

    .line 105
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_4
    return-object v4

    .line 96
    .end local v3    # "textLayout":Landroid/view/View;
    .restart local v2    # "rb":Landroid/widget/RadioButton;
    :cond_5
    if-eqz v1, :cond_2

    .line 97
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 130
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 135
    :cond_0
    if-eqz p2, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    const v4, 0x7f0e0010

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 153
    .local v2, "pos":I
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v2

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 156
    .local v3, "url":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    .local v1, "it":Landroid/content/Intent;
    const-string v5, "readOnly"

    iget-boolean v4, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "pos":I
    .end local v3    # "url":Landroid/net/Uri;
    :cond_0
    return-void

    .line 157
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "it":Landroid/content/Intent;
    .restart local v2    # "pos":I
    .restart local v3    # "url":Landroid/net/Uri;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setApnEditable(Z)V
    .locals 0
    .param p1, "isEditable"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 174
    return-void
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 166
    return-void
.end method
