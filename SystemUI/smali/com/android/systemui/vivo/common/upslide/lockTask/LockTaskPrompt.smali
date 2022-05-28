.class public Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;
.super Ljava/lang/Object;
.source "LockTaskPrompt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenPinningRequest"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLockMode:Z

.field private mLockTaskToast:Landroid/widget/Toast;

.field private mPopupContent:Landroid/view/View;

.field private mPopupText:Landroid/widget/TextView;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockMode:Z

    .line 68
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->initPopupViews()V

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->initPopupWindow()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initPopupViews()V
    .locals 4

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 152
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040083

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    .line 153
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupText:Landroid/widget/TextView;

    .line 154
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupText:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    const v3, 0x7f110268

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 157
    .local v0, "container":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    const v2, 0x7f0204f2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 159
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt$2;-><init>(Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method private initPopupWindow()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 169
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 173
    return-void
.end method


# virtual methods
.method public dismisDialog()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mDialog:Landroid/app/AlertDialog;

    .line 78
    :cond_0
    return-void
.end method

.method public dismissPopupToolbar()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 140
    :cond_0
    return-void
.end method

.method public hideLockTaskToast()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockTaskToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockTaskToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 232
    :cond_0
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupToolbarShowing()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 119
    const-string v0, "ScreenPinningRequest"

    const-string v1, "accept lock-to-app request"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockMode:Z

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->dismisDialog()V

    .line 125
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockMode:Z

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockMode:Z

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockMode:Z

    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->startLockCurrentTask()V

    .line 134
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 8

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->dismisDialog()V

    .line 89
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockMode:Z

    .line 90
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    const v7, 0x30f0004

    invoke-direct {v1, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 91
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0250

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 93
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04008a

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 94
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f110280

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 95
    .local v0, "box":Landroid/widget/CheckBox;
    new-instance v6, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt$1;-><init>(Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e024d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "description":Ljava/lang/String;
    const v6, 0x7f11027f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 105
    .local v4, "text":Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 107
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e024f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e024e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mDialog:Landroid/app/AlertDialog;

    .line 112
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 113
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 114
    return-void
.end method

.method public showLockTaskToast(IZI)V
    .locals 5
    .param p1, "textId"    # I
    .param p2, "bottom"    # Z
    .param p3, "rotation"    # I

    .prologue
    .line 207
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockTaskToast:Landroid/widget/Toast;

    .line 209
    const/16 v0, 0x50

    .line 210
    .local v0, "gravity":I
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockTaskToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    .line 211
    .local v1, "xOff":I
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockTaskToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->getYOffset()I

    move-result v2

    .line 212
    .local v2, "yOff":I
    if-nez p2, :cond_0

    .line 213
    const/4 v3, 0x1

    if-ne p3, v3, :cond_2

    .line 214
    const/16 v0, 0x15

    .line 215
    const/4 v1, 0x0

    .line 216
    const/4 v2, 0x0

    .line 223
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockTaskToast:Landroid/widget/Toast;

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 224
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mLockTaskToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 226
    .end local v0    # "gravity":I
    .end local v1    # "xOff":I
    .end local v2    # "yOff":I
    :cond_1
    return-void

    .line 217
    .restart local v0    # "gravity":I
    .restart local v1    # "xOff":I
    .restart local v2    # "yOff":I
    :cond_2
    const/4 v3, 0x3

    if-ne p3, v3, :cond_0

    .line 218
    const/16 v0, 0x13

    .line 219
    const/4 v1, 0x0

    .line 220
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showPopupToolbar(Landroid/view/View;II)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "textId"    # I
    .param p3, "rotation"    # I

    .prologue
    const v9, 0x7f110269

    const v8, 0x7f110267

    const v7, 0x7f110266

    const/4 v3, 0x0

    const/16 v6, 0x8

    .line 176
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    if-nez v4, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v3

    .line 178
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "offX":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getNavigationBarLength()I

    move-result v2

    .line 181
    .local v2, "offY":I
    const/16 v0, 0x50

    .line 182
    .local v0, "gravity":I
    if-nez p3, :cond_3

    .line 183
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 202
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p1, v0, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 203
    const/4 v3, 0x1

    goto :goto_0

    .line 186
    :cond_3
    const/4 v4, 0x1

    if-ne p3, v4, :cond_4

    .line 187
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getNavigationBarLength()I

    move-result v1

    .line 188
    const/4 v2, 0x0

    .line 189
    const/4 v0, 0x5

    .line 190
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 193
    :cond_4
    const/4 v4, 0x3

    if-ne p3, v4, :cond_2

    .line 194
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getNavigationBarLength()I

    move-result v1

    .line 195
    const/4 v2, 0x0

    .line 196
    const/4 v0, 0x3

    .line 197
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskPrompt;->mPopupContent:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
