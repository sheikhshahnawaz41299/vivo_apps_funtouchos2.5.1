.class public Lcom/vivo/settings/preference/BBKSingleChoicePreference;
.super Landroid/preference/Preference;
.source "BBKSingleChoicePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static final TAG:Ljava/lang/String; = "BBKSingleChoicePreference"

.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mIsCU:Z

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mEditable:Z

.field private mIsShowDivider:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z

.field private mSimId:I

.field private mSourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectedKey:Ljava/lang/String;

    .line 46
    sput-object v0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mIsCU:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v2, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mProtectFromCheckedChange:Z

    .line 48
    iput-boolean v1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectable:Z

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSourceType:I

    .line 51
    iput v2, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSimId:I

    .line 53
    iput-boolean v1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mEditable:Z

    .line 54
    iput-boolean v1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mIsShowDivider:Z

    .line 42
    invoke-direct {p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v2, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mProtectFromCheckedChange:Z

    .line 48
    iput-boolean v1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectable:Z

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSourceType:I

    .line 51
    iput v2, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSimId:I

    .line 53
    iput-boolean v1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mEditable:Z

    .line 54
    iput-boolean v1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mIsShowDivider:Z

    .line 34
    invoke-direct {p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-boolean v2, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mProtectFromCheckedChange:Z

    .line 48
    iput-boolean v1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectable:Z

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSourceType:I

    .line 51
    iput v2, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSimId:I

    .line 53
    iput-boolean v1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mEditable:Z

    .line 54
    iput-boolean v1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mIsShowDivider:Z

    .line 25
    invoke-direct {p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->init()V

    .line 26
    return-void
.end method

.method static synthetic access$000()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/preference/BBKSingleChoicePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->notifyChanged()V

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setLayoutResource(I)V

    .line 103
    return-void
.end method


# virtual methods
.method public getSelectable()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectable:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 58
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, "view":Landroid/view/View;
    const v5, 0x7f0e0009

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "divider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 62
    iget-boolean v5, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mIsShowDivider:Z

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_0
    const v5, 0x7f0e0032

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 66
    .local v4, "widget":Landroid/view/View;
    if-eqz v4, :cond_2

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_2

    move-object v2, v4

    .line 67
    check-cast v2, Landroid/widget/RadioButton;

    .line 68
    .local v2, "rb":Landroid/widget/RadioButton;
    iget-boolean v5, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectable:Z

    if-eqz v5, :cond_4

    .line 69
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 72
    .local v1, "isChecked":Z
    if-eqz v1, :cond_1

    .line 73
    sput-object v2, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 75
    invoke-virtual {p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectedKey:Ljava/lang/String;

    .line 78
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mProtectFromCheckedChange:Z

    .line 79
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    iput-boolean v6, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mProtectFromCheckedChange:Z

    .line 85
    .end local v1    # "isChecked":Z
    .end local v2    # "rb":Landroid/widget/RadioButton;
    :cond_2
    :goto_1
    new-instance v5, Lcom/vivo/settings/preference/BBKSingleChoicePreference$1;

    invoke-direct {v5, p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference$1;-><init>(Lcom/vivo/settings/preference/BBKSingleChoicePreference;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-object v3

    .line 62
    .end local v4    # "widget":Landroid/view/View;
    :cond_3
    const/4 v5, 0x4

    goto :goto_0

    .line 82
    .restart local v2    # "rb":Landroid/widget/RadioButton;
    .restart local v4    # "widget":Landroid/view/View;
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 114
    const-string v0, "BBKSingleChoicePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->getKey()Ljava/lang/String;

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

    .line 115
    iget-boolean v0, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 119
    :cond_0
    if-eqz p2, :cond_2

    .line 120
    sget-object v0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 123
    :cond_1
    sput-object p1, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 124
    invoke-virtual {p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectedKey:Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_2
    sput-object v3, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 128
    sput-object v3, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectedKey:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mIsShowDivider:Z

    .line 142
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->mSelectable:Z

    .line 134
    return-void
.end method
