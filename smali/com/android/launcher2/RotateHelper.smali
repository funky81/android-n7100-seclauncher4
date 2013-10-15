.class public Lcom/android/launcher2/RotateHelper;
.super Ljava/lang/Object;
.source "RotateHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStyle(ILandroid/view/View;)V
    .locals 3
    .parameter "resid"
    .parameter "v"

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->View:[I

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {v0, p1}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method

.method public static applyStyle(ILandroid/widget/LinearLayout;)V
    .locals 3
    .parameter "resid"
    .parameter "ll"

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 49
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->LinearLayout:[I

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {v0, p1}, Lcom/android/launcher2/RotateHelper;->setLinearLayoutAttributes(Landroid/content/res/TypedArray;Landroid/widget/LinearLayout;)V

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void
.end method

.method public static applyStyle(ILandroid/widget/TextView;)V
    .locals 3
    .parameter "resid"
    .parameter "tv"

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 68
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {v0, p1}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method public static applyStyleLayout(ILandroid/view/View;)V
    .locals 9
    .parameter "resid"
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 104
    .local v5, vlp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v6, :cond_1

    move-object v4, v5

    .line 106
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/R$styleable;->FrameLayout_Layout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, a:Landroid/content/res/TypedArray;
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_4

    move-object v4, v5

    .line 121
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 122
    .local v4, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .restart local v0       #a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 124
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 125
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 126
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 124
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attr:I
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    instance-of v6, v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 112
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/R$styleable;->LinearLayout_Layout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .restart local v0       #a:Landroid/content/res/TypedArray;
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 115
    const/4 v6, 0x3

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 128
    .restart local v1       #attr:I
    .restart local v2       #count:I
    .restart local v3       #i:I
    .local v4, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :pswitch_0
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 131
    :pswitch_1
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 134
    :pswitch_2
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 138
    :pswitch_3
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 141
    :pswitch_4
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 144
    :pswitch_5
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 147
    :pswitch_6
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 151
    .end local v1           #attr:I
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    :goto_3
    return-void

    .line 152
    :cond_4
    if-eqz v5, :cond_3

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/R$styleable;->ViewGroup_Layout:[I

    invoke-virtual {v6, p0, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 154
    .restart local v0       #a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 155
    .restart local v2       #count:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v2, :cond_5

    .line 156
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 157
    .restart local v1       #attr:I
    packed-switch v1, :pswitch_data_1

    .line 155
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 159
    :pswitch_7
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    .line 162
    :pswitch_8
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    .line 166
    .end local v1           #attr:I
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 157
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static setLinearLayoutAttributes(Landroid/content/res/TypedArray;Landroid/widget/LinearLayout;)V
    .locals 5
    .parameter "a"
    .parameter "ll"

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 188
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 189
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 190
    .local v0, attr:I
    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :pswitch_1
    const/16 v3, 0x33

    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 195
    :pswitch_2
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 198
    :pswitch_3
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    goto :goto_1

    .line 201
    :pswitch_4
    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBaselineAlignedChildIndex(I)V

    goto :goto_1

    .line 204
    :pswitch_5
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 207
    :pswitch_6
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    goto :goto_1

    .line 210
    :pswitch_7
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    goto :goto_1

    .line 213
    :pswitch_8
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    goto :goto_1

    .line 217
    .end local v0           #attr:I
    :cond_0
    return-void

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V
    .locals 11
    .parameter "a"
    .parameter "tv"

    .prologue
    const/high16 v10, -0x4080

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 238
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 239
    .local v1, count:I
    const/4 v3, -0x1

    .line 240
    .local v3, lines:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 241
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 242
    .local v0, attr:I
    sparse-switch v0, :sswitch_data_0

    .line 240
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :sswitch_0
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 245
    .local v4, newSize:F
    cmpl-float v7, v4, v10

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_0

    .line 246
    invoke-virtual {p1, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 251
    .end local v4           #newSize:F
    :sswitch_1
    const/4 v6, 0x0

    .line 252
    .local v6, truncate:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 266
    :goto_2
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 254
    :pswitch_0
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 255
    goto :goto_2

    .line 257
    :pswitch_1
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 258
    goto :goto_2

    .line 260
    :pswitch_2
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 261
    goto :goto_2

    .line 263
    :pswitch_3
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 270
    .end local v6           #truncate:Landroid/text/TextUtils$TruncateAt;
    :sswitch_2
    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 273
    :sswitch_3
    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 274
    goto :goto_1

    .line 276
    :sswitch_4
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto :goto_1

    .line 279
    :sswitch_5
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 280
    .local v5, singleLine:Z
    if-eqz v5, :cond_1

    .line 281
    const/4 v3, 0x1

    .line 282
    :cond_1
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_1

    .line 285
    .end local v5           #singleLine:Z
    :sswitch_6
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_1

    .line 292
    .end local v0           #attr:I
    :cond_2
    if-eq v3, v8, :cond_3

    .line 293
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 295
    :cond_3
    return-void

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0x17 -> :sswitch_3
        0x1e -> :sswitch_4
        0x20 -> :sswitch_5
        0x34 -> :sswitch_6
    .end sparse-switch

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V
    .locals 12
    .parameter "a"
    .parameter "v"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 316
    .local v5, paddingLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 317
    .local v7, paddingTop:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 318
    .local v6, paddingRight:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 320
    .local v4, paddingBottom:I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 321
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 322
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 323
    .local v0, attr:I
    packed-switch v0, :pswitch_data_0

    .line 321
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 328
    :pswitch_2
    const/4 v8, -0x1

    invoke-virtual {p0, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 329
    .local v3, padding:I
    if-ltz v3, :cond_0

    .line 330
    move v4, v3

    move v6, v3

    move v7, v3

    move v5, v3

    goto :goto_1

    .line 333
    .end local v3           #padding:I
    :pswitch_3
    invoke-virtual {p0, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 334
    goto :goto_1

    .line 336
    :pswitch_4
    invoke-virtual {p0, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 337
    goto :goto_1

    .line 339
    :pswitch_5
    invoke-virtual {p0, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 340
    goto :goto_1

    .line 342
    :pswitch_6
    invoke-virtual {p0, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 343
    goto :goto_1

    .line 345
    :pswitch_7
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 348
    :pswitch_8
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_1

    .line 351
    :pswitch_9
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_1

    .line 354
    :pswitch_a
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    .line 357
    :pswitch_b
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 360
    :pswitch_c
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    goto :goto_1

    .line 363
    :pswitch_d
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    .line 366
    :pswitch_e
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 369
    :pswitch_f
    invoke-virtual {p0, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 372
    :pswitch_10
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1

    .line 375
    :pswitch_11
    invoke-virtual {p0, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_1

    .line 378
    :pswitch_12
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_1

    .line 381
    :pswitch_13
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    goto/16 :goto_1

    .line 384
    :pswitch_14
    invoke-virtual {p0, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_1

    .line 391
    .end local v0           #attr:I
    :cond_1
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 393
    return-void

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
