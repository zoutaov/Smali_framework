.class public Landroid/transition/TransitionSet;
.super Landroid/transition/Transition;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TransitionSet$TransitionSetListener;
    }
.end annotation


# static fields
.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# instance fields
.field mCurrentListeners:I

.field private mPlayTogether:Z

.field mStarted:Z

.field mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mStarted:Z

    .line 77
    return-void
.end method

.method private setupStartEndListeners()V
    .registers 5

    .prologue
    .line 216
    new-instance v2, Landroid/transition/TransitionSet$TransitionSetListener;

    invoke-direct {v2, p0}, Landroid/transition/TransitionSet$TransitionSetListener;-><init>(Landroid/transition/TransitionSet;)V

    .line 217
    .local v2, "listener":Landroid/transition/TransitionSet$TransitionSetListener;
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .line 218
    .local v0, "childTransition":Landroid/transition/Transition;
    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_b

    .line 220
    .end local v0    # "childTransition":Landroid/transition/Transition;
    :cond_1b
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    .line 221
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .registers 3
    .param p1, "x0"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;
    .registers 3
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic addTarget(I)Landroid/transition/Transition;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(I)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Landroid/transition/Transition;
    .registers 3
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public addTarget(I)Landroid/transition/TransitionSet;
    .registers 3
    .param p1, "targetId"    # I

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .registers 6
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 129
    if-eqz p1, :cond_16

    .line 130
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iput-object p0, p1, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 132
    iget-wide v0, p0, Landroid/transition/TransitionSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    .line 133
    iget-wide v0, p0, Landroid/transition/TransitionSet;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 136
    :cond_16
    return-object p0
.end method

