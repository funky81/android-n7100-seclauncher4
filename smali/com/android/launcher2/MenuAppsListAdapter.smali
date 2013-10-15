.class public Lcom/android/launcher2/MenuAppsListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MenuAppsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;
    }
.end annotation


# instance fields
.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private setListItemData(Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 5
    .parameter "item"
    .parameter "listItem"

    .prologue
    .line 99
    const v3, 0x7f070074

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    .local v0, imageView:Landroid/widget/ImageView;
    const v3, 0x7f070075

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    .local v2, textView:Landroid/widget/TextView;
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 109
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_1

    .line 110
    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object v3, p1

    check-cast v3, Lcom/android/launcher2/FolderItem;

    invoke-static {v4, v3}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconWithPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    .local v1, itemBitmap:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    return-void

    .line 112
    .end local v1           #itemBitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .restart local v1       #itemBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private setListSubItemData(Lcom/android/launcher2/AppItem;Landroid/widget/TextView;)V
    .locals 7
    .parameter "item"
    .parameter "listItem"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 124
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 128
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    .line 129
    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object v3, p1

    check-cast v3, Lcom/android/launcher2/FolderItem;

    invoke-static {v4, v3}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconWithPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 134
    .local v2, itemBitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 135
    .local v1, drawables:[Landroid/graphics/drawable/Drawable;
    aget-object v0, v1, v5

    .line 136
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 141
    aget-object v3, v1, v5

    check-cast v3, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/FastBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 148
    return-void

    .line 131
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawables:[Landroid/graphics/drawable/Drawable;
    .end local v2           #itemBitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .restart local v2       #itemBitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 143
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #drawables:[Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v3, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v3, v2}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public getChild(II)Lcom/android/launcher2/AppItem;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .line 66
    .local v0, appItem:Lcom/android/launcher2/AppFolderItem;
    invoke-virtual {v0, p2}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    return-object v1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppsListAdapter;->getChild(II)Lcom/android/launcher2/AppItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 71
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 77
    if-nez p4, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 82
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppsListAdapter;->getChild(II)Lcom/android/launcher2/AppItem;

    move-result-object v1

    move-object v0, p4

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/MenuAppsListAdapter;->setListSubItemData(Lcom/android/launcher2/AppItem;Landroid/widget/TextView;)V

    .line 83
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 154
    .local v0, appItem:Lcom/android/launcher2/AppItem;
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    .line 155
    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .end local v0           #appItem:Lcom/android/launcher2/AppItem;
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v1

    .line 157
    :goto_0
    return v1

    .restart local v0       #appItem:Lcom/android/launcher2/AppItem;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Lcom/android/launcher2/AppItem;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mApps:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 174
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 89
    if-nez p3, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/launcher2/MenuAppsListAdapter;->setListItemData(Lcom/android/launcher2/AppItem;Landroid/view/View;)V

    .line 95
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 1
    .parameter "aGroupPosition"

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 198
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mListener:Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mListener:Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;

    invoke-interface {v0, p1}, Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;->onGroupCollapsed(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 1
    .parameter "aGroupPosition"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 190
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mListener:Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mListener:Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;

    invoke-interface {v0, p1}, Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;->onGroupExpanded(I)V

    .line 193
    :cond_0
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mApps:Ljava/util/List;

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListAdapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method

.method public setListener(Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;)V
    .locals 0
    .parameter "aListener"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsListAdapter;->mListener:Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;

    .line 205
    return-void
.end method

.method setTab(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsListAdapter;->notifyDataSetChanged()V

    .line 56
    return-void
.end method

.method public updateSecretItemList(Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 2
    .parameter "item"
    .parameter "listView"

    .prologue
    .line 208
    const v1, 0x7f070076

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 210
    .local v0, secretIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 211
    iget-boolean v1, p1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_1

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
