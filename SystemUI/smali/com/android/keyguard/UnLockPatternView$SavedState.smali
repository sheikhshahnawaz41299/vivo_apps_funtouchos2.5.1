.class Lcom/android/keyguard/UnLockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "UnLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/UnLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/keyguard/UnLockPatternView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayMode:I

.field private final mInStealthMode:Z

.field private final mInputEnabled:Z

.field private final mSerializedPattern:Ljava/lang/String;

.field private final mTactileFeedbackEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1188
    new-instance v0, Lcom/android/keyguard/UnLockPatternView$SavedState$1;

    invoke-direct {v0}, Lcom/android/keyguard/UnLockPatternView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/keyguard/UnLockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 1150
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mDisplayMode:I

    .line 1153
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mInputEnabled:Z

    .line 1154
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mInStealthMode:Z

    .line 1155
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1156
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/keyguard/UnLockPatternView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/keyguard/UnLockPatternView$1;

    .prologue
    .line 1125
    invoke-direct {p0, p1}, Lcom/android/keyguard/UnLockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "serializedPattern"    # Ljava/lang/String;
    .param p3, "displayMode"    # I
    .param p4, "inputEnabled"    # Z
    .param p5, "inStealthMode"    # Z
    .param p6, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1139
    iput-object p2, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1140
    iput p3, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mDisplayMode:I

    .line 1141
    iput-boolean p4, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mInputEnabled:Z

    .line 1142
    iput-boolean p5, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mInStealthMode:Z

    .line 1143
    iput-boolean p6, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1144
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/keyguard/UnLockPatternView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lcom/android/keyguard/UnLockPatternView$1;

    .prologue
    .line 1125
    invoke-direct/range {p0 .. p6}, Lcom/android/keyguard/UnLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V

    return-void
.end method


# virtual methods
.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mDisplayMode:I

    return v0
.end method

.method public getSerializedPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    return-object v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 1171
    iget-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mInStealthMode:Z

    return v0
.end method

.method public isInputEnabled()Z
    .locals 1

    .prologue
    .line 1167
    iget-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mInputEnabled:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 1175
    iget-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1180
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1181
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1182
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mDisplayMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    iget-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mInputEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1184
    iget-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mInStealthMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1185
    iget-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1186
    return-void
.end method
