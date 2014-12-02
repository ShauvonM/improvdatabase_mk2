define(['jquery',
        'underscore',
        'backbone',
        'moment',

        'deny',
        'dynamictable',
        'autocomplete',

        'tmpl!templates/tagInput.html',

        'models/tag'
        ],
    function($, _, Backbone, moment, deny, DynamicTable, AutoComplete, tagInputTemplate, Tag) {
        return Backbone.View.extend({
            events: {
                "click .tag": "removeTag",
                "autoComplete.selection input": "addTag",
                "click #addTagLink": "showAddTag"
            },
            initialize: function(options) {
                this.GameID = options.GameID;
                this.TagGameCollection = options.TagGameCollection;
            },
            render: function() {
                var self = this;

                this.$el.html(tagInputTemplate());

                if (this.GameID) {
                    _.each(this.TagGameCollection.where({GameID: this.GameID}), function(tagGame) {
                        var tag = self.collection.findWhere({TagID: tagGame.get("TagID")});
                        self.addTag(null, tag.get("Name"), tag);
                    });
                    this.$("label").hide();
                    this.$("a").removeClass("hide");
                    this.$("input").addClass("hide");
                } else {
                    this.showAddTag();
                }
            },
            showAddTag: function(e) {
                this.$("a").addClass("hide");
                this.$("input").removeClass("hide");
                Backbone.trigger("resize");

                this.$("input").autocomplete({
                    data: this.collection,
                    property: "Name",
                    idProperty: "TagID",
                    menuClass: "shadow3",
                    menuWidth: this.$("input").outerWidth()
                });

                if (e) {
                    this.$("input").focus();
                }

                if (e) {
                    e.stopPropagation();
                    return false;
                }
            },
            removeTag: function(e) {
                var tagid = $(e.currentTarget).data("tagid");
                $(e.currentTarget).remove();
                this.trigger("tag.remove");

                if (this.GameID) {
                    this.TagGameCollection.removeTagFromGame(tagid, this.GameID);
                }
            },
            addTag: function(e, name, model) {
                var $tag = this.$("#tagTemplate").clone(),
                    tagID;

                if (name) {
                    $tag.html(name).attr("id", "").removeClass("hide");
                    this.$(".tags a").before($tag);
                    this.$("input").val("");
                    this.trigger("tag.add");

                    if (!model) {
                        var newTag = new Tag();
                        var self = this;
                        var tagData = {Name: name};
                        if (this.GameID) {
                            tagData.GameID = this.GameID;
                        }
                        newTag.save({Name: name}, {
                            success: function(model, response, options) {
                                Backbone.trigger("tag-add", model);
                                $tag.data("tagid", model.get("TagID"));
                                self.TagGameCollection.addTagToGame(model.get("TagID"), self.GameID, response.TagGameID);
                            }, 
                            error: function(model, xhr, options) {

                            }
                        });
                    } else {
                        $tag.data("tagid", model.get("TagID"));

                        if (e && this.GameID) {
                            this.TagGameCollection.addTagToGame(model.get("TagID"), this.GameID);
                        }
                    }
                }
            }
        });
    });