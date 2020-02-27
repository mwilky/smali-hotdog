.class Landroidx/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;
    .locals 17
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v10

    iget-object v0, v8, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v11, v0

    check-cast v11, [I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_0

    aget v2, v11, v1

    sub-int v2, v2, p2

    int-to-float v2, v2

    add-float/2addr v2, v9

    aget v3, v11, v0

    sub-int v3, v3, p3

    int-to-float v3, v3

    add-float/2addr v3, v10

    move v12, v2

    move v13, v3

    goto :goto_0

    :cond_0
    move/from16 v12, p4

    move/from16 v13, p5

    :goto_0
    sub-float v2, v12, v9

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v14, p2, v2

    sub-float v2, v13, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v15, p3, v2

    invoke-virtual {v7, v12}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v7, v13}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v2, v12, p6

    if-nez v2, :cond_1

    cmpl-float v2, v13, p7

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v2, [F

    aput v12, v5, v1

    aput p6, v5, v0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v13, v2, v1

    aput p7, v2, v0

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v7, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v16, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, v8, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v3, v14

    move v4, v15

    move v5, v9

    move-object v7, v6

    move v6, v10

    invoke-direct/range {v0 .. v6}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    move-object/from16 v1, p9

    invoke-virtual {v1, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v7, v0}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    move-object/from16 v2, p8

    invoke-virtual {v7, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v7
.end method
