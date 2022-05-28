.class public Lcom/vivo/settings/ApnTypePreference;
.super Landroid/preference/DialogPreference;
.source "ApnTypePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ApnTypePreference"


# instance fields
.field private mApnTypeArray:[Ljava/lang/String;

.field private mApnTypeNum:I

.field private mCheckState:[Z

.field private mListView:Landroid/widget/ListView;

.field private mTypeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/settings/ApnTypePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-string v0, "ApnTypePreference"

    const-string v1, "ApnTypePreference --"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lcom/vivo/settings/ApnTypePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/vivo/settings/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/vivo/settings/ApnTypePreference;->mApnTypeNum:I

    .line 32
    iget v0, p0, Lcom/vivo/settings/ApnTypePreference;->mApnTypeNum:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/vivo/settings/ApnTypePreference;->mCheckState:[Z

    .line 33
    return-void
.end method

.method private updateRecord()V
    .locals 6

    .prologue
    .line 69
    iget-object v3, p0, Lcom/vivo/settings/ApnTypePreference;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, "strTemp":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/vivo/settings/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v3, :cond_1

    .line 74
    const-string v3, "ApnTypePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRecord mCheckState["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/ApnTypePreference;->mCheckState:[Z

    aget-boolean v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v3, p0, Lcom/vivo/settings/ApnTypePreference;->mCheckState:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/vivo/settings/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 81
    .local v1, "length":I
    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 82
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/ApnTypePreference;->mTypeString:Ljava/lang/String;

    .line 86
    :goto_1
    const-string v3, "ApnTypePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTypeString is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "strTemp":Ljava/lang/StringBuilder;
    :cond_2
    return-void

    .line 84
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "strTemp":Ljava/lang/StringBuilder;
    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lcom/vivo/settings/ApnTypePreference;->mTypeString:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vivo/settings/ApnTypePreference;->mTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public intCheckState(Ljava/lang/String;)V
    .locals 4
    .param p1, "strType"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init CheckState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-nez p1, :cond_1

    .line 108
    :cond_0
    return-void

    .line 99
    :cond_1
    iput-object p1, p0, Lcom/vivo/settings/ApnTypePreference;->mTypeString:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/vivo/settings/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    .line 102
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/vivo/settings/ApnTypePreference;->mCheckState:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 101
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/vivo/settings/ApnTypePreference;->mCheckState:[Z

    iget-object v2, p0, Lcom/vivo/settings/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    aput-boolean v2, v1, v0

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vivo/settings/ApnTypePreference;->mCheckState:[Z

    aput-boolean p3, v0, p2

    .line 64
    const-string v0, "ApnTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick which:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/vivo/settings/ApnTypePreference;->updateRecord()V

    .line 56
    iget-object v0, p0, Lcom/vivo/settings/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/ApnTypePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 44
    iget-object v0, p0, Lcom/vivo/settings/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/settings/ApnTypePreference;->mCheckState:[Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/ApnTypePreference;->mListView:Landroid/widget/ListView;

    .line 47
    return-void
.end method
