.class abstract Lcom/google/android/material/appbar/HeaderBehavior;
.super Lcom/google/android/material/appbar/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/google/android/material/appbar/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private activePointerId:I

.field private flingRunnable:Ljava/lang/Runnable;

.field private isBeingDragged:Z

.field private lastMotionY:I

.field scroller:Landroid/widget/OverScroller;

.field private touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method canDragView(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method final fling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    iget-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    if-nez v2, :cond_1

    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    :cond_1
    iget-object v4, v0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;

    move-object v3, p1

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;-><init>(Lcom/google/android/material/appbar/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    iget-object v2, v0, Lcom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    return v2

    :cond_2
    move-object v3, p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    const/4 v2, 0x0

    return v2
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v3, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    if-eqz v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const/4 v5, -0x1

    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_2

    const/4 v1, 0x3

    if-eq v3, v1, :cond_5

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    if-ne v1, v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ne v3, v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    if-le v5, v6, :cond_7

    iput-boolean v2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    iput v4, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    goto :goto_0

    :cond_5
    iput-boolean v4, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    iput v5, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    iget-object v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_6
    iput-boolean v4, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, p2, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_7

    iput v2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    invoke-direct {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->ensureVelocityTracker()V

    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_8

    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_8
    iget-boolean v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    return v1
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    const/4 v3, -0x1

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    goto/16 :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    sub-int/2addr v3, v2

    iget-boolean v4, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    if-nez v4, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    if-le v4, v5, :cond_4

    iput-boolean v1, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    if-lez v3, :cond_3

    sub-int/2addr v3, v5

    goto :goto_0

    :cond_3
    add-int/2addr v3, v5

    :cond_4
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    if-eqz v4, :cond_8

    iput v2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/material/appbar/HeaderBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v4

    neg-int v8, v4

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/material/appbar/HeaderBehavior;->fling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    :cond_6
    iput-boolean v2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    iput v3, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, p2, v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    iput v3, p0, Lcom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    invoke-direct {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->ensureVelocityTracker()V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_9
    return v1

    :cond_a
    return v2
.end method

.method final scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    nop

    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v4, v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    if-lt v0, p4, :cond_0

    if-gt v0, p5, :cond_0

    invoke-static {p3, p4, p5}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p3

    if-eq v0, p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->setTopAndBottomOffset(I)Z

    sub-int v1, v0, p3

    :cond_0
    return v1
.end method
