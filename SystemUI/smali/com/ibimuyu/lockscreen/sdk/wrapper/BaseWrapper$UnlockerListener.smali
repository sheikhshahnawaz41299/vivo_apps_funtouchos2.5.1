.class public interface abstract Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;
.super Ljava/lang/Object;
.source "BaseWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnlockerListener"
.end annotation


# static fields
.field public static final UNLOCK_TYPE_CALL:Ljava/lang/String; = "call"

.field public static final UNLOCK_TYPE_CAMERA:Ljava/lang/String; = "camera"

.field public static final UNLOCK_TYPE_MMS:Ljava/lang/String; = "mms"


# virtual methods
.method public abstract onUnlocked(Ljava/lang/String;)V
.end method
