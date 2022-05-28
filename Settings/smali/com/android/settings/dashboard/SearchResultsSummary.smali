.class public Lcom/android/settings/dashboard/SearchResultsSummary;
.super Landroid/app/Fragment;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionItem;,
        Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;,
        Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;
    }
.end annotation


# static fields
.field private static ELLIPSIS:C = '\u0000'

.field private static final EMPTY_QUERY:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "SearchResultsSummary"

.field private static final SAVE_KEY_SHOW_RESULTS:Ljava/lang/String; = ":settings:show_results"


# instance fields
.field private mLayoutResults:Landroid/view/ViewGroup;

.field private mLayoutSuggestions:Landroid/view/ViewGroup;

.field private mQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

.field private mResultsListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowResults:Z

.field private mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

.field private mSuggestionsListView:Landroid/widget/ListView;

.field private mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

.field private mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x2026

    sput-char v0, Lcom/android/settings/dashboard/SearchResultsSummary;->ELLIPSIS:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 503
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/dashboard/SearchResultsSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/dashboard/SearchResultsSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    return p1
.end method

.method private clearAllTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 365
    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 369
    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 371
    :cond_1
    return-void
.end method

.method private clearResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 332
    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 334
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 335
    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 314
    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 316
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 317
    return-void
.end method

.method private getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 349
    const/4 v3, 0x0

    .line 359
    :goto_0
    return-object v3

    .line 351
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v1, "filtered":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 353
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 354
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 352
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 357
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 359
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private saveQueryToDatabase()V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/Index;->addSavedQuery(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method private setResultsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 342
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setResultsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 271
    :cond_0
    return-void

    .line 269
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    if-nez v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 324
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setSuggestionsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 265
    :cond_0
    return-void

    .line 263
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateSearchResults()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 384
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 385
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 387
    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 392
    :goto_0
    return-void

    .line 389
    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;Lcom/android/settings/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 390
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 374
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 375
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 376
    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;Lcom/android/settings/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 379
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 118
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v0, ":settings:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 123
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 160
    const v1, 0x7f0400bd

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    .line 163
    const v1, 0x7f0e01ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    .line 165
    const v1, 0x7f0e0200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 166
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/dashboard/SearchResultsSummary$1;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/SearchResultsSummary$1;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400be

    iget-object v4, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 220
    const v1, 0x7f0e01fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 221
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/dashboard/SearchResultsSummary$2;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/SearchResultsSummary$2;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 240
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400bf

    iget-object v4, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 245
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearSuggestions()V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearResults()V

    .line 143
    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 144
    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 145
    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 147
    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 148
    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 149
    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 151
    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 154
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "newQuery":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iput-boolean v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 294
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 295
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 302
    :goto_0
    return v3

    .line 297
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 298
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 299
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 280
    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 281
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSearchResults()V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    .line 284
    return v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 252
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->showSomeSuggestions()V

    .line 255
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string v0, ":settings:show_results"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 135
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 259
    return-void
.end method

.method public showSomeSuggestions()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 307
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 308
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 309
    return-void
.end method
