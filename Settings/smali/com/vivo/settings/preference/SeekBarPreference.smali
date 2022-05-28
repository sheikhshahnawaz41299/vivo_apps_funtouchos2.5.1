.class public Lcom/vivo/settings/preference/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/preference/VivoPreferenceBackground;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final DBG:Z = true

.field private static final ENLARGE_RATIO:I = 0x14

.field private static final MIDDLEADSORB:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SeekBarPreference"


# instance fields
.field private mCustomerBackground:I

.field private mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field private mDrawableEndRes:I

.field private mDrawableStart:Landroid/graphics/drawable/Drawable;

.field private mDrawableStartRes:I

.field private mIsMiddleAdsorb:Z

.field private mIsSeekbarScale:Z

.field private mIsShowDivider:Z

.field private mMax:I

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mProgress:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/settings/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/16 v0, 0xff

    iput v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mMax:I

    .line 33
    iput-boolean v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsSeekbarScale:Z

    .line 34
    iput-boolean v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsMiddleAdsorb:Z

    .line 36
    iput v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mCustomerBackground:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsShowDivider:Z

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/vivo/settings/preference/SeekBarPreference;->applyAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/16 v0, 0xff

    iput v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mMax:I

    .line 33
    iput-boolean v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsSeekbarScale:Z

    .line 34
    iput-boolean v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsMiddleAdsorb:Z

    .line 36
    iput v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mCustomerBackground:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsShowDivider:Z

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/vivo/settings/preference/SeekBarPreference;->applyAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private applyAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 54
    sget-object v4, Lcom/android/settings/R$styleable;->SeekbarPreference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 56
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 57
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 55
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 59
    :pswitch_0
    iget v4, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStartRes:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStartRes:I

    goto :goto_1

    .line 62
    :pswitch_1
    iget v4, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEndRes:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEndRes:I

    goto :goto_1

    .line 65
    :pswitch_2
    iget v4, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mMax:I

    goto :goto_1

    .line 68
    :pswitch_3
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsSeekbarScale:Z

    goto :goto_1

    .line 71
    :pswitch_4
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsMiddleAdsorb:Z

    goto :goto_1

    .line 75
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    const/4 v4, 0x3

    const v5, 0x7f040067

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 82
    .local v3, "layout":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-virtual {p0, v3}, Lcom/vivo/settings/preference/SeekBarPreference;->setLayoutResource(I)V

    .line 84
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fixProgress(I)I
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 235
    iget-boolean v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsMiddleAdsorb:Z

    if-eqz v1, :cond_0

    .line 236
    iget v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mMax:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x5

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mMax:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x5

    if-gt p1, v1, :cond_0

    .line 237
    iget v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mMax:I

    div-int/lit8 p1, v1, 0x2

    move v0, p1

    .line 241
    .end local p1    # "progress":I
    .local v0, "progress":I
    :goto_0
    return v0

    .end local v0    # "progress":I
    .restart local p1    # "progress":I
    :cond_0
    move v0, p1

    .end local p1    # "progress":I
    .restart local v0    # "progress":I
    goto :goto_0
.end method


# virtual methods
.method public getBackgroundRes()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mCustomerBackground:I

    return v0
.end method

.method public getDrawableEnd()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDrawableEndRes()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEndRes:I

    return v0
.end method

