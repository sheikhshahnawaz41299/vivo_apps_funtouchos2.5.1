.class final enum Lcom/android/keyguard/VivoPatternView$FooterMode;
.super Ljava/lang/Enum;
.source "VivoPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FooterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/VivoPatternView$FooterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/VivoPatternView$FooterMode;

.field public static final enum ForgotLockPattern:Lcom/android/keyguard/VivoPatternView$FooterMode;

.field public static final enum Normal:Lcom/android/keyguard/VivoPatternView$FooterMode;

.field public static final enum VerifyUnlocked:Lcom/android/keyguard/VivoPatternView$FooterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    new-instance v0, Lcom/android/keyguard/VivoPatternView$FooterMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/VivoPatternView$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/VivoPatternView$FooterMode;->Normal:Lcom/android/keyguard/VivoPatternView$FooterMode;

    .line 154
    new-instance v0, Lcom/android/keyguard/VivoPatternView$FooterMode;

    const-string v1, "ForgotLockPattern"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/VivoPatternView$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/VivoPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/VivoPatternView$FooterMode;

    .line 155
    new-instance v0, Lcom/android/keyguard/VivoPatternView$FooterMode;

    const-string v1, "VerifyUnlocked"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/VivoPatternView$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/VivoPatternView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/VivoPatternView$FooterMode;

    .line 152
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/keyguard/VivoPatternView$FooterMode;

    sget-object v1, Lcom/android/keyguard/VivoPatternView$FooterMode;->Normal:Lcom/android/keyguard/VivoPatternView$FooterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/VivoPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/VivoPatternView$FooterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/VivoPatternView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/VivoPatternView$FooterMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/keyguard/VivoPatternView$FooterMode;->$VALUES:[Lcom/android/keyguard/VivoPatternView$FooterMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/VivoPatternView$FooterMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 152
    const-class v0, Lcom/android/keyguard/VivoPatternView$FooterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/VivoPatternView$FooterMode;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/VivoPatternView$FooterMode;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/keyguard/VivoPatternView$FooterMode;->$VALUES:[Lcom/android/keyguard/VivoPatternView$FooterMode;

    invoke-virtual {v0}, [Lcom/android/keyguard/VivoPatternView$FooterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/VivoPatternView$FooterMode;

    return-object v0
.end method
