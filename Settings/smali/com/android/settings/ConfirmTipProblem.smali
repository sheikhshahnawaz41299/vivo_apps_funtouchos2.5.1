.class public Lcom/android/settings/ConfirmTipProblem;
.super Lcom/vivo/app/VivoBaseActivity;
.source "ConfirmTipProblem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfirmTipProblem"

.field private static final TEXTLENGHT:I = 0x80


# instance fields
.field private btn_question:Landroid/widget/Button;

.field private mDialog:Landroid/app/Dialog;

.field private mEditText:Landroid/widget/EditText;

.field private mEditTextWatcher:Landroid/text/TextWatcher;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mQuestionTextWatcher:Landroid/text/TextWatcher;

.field private mROM25:Ljava/lang/Boolean;

.field myHandler:Landroid/os/Handler;

.field private questionID:I

.field private questionText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseActivity;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->mDialog:Landroid/app/Dialog;

    .line 39
    iput v0, p0, Lcom/android/settings/ConfirmTipProblem;->questionID:I

    .line 40
    iput-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmTipProblem;->mROM25:Ljava/lang/Boolean;

    .line 44
    new-instance v0, Lcom/android/settings/ConfirmTipProblem$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmTipProblem$1;-><init>(Lcom/android/settings/ConfirmTipProblem;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmTipProblem;->myHandler:Landroid/os/Handler;

    .line 216
    new-instance v0, Lcom/android/settings/ConfirmTipProblem$6;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmTipProblem$6;-><init>(Lcom/android/settings/ConfirmTipProblem;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmTipProblem;->mQuestionTextWatcher:Landroid/text/TextWatcher;

    .line 246
    new-instance v0, Lcom/android/settings/ConfirmTipProblem$7;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmTipProblem$7;-><init>(Lcom/android/settings/ConfirmTipProblem;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmTipProblem;->mEditTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmTipProblem;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmTipProblem;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/ConfirmTipProblem;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ConfirmTipProblem;
    .param p1, "x1"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/ConfirmTipProblem;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmTipProblem;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ConfirmTipProblem;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmTipProblem;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/ConfirmTipProblem;->createDailog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ConfirmTipProblem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmTipProblem;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/ConfirmTipProblem;->checkName()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ConfirmTipProblem;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmTipProblem;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem;->mROM25:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/ConfirmTipProblem;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmTipProblem;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/settings/ConfirmTipProblem;->questionID:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/ConfirmTipProblem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ConfirmTipProblem;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/ConfirmTipProblem;->questionID:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmTipProblem;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem;->questionText:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkName()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem;->questionText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "question":Ljava/lang/String;
    const-string v3, "ConfirmTipProblem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the name.length() is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; question.length() is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    const/4 v2, 0x1

    .line 294
    :goto_0
    return v2

    .line 282
    :cond_0
    const-string v3, "ConfirmTipProblem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " questionID == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/ConfirmTipProblem;->questionID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget v3, p0, Lcom/android/settings/ConfirmTipProblem;->questionID:I

    invoke-virtual {p0}, Lcom/android/settings/ConfirmTipProblem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 285
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/ConfirmTipProblem;->CleanQustionText()V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ConfirmTipProblem;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    const v3, 0x7f0b0975

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private createDailog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 169
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "menuBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b08ed

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 172
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 174
    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem;->mROM25:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/ConfirmTipProblem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "problem_array":[Ljava/lang/CharSequence;
    :goto_0
    iget v2, p0, Lcom/android/settings/ConfirmTipProblem;->questionID:I

    new-instance v3, Lcom/android/settings/ConfirmTipProblem$5;

    invoke-direct {v3, p0}, Lcom/android/settings/ConfirmTipProblem$5;-><init>(Lcom/android/settings/ConfirmTipProblem;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmTipProblem;->mDialog:Landroid/app/Dialog;

    .line 212
    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 213
    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem;->mDialog:Landroid/app/Dialog;

    return-object v2

    .line 178
    .end local v1    # "problem_array":[Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmTipProblem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "problem_array":[Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 80
    const v1, 0x7f0e0072

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmTipProblem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->questionText:Landroid/widget/EditText;

    .line 81
    const v1, 0x7f0e0074

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmTipProblem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->btn_question:Landroid/widget/Button;

    .line 82
    const v1, 0x7f0e0075

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmTipProblem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->mEditText:Landroid/widget/EditText;

    .line 83
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->mROM25:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->questionText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmTipProblem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->questionText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->questionText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem;->mQuestionTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 97
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->myHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 99
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->btn_question:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/ConfirmTipProblem$2;

    invoke-direct {v2, p0}, Lcom/android/settings/ConfirmTipProblem$2;-><init>(Lcom/android/settings/ConfirmTipProblem;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v1, 0x7f0e0076

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmTipProblem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmTipProblem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const v1, 0x7f0b081f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmTipProblem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmTipProblem;->setTitleLeftButtonText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/ConfirmTipProblem;->showTitleLeftButton()V

    .line 115
    new-instance v1, Lcom/android/settings/ConfirmTipProblem$3;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmTipProblem$3;-><init>(Lcom/android/settings/ConfirmTipProblem;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmTipProblem;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/ConfirmTipProblem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0596

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmTipProblem;->setTitleRightButtonText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/ConfirmTipProblem;->showTitleRightButton()V

    .line 126
    new-instance v1, Lcom/android/settings/ConfirmTipProblem$4;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmTipProblem$4;-><init>(Lcom/android/settings/ConfirmTipProblem;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmTipProblem;->setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p0, v4}, Lcom/android/settings/ConfirmTipProblem;->setTitleRightButtonEnable(Z)V

    .line 165
    return-void

    .line 87
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem;->questionText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmTipProblem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 110
    .restart local v0    # "tv":Landroid/widget/TextView;
    :cond_1
    const v1, 0x7f0b081e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public CleanQustionText()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem;->questionText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    const v0, 0x7f0b0975

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 302
    return-void
.end method

.method public EE(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "plainText"    # Ljava/lang/String;
    .param p2, "a"    # Ljava/lang/String;

    .prologue
    .line 310
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 311
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 312
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 314
    .local v0, "b":[B
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 315
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 316
    aget-byte v3, v0, v5

    .line 317
    .local v3, "i":I
    if-gez v3, :cond_0

    .line 318
    add-int/lit16 v3, v3, 0x100

    .line 319
    :cond_0
    const/16 v6, 0x10

    if-ge v3, v6, :cond_1

    .line 320
    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 323
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 327
    .end local v0    # "b":[B
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "offset":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 324
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method public MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "plainText"    # Ljava/lang/String;

    .prologue
    .line 305
    const-string v0, "MD5"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/ConfirmTipProblem;->EE(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ConfirmTipProblem;->EE(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmTipProblem;->setContentView(I)V

    .line 69
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmTipProblem;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/ConfirmTipProblem;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 70
    invoke-static {}, Lcom/android/settings/AppFeature;->getROMVersion()D

    move-result-wide v0

    const-wide v2, 0x4003333333333333L    # 2.4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmTipProblem;->mROM25:Ljava/lang/Boolean;

    .line 75
    :goto_0
    const-string v0, "ConfirmTipProblem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mROM25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem;->mROM25:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/ConfirmTipProblem;->initView()V

    .line 77
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmTipProblem;->mROM25:Ljava/lang/Boolean;

    goto :goto_0
.end method
