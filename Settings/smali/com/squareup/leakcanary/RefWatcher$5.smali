.class Lcom/squareup/leakcanary/RefWatcher$5;
.super Ljava/lang/Object;
.source "RefWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/RefWatcher;

.field private final synthetic val$reference:Lcom/squareup/leakcanary/KeyedWeakReference;

.field private final synthetic val$watchStartNanoTime:J


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/RefWatcher;Lcom/squareup/leakcanary/KeyedWeakReference;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/RefWatcher$5;->this$0:Lcom/squareup/leakcanary/RefWatcher;

    iput-object p2, p0, Lcom/squareup/leakcanary/RefWatcher$5;->val$reference:Lcom/squareup/leakcanary/KeyedWeakReference;

    iput-wide p3, p0, Lcom/squareup/leakcanary/RefWatcher$5;->val$watchStartNanoTime:J

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/squareup/leakcanary/RefWatcher$5;->this$0:Lcom/squareup/leakcanary/RefWatcher;

    iget-object v1, p0, Lcom/squareup/leakcanary/RefWatcher$5;->val$reference:Lcom/squareup/leakcanary/KeyedWeakReference;

    iget-wide v2, p0, Lcom/squareup/leakcanary/RefWatcher$5;->val$watchStartNanoTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/leakcanary/RefWatcher;->ensureGone(Lcom/squareup/leakcanary/KeyedWeakReference;J)V

    .line 84
    return-void
.end method
