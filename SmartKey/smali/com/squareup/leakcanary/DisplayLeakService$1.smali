.class Lcom/squareup/leakcanary/DisplayLeakService$1;
.super Ljava/lang/Object;
.source "DisplayLeakService.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/DisplayLeakService;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/DisplayLeakService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/DisplayLeakService$1;->this$0:Lcom/squareup/leakcanary/DisplayLeakService;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 175
    const-string v0, ".hprof"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
