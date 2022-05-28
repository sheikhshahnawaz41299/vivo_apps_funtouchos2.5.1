.class final Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;
.super Lcom/squareup/haha/guava/collect/Multisets$ElementSet;
.source "AbstractMultiset.java"


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMultiset;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Multisets$ElementSet;-><init>()V

    return-void
.end method


# virtual methods
.method final multiset()Lcom/squareup/haha/guava/collect/Multiset;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;

    return-object v0
.end method