.method public getDrawableStart()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDrawableStartRes()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStartRes:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getOnSeekBarChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mProgress:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 89
    const-string v3, "SeekBarPreference"

    const-string v4, "onBindView"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v3, 0x7f0e013c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 92
    .local v2, "drawableStartView":Landroid/widget/ImageView;
    if-eqz v2, :cond_2

    .line 93
    iget v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStartRes:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/vivo/settings/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStartRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 98
    iget-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :cond_2
    const v3, 0x7f0e013d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 104
    .local v1, "drawableEndView":Landroid/widget/ImageView;
    if-eqz v1, :cond_5

    .line 105
    iget v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEndRes:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 106
    :cond_3
    iget-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    .line 107
    invoke-virtual {p0}, Lcom/vivo/settings/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEndRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 109
    :cond_4
    iget-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 110
    iget-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_5
    const v3, 0x7f0e0009

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "dividerView":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 117
    iget-boolean v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsShowDivider:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_6
    const v3, 0x7f0e013e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 121
    iget-object v4, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsSeekbarScale:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mMax:I

    mul-int/lit8 v3, v3, 0x14

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 122
    iget-object v4, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsSeekbarScale:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mProgress:I

    mul-int/lit8 v3, v3, 0x14

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 123
    iget-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 124
    iget-object v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 125
    return-void

    .line 117
    :cond_7
    const/16 v3, 0x8

    goto :goto_0

    .line 121
    :cond_8
    iget v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mMax:I

    goto :goto_1

    .line 122
    :cond_9
    iget v3, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mProgress:I

    goto :goto_2
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 201
    const-string v1, "SeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgress change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fromUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-boolean v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsSeekbarScale:Z

    if-eqz v1, :cond_3

    .line 203
    rem-int/lit8 v1, p2, 0x14

    if-nez v1, :cond_1

    .line 204
    div-int/lit8 v1, p2, 0x14

    iput v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mProgress:I

    .line 205
    iget v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mProgress:I

    invoke-direct {p0, v1}, Lcom/vivo/settings/preference/SeekBarPreference;->fixProgress(I)I

    move-result v1

    iput v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mProgress:I

    .line 206
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/settings/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget v2, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mProgress:I

    invoke-interface {v1, p1, v2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    add-int/lit8 v1, p2, 0xa

    div-int/lit8 v0, v1, 0x14

    .line 213
    .local v0, "fixProgress":I
    invoke-direct {p0, v0}, Lcom/vivo/settings/preference/SeekBarPreference;->fixProgress(I)I

    move-result v0

    .line 214
    iput v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mProgress:I

    .line 215
    iget-object v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_2

    .line 216
    iget-object v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v1, p1, v0, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 220
    iget-object v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 225
    .end local v0    # "fixProgress":I
    :cond_3
    invoke-direct {p0, p2}, Lcom/vivo/settings/preference/SeekBarPreference;->fixProgress(I)I

    move-result p2

    .line 226
    iput p2, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mProgress:I

    .line 227
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/settings/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 249
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 256
    :cond_0
    return-void
.end method

.method public setBackgroundRes(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 259
    iput p1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mCustomerBackground:I

    .line 260
    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsShowDivider:Z

    .line 129
    return-void
.end method

.method public setDrawableEnd(I)V
    .locals 1
    .param p1, "drawableEndRes"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEndRes:I

    .line 156
    invoke-virtual {p0}, Lcom/vivo/settings/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-virtual {p0}, Lcom/vivo/settings/preference/SeekBarPreference;->notifyChanged()V

    .line 158
    return-void
.end method

.method public setDrawableEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawableEnd"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 166
    invoke-virtual {p0}, Lcom/vivo/settings/preference/SeekBarPreference;->notifyChanged()V

    .line 167
    return-void
.end method

.method public setDrawableStart(I)V
    .locals 1
    .param p1, "drawableStartRes"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStartRes:I

    .line 137
    invoke-virtual {p0}, Lcom/vivo/settings/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-virtual {p0}, Lcom/vivo/settings/preference/SeekBarPreference;->notifyChanged()V

    .line 139
    return-void
.end method

.method public setDrawableStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawableStart"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-virtual {p0}, Lcom/vivo/settings/preference/SeekBarPreference;->notifyChanged()V

    .line 148
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mMax:I

    .line 175
    invoke-virtual {p0}, Lcom/vivo/settings/preference/SeekBarPreference;->notifyChanged()V

    .line 176
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "onSeekBarChangeListener"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 184
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mProgress:I

    .line 188
    iget-object v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v1, p0, Lcom/vivo/settings/preference/SeekBarPreference;->mIsSeekbarScale:Z

    if-eqz v1, :cond_0

    mul-int/lit8 p1, p1, 0x14

    .end local p1    # "progress":I
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 193
    :goto_0
    return-void

    .line 191
    .restart local p1    # "progress":I
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/settings/preference/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method
