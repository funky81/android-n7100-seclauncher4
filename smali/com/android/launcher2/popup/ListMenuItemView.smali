.class public Lcom/android/launcher2/popup/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/android/launcher2/popup/MenuView$ItemView;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/popup/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTextAppearance:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 72
    iput-object p1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 277
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 282
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popup/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 283
    return-void
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 240
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030030

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 242
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/popup/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 243
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 259
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x10900a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 263
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popup/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 264
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/android/launcher2/popup/MenuItemImpl;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/launcher2/popup/MenuItemImpl;I)V
    .locals 2
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    .line 100
    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->setVisibility(I)V

    .line 102
    invoke-virtual {p1, p0}, Lcom/android/launcher2/popup/MenuItemImpl;->getTitleForItemView(Lcom/android/launcher2/popup/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->setCheckable(Z)V

    .line 104
    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/popup/ListMenuItemView;->setShortcut(ZC)V

    .line 105
    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->setEnabled(Z)V

    .line 107
    return-void

    .line 100
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 86
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    const v0, 0x7f0700b6

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 89
    iget v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 94
    :cond_0
    const v0, 0x7f0700b7

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 95
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 227
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 230
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    .local v0, iconLp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 232
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 235
    .end local v0           #iconLp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 236
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 5
    .parameter "checkable"

    .prologue
    const/16 v3, 0x8

    .line 128
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/launcher2/popup/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 138
    iget-object v4, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->insertRadioButton()V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 142
    .local v0, compoundButton:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 151
    .local v2, otherCompoundButton:Landroid/widget/CompoundButton;
    :goto_1
    if-eqz p1, :cond_7

    .line 152
    iget-object v4, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/launcher2/popup/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 154
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 155
    .local v1, newVisibility:I
    :goto_2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 160
    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 161
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0

    .line 144
    .end local v0           #compoundButton:Landroid/widget/CompoundButton;
    .end local v1           #newVisibility:I
    .end local v2           #otherCompoundButton:Landroid/widget/CompoundButton;
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_5

    .line 145
    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->insertCheckBox()V

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 148
    .restart local v0       #compoundButton:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .restart local v2       #otherCompoundButton:Landroid/widget/CompoundButton;
    goto :goto_1

    :cond_6
    move v1, v3

    .line 154
    goto :goto_2

    .line 164
    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 165
    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->insertRadioButton()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 184
    .local v0, compoundButton:Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 185
    return-void

    .line 178
    .end local v0           #compoundButton:Landroid/widget/CompoundButton;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    .line 179
    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->insertCheckBox()V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .restart local v0       #compoundButton:Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .parameter "forceShow"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 111
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 202
    .local v0, showIcon:Z
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    .line 223
    .end local p1
    :cond_1
    :goto_1
    return-void

    .end local v0           #showIcon:Z
    .restart local p1
    :cond_2
    move v0, v1

    .line 201
    goto :goto_0

    .line 206
    .restart local v0       #showIcon:Z
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_1

    .line 210
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    .line 211
    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->insertIconView()V

    .line 214
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_8

    .line 215
    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .end local p1
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 215
    .restart local p1
    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    .line 221
    :cond_8
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setShortcut(ZC)V
    .locals 3
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 188
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 191
    .local v0, newVisibility:I
    :goto_0
    if-nez v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :cond_1
    return-void

    .line 188
    .end local v0           #newVisibility:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    const/16 v1, 0x8

    .line 114
    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
