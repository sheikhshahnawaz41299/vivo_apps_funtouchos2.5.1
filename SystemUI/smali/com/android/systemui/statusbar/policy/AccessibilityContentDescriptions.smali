.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIFI_NO_CONNECTION:I = 0x7f0e0066


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        0x7f0e005b
        0x7f0e005c
        0x7f0e005d
        0x7f0e005e
        0x7f0e005f
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x7f0e0060
        0x7f0e0061
        0x7f0e0062
        0x7f0e0063
        0x7f0e0064
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x7f0e0066
        0x7f0e0067
        0x7f0e0068
        0x7f0e0069
        0x7f0e006a
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
