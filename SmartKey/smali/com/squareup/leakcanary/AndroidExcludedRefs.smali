.class public abstract enum Lcom/squareup/leakcanary/AndroidExcludedRefs;
.super Ljava/lang/Enum;
.source "AndroidExcludedRefs.java"


# static fields
.field public static final enum ACCOUNT_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum ACTIVITY_CHOOSE_MODEL:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum ACTIVITY_CLIENT_RECORD__NEXT_IDLE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum APP_WIDGET_HOST_CALLBACKS:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum AUDIO_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum AUDIO_MANAGER__MCONTEXT_STATIC:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum AW_RESOURCE__SRESOURCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum BLOCKING_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum BUBBLE_POPUP_HELPER__SHELPER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum CLIPBOARD_UI_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum DEVICE_POLICY_MANAGER__SETTINGS_OBSERVER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field private static final synthetic ENUM$VALUES:[Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum EVENT_RECEIVER__MMESSAGE_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum FINALIZER_WATCHDOG_DAEMON:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum INPUT_METHOD_MANAGER__ROOT_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum INPUT_METHOD_MANAGER__SERVED_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum LAYOUT_TRANSITION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum LEAK_CANARY_THREAD:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum MAIN:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum MAPPER_CLIENT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum MEDIA_SCANNER_CONNECTION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum MEDIA_SESSION_LEGACY_HELPER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum PERSONA_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum RESOURCES__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SERVICE_BINDER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SOFT_REFERENCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SPAN_CONTROLLER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SPEECH_RECOGNIZER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SPELL_CHECKER_SESSION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum SPEN_GESTURE_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum TEXT_LINE__SCACHED:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum TEXT_VIEW__MLAST_HOVERED_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum USER_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

.field public static final enum VIEW_CONFIGURATION__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;


# instance fields
.field final applies:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xe

    const/16 v8, 0x13

    const/16 v7, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$1;

    const-string v4, "ACTIVITY_CLIENT_RECORD__NEXT_IDLE"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v3, v4, v2, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACTIVITY_CLIENT_RECORD__NEXT_IDLE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 60
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$2;

    const-string v4, "SPAN_CONTROLLER"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v8, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {v3, v4, v1, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPAN_CONTROLLER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 80
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$3;

    const-string v4, "MEDIA_SESSION_LEGACY_HELPER__SINSTANCE"

    const/4 v5, 0x2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v7, :cond_2

    move v0, v1

    :goto_2
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MEDIA_SESSION_LEGACY_HELPER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 96
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$4;

    const-string v4, "TEXT_LINE__SCACHED"

    const/4 v5, 0x3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_3

    move v0, v1

    :goto_3
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$4;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->TEXT_LINE__SCACHED:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 114
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$5;

    const-string v4, "BLOCKING_QUEUE"

    const/4 v5, 0x4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_4

    move v0, v1

    :goto_4
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$5;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->BLOCKING_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 139
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$6;

    const-string v4, "INPUT_METHOD_MANAGER__SERVED_VIEW"

    const/4 v5, 0x5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-lt v0, v6, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_5

    move v0, v1

    :goto_5
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$6;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->INPUT_METHOD_MANAGER__SERVED_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 164
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$7;

    const-string v4, "INPUT_METHOD_MANAGER__ROOT_VIEW"

    const/4 v5, 0x6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-lt v0, v6, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_6

    move v0, v1

    :goto_6
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$7;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->INPUT_METHOD_MANAGER__ROOT_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 174
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$8;

    const-string v4, "LAYOUT_TRANSITION"

    const/4 v5, 0x7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_7

    move v0, v1

    :goto_7
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$8;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->LAYOUT_TRANSITION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 183
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$9;

    const-string v4, "SPELL_CHECKER_SESSION"

    const/16 v5, 0x8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v0, v6, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_8

    move v0, v1

    :goto_8
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$9;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPELL_CHECKER_SESSION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 192
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$10;

    const-string v4, "ACTIVITY_CHOOSE_MODEL"

    const/16 v5, 0x9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v9, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_9

    move v0, v1

    :goto_9
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$10;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACTIVITY_CHOOSE_MODEL:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 204
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$11;

    const-string v4, "SPEECH_RECOGNIZER"

    const/16 v5, 0xa

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_a

    move v0, v1

    :goto_a
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$11;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPEECH_RECOGNIZER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 214
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$12;

    const-string v4, "ACCOUNT_MANAGER"

    const/16 v5, 0xb

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x5

    if-le v0, v6, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_b

    move v0, v1

    :goto_b
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$12;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACCOUNT_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 227
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$13;

    const-string v4, "MEDIA_SCANNER_CONNECTION"

    const/16 v5, 0xc

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_c

    move v0, v1

    :goto_c
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$13;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MEDIA_SCANNER_CONNECTION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 238
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$14;

    const-string v4, "USER_MANAGER__SINSTANCE"

    const/16 v5, 0xd

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v0, v6, :cond_d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_d

    move v0, v1

    :goto_d
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$14;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->USER_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 252
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$15;

    const-string v4, "APP_WIDGET_HOST_CALLBACKS"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_e

    move v0, v1

    :goto_e
    invoke-direct {v3, v4, v9, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$15;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->APP_WIDGET_HOST_CALLBACKS:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 261
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$16;

    const-string v4, "DEVICE_POLICY_MANAGER__SETTINGS_OBSERVER"

    const/16 v5, 0xf

    const-string v0, "motorola"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v8, :cond_f

    move v0, v1

    :goto_f
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$16;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->DEVICE_POLICY_MANAGER__SETTINGS_OBSERVER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 273
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$17;

    const-string v4, "SPEN_GESTURE_MANAGER"

    const/16 v5, 0x10

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v8, :cond_10

    move v0, v1

    :goto_10
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$17;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPEN_GESTURE_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 281
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$18;

    const-string v4, "CLIPBOARD_UI_MANAGER__SINSTANCE"

    const/16 v5, 0x11

    .line 282
    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_11

    move v0, v1

    :goto_11
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$18;-><init>(Ljava/lang/String;IZ)V

    .line 281
    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->CLIPBOARD_UI_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 292
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$19;

    const-string v4, "BUBBLE_POPUP_HELPER__SHELPER"

    const/16 v5, 0x12

    .line 293
    const-string v0, "LGE"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_12

    move v0, v1

    :goto_12
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$19;-><init>(Ljava/lang/String;IZ)V

    .line 292
    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->BUBBLE_POPUP_HELPER__SHELPER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 300
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$20;

    const-string v4, "AW_RESOURCE__SRESOURCES"

    const-string v0, "samsung"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v8, :cond_13

    move v0, v1

    :goto_13
    invoke-direct {v3, v4, v8, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$20;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->AW_RESOURCE__SRESOURCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 309
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$21;

    const-string v4, "MAPPER_CLIENT"

    const/16 v5, 0x14

    const-string v0, "NVIDIA"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v8, :cond_14

    move v0, v1

    :goto_14
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$21;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MAPPER_CLIENT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 318
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$22;

    const-string v4, "TEXT_VIEW__MLAST_HOVERED_VIEW"

    const/16 v5, 0x15

    .line 319
    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_15

    move v0, v1

    :goto_15
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$22;-><init>(Ljava/lang/String;IZ)V

    .line 318
    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->TEXT_VIEW__MLAST_HOVERED_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 326
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$23;

    const-string v4, "PERSONA_MANAGER"

    const/16 v5, 0x16

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v8, :cond_16

    move v0, v1

    :goto_16
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$23;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->PERSONA_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 335
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$24;

    const-string v4, "RESOURCES__MCONTEXT"

    const-string v0, "samsung"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v8, :cond_17

    move v0, v1

    :goto_17
    invoke-direct {v3, v4, v7, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$24;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->RESOURCES__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 345
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$25;

    const-string v4, "VIEW_CONFIGURATION__MCONTEXT"

    const/16 v5, 0x18

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v8, :cond_18

    move v0, v1

    :goto_18
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$25;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->VIEW_CONFIGURATION__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 355
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$26;

    const-string v4, "AUDIO_MANAGER__MCONTEXT_STATIC"

    const/16 v5, 0x19

    const-string v0, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v8, :cond_19

    move v0, v1

    :goto_19
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$26;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->AUDIO_MANAGER__MCONTEXT_STATIC:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 364
    new-instance v0, Lcom/squareup/leakcanary/AndroidExcludedRefs$27;

    const-string v3, "SERVICE_BINDER"

    const/16 v4, 0x1a

    invoke-direct {v0, v3, v4}, Lcom/squareup/leakcanary/AndroidExcludedRefs$27;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SERVICE_BINDER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 374
    new-instance v0, Lcom/squareup/leakcanary/AndroidExcludedRefs$28;

    const-string v3, "SOFT_REFERENCES"

    const/16 v4, 0x1b

    invoke-direct {v0, v3, v4}, Lcom/squareup/leakcanary/AndroidExcludedRefs$28;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SOFT_REFERENCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 384
    new-instance v3, Lcom/squareup/leakcanary/AndroidExcludedRefs$29;

    const-string v4, "AUDIO_MANAGER"

    const/16 v5, 0x1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v7, :cond_1a

    move v0, v1

    :goto_1a
    invoke-direct {v3, v4, v5, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs$29;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->AUDIO_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 398
    new-instance v0, Lcom/squareup/leakcanary/AndroidExcludedRefs$30;

    const-string v3, "FINALIZER_WATCHDOG_DAEMON"

    const/16 v4, 0x1d

    invoke-direct {v0, v3, v4}, Lcom/squareup/leakcanary/AndroidExcludedRefs$30;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->FINALIZER_WATCHDOG_DAEMON:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 406
    new-instance v0, Lcom/squareup/leakcanary/AndroidExcludedRefs$31;

    const-string v3, "MAIN"

    const/16 v4, 0x1e

    invoke-direct {v0, v3, v4}, Lcom/squareup/leakcanary/AndroidExcludedRefs$31;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MAIN:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 415
    new-instance v0, Lcom/squareup/leakcanary/AndroidExcludedRefs$32;

    const-string v3, "LEAK_CANARY_THREAD"

    const/16 v4, 0x1f

    invoke-direct {v0, v3, v4}, Lcom/squareup/leakcanary/AndroidExcludedRefs$32;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->LEAK_CANARY_THREAD:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 421
    new-instance v0, Lcom/squareup/leakcanary/AndroidExcludedRefs$33;

    const-string v3, "EVENT_RECEIVER__MMESSAGE_QUEUE"

    const/16 v4, 0x20

    invoke-direct {v0, v3, v4}, Lcom/squareup/leakcanary/AndroidExcludedRefs$33;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->EVENT_RECEIVER__MMESSAGE_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 49
    const/16 v0, 0x21

    new-array v0, v0, [Lcom/squareup/leakcanary/AndroidExcludedRefs;

    sget-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACTIVITY_CLIENT_RECORD__NEXT_IDLE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v3, v0, v2

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPAN_CONTROLLER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MEDIA_SESSION_LEGACY_HELPER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->TEXT_LINE__SCACHED:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->BLOCKING_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->INPUT_METHOD_MANAGER__SERVED_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->INPUT_METHOD_MANAGER__ROOT_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->LAYOUT_TRANSITION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPELL_CHECKER_SESSION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACTIVITY_CHOOSE_MODEL:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPEECH_RECOGNIZER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ACCOUNT_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MEDIA_SCANNER_CONNECTION:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->USER_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    sget-object v1, Lcom/squareup/leakcanary/AndroidExcludedRefs;->APP_WIDGET_HOST_CALLBACKS:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v1, v0, v9

    const/16 v1, 0xf

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->DEVICE_POLICY_MANAGER__SETTINGS_OBSERVER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SPEN_GESTURE_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->CLIPBOARD_UI_MANAGER__SINSTANCE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->BUBBLE_POPUP_HELPER__SHELPER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    sget-object v1, Lcom/squareup/leakcanary/AndroidExcludedRefs;->AW_RESOURCE__SRESOURCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v1, v0, v8

    const/16 v1, 0x14

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MAPPER_CLIENT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->TEXT_VIEW__MLAST_HOVERED_VIEW:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->PERSONA_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    sget-object v1, Lcom/squareup/leakcanary/AndroidExcludedRefs;->RESOURCES__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v1, v0, v7

    const/16 v1, 0x18

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->VIEW_CONFIGURATION__MCONTEXT:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->AUDIO_MANAGER__MCONTEXT_STATIC:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SERVICE_BINDER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SOFT_REFERENCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->AUDIO_MANAGER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->FINALIZER_WATCHDOG_DAEMON:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MAIN:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->LEAK_CANARY_THREAD:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/squareup/leakcanary/AndroidExcludedRefs;->EVENT_RECEIVER__MMESSAGE_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ENUM$VALUES:[Lcom/squareup/leakcanary/AndroidExcludedRefs;

    return-void

    :cond_0
    move v0, v2

    .line 51
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 60
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 80
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 96
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 114
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 139
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 164
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 174
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 183
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 192
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 204
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 214
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 227
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 238
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 252
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 261
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 273
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 282
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 293
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 300
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 309
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 319
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 326
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 335
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 345
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 355
    goto/16 :goto_19

    :cond_1a
    move v0, v2

    .line 384
    goto/16 :goto_1a
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;IZ)V

    .line 464
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/squareup/leakcanary/AndroidExcludedRefs;)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 467
    iput-boolean p3, p0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->applies:Z

    .line 468
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/squareup/leakcanary/AndroidExcludedRefs;)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/leakcanary/AndroidExcludedRefs;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static createAndroidDefaults()Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 4

    .prologue
    .line 436
    sget-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SOFT_REFERENCES:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/squareup/leakcanary/AndroidExcludedRefs;

    const/4 v2, 0x0

    sget-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->FINALIZER_WATCHDOG_DAEMON:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->MAIN:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->LEAK_CANARY_THREAD:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 437
    sget-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->EVENT_RECEIVER__MMESSAGE_QUEUE:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/squareup/leakcanary/AndroidExcludedRefs;->SERVICE_BINDER:Lcom/squareup/leakcanary/AndroidExcludedRefs;

    aput-object v3, v1, v2

    .line 436
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;->createBuilder(Ljava/util/EnumSet;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createAppDefaults()Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 1

    .prologue
    .line 447
    const-class v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/leakcanary/AndroidExcludedRefs;->createBuilder(Ljava/util/EnumSet;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createBuilder(Ljava/util/EnumSet;)Lcom/squareup/leakcanary/ExcludedRefs$Builder;
    .locals 4

    .prologue
    .line 451
    new-instance v1, Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    invoke-direct {v1}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;-><init>()V

    .line 452
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    return-object v1

    .line 452
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;

    .line 453
    iget-boolean v3, v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->applies:Z

    if-eqz v3, :cond_0

    .line 454
    invoke-virtual {v0, v1}, Lcom/squareup/leakcanary/AndroidExcludedRefs;->add(Lcom/squareup/leakcanary/ExcludedRefs$Builder;)V

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/leakcanary/AndroidExcludedRefs;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;

    return-object v0
.end method

.method public static values()[Lcom/squareup/leakcanary/AndroidExcludedRefs;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/squareup/leakcanary/AndroidExcludedRefs;->ENUM$VALUES:[Lcom/squareup/leakcanary/AndroidExcludedRefs;

    array-length v1, v0

    new-array v2, v1, [Lcom/squareup/leakcanary/AndroidExcludedRefs;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method abstract add(Lcom/squareup/leakcanary/ExcludedRefs$Builder;)V
.end method