.method protected cancel()V
    .registers 4

    .prologue
    .line 341
    invoke-super {p0}, Landroid/transition/Transition;->cancel()V

    .line 342
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 343
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 344
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2}, Landroid/transition/Transition;->cancel()V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 346
    :cond_1a
    return-void
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 8
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 308
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v2

    .line 309
    .local v2, "targetId":I
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    int-to-long v4, v2

    invoke-virtual {p0, v3, v4, v5}, Landroid/transition/TransitionSet;->isValidTarget(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 310
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .line 311
    .local v0, "childTransition":Landroid/transition/Transition;
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    int-to-long v4, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 312
    invoke-virtual {v0, p1}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_15

    .line 316
    .end local v0    # "childTransition":Landroid/transition/Transition;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2e
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 8
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 296
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v2

    .line 297
    .local v2, "targetId":I
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    int-to-long v4, v2

    invoke-virtual {p0, v3, v4, v5}, Landroid/transition/TransitionSet;->isValidTarget(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 298
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .line 299
    .local v0, "childTransition":Landroid/transition/Transition;
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    int-to-long v4, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 300
    invoke-virtual {v0, p1}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    goto :goto_15

    .line 304
    .end local v0    # "childTransition":Landroid/transition/Transition;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2e
    return-void
.end method

.method public bridge synthetic clone()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->clone()Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/transition/TransitionSet;
    .registers 5

    .prologue
    .line 378
    invoke-super {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    .line 379
    .local v0, "clone":Landroid/transition/TransitionSet;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 380
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 381
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v2, :cond_28

    .line 382
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition;

    invoke-virtual {v3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 384
    :cond_28
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->clone()Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V
    .registers 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/transition/TransitionValuesMaps;

    .prologue
    .line 258
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .line 259
    .local v0, "childTransition":Landroid/transition/Transition;
    invoke-virtual {v0, p1, p2, p3}, Landroid/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V

    goto :goto_6

    .line 261
    .end local v0    # "childTransition":Landroid/transition/Transition;
    :cond_16
    return-void
.end method

.method public getOrdering()I
    .registers 2

    .prologue
    .line 112
    iget-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public pause()V
    .registers 4

    .prologue
    .line 321
    invoke-super {p0}, Landroid/transition/Transition;->pause()V

    .line 322
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 323
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 324
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2}, Landroid/transition/Transition;->pause()V

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 326
    :cond_1a
    return-void
.end method

.method public bridge synthetic removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .registers 3
    .param p1, "x0"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;
    .registers 3
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic removeTarget(I)Landroid/transition/Transition;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(I)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Landroid/transition/Transition;
    .registers 3
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public removeTarget(I)Landroid/transition/TransitionSet;
    .registers 3
    .param p1, "targetId"    # I

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(I)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/transition/TransitionSet;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public removeTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 205
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 206
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 207
    return-object p0
.end method

.method public resume()V
    .registers 4

    .prologue
    .line 331
    invoke-super {p0}, Landroid/transition/Transition;->resume()V

    .line 332
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 333
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 334
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2}, Landroid/transition/Transition;->resume()V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 336
    :cond_1a
    return-void
.end method

.method protected runAnimators()V
    .registers 9

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/transition/TransitionSet;->setupStartEndListeners()V

    .line 269
    iget-boolean v6, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    if-nez v6, :cond_3c

    .line 272
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_8
    iget-object v6, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2d

    .line 273
    iget-object v6, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition;

    .line 274
    .local v5, "previousTransition":Landroid/transition/Transition;
    iget-object v6, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition;

    .line 275
    .local v4, "nextTransition":Landroid/transition/Transition;
    new-instance v6, Landroid/transition/TransitionSet$1;

    invoke-direct {v6, p0, v4}, Landroid/transition/TransitionSet$1;-><init>(Landroid/transition/TransitionSet;Landroid/transition/Transition;)V

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 283
    .end local v4    # "nextTransition":Landroid/transition/Transition;
    .end local v5    # "previousTransition":Landroid/transition/Transition;
    :cond_2d
    iget-object v6, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    .line 284
    .local v1, "firstTransition":Landroid/transition/Transition;
    if-eqz v1, :cond_3b

    .line 285
    invoke-virtual {v1}, Landroid/transition/Transition;->runAnimators()V

    .line 292
    .end local v1    # "firstTransition":Landroid/transition/Transition;
    .end local v2    # "i":I
    :cond_3b
    return-void

    .line 288
    :cond_3c
    iget-object v6, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .line 289
    .local v0, "childTransition":Landroid/transition/Transition;
    invoke-virtual {v0}, Landroid/transition/Transition;->runAnimators()V

    goto :goto_42
.end method

.method setCanRemoveViews(Z)V
    .registers 5
    .param p1, "canRemoveViews"    # Z

    .prologue
    .line 360
    invoke-super {p0, p1}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    .line 361
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 362
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 363
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 365
    :cond_1a
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/transition/Transition;
    .registers 4
    .param p1, "x0"    # J

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/transition/TransitionSet;
    .registers 9
    .param p1, "duration"    # J

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 149
    iget-wide v2, p0, Landroid/transition/TransitionSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_22

    .line 150
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 151
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_22

    .line 152
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 155
    .end local v0    # "i":I
    .end local v1    # "numTransitions":I
    :cond_22
    return-object p0
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;
    .registers 3
    .param p1, "x0"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;
    .registers 3
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public setOrdering(I)Landroid/transition/TransitionSet;
    .registers 5
    .param p1, "ordering"    # I

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_24

    .line 96
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :pswitch_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    .line 99
    :goto_1f
    return-object p0

    .line 93
    :pswitch_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    goto :goto_1f

    .line 88
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/TransitionSet;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 350
    invoke-super {p0, p1}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    .line 351
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 352
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 353
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 355
    :cond_1a
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Landroid/transition/Transition;
    .registers 4
    .param p1, "x0"    # J

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/transition/TransitionSet;->setStartDelay(J)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public setStartDelay(J)Landroid/transition/TransitionSet;
    .registers 4
    .param p1, "startDelay"    # J

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 373
    :cond_46
    return-object v1
.end method