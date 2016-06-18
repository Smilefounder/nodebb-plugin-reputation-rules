<form id="reputation-rules">
    <div class="row">
        <div class="col-lg-9">
            <div class="panel">
                <div class="panel-body">
				    <h3>Reputation Rules Plugin</h3>
					<p>This plugin lets you configure the parameters to manage the reputation system in your NodeBB instance.</p>
					<p class="alert alert-warning">Remember to <strong>save AND reload</strong> to apply changes to all running instances of NodeBB.</p>

                    <h3>Upvoting</h3>
                    <div class="form-group">
                        <!-- (MIN_POSTS_TO_UPVOTE) -->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Minimum amount of posts to upvote:</label>
                            <input class="form-control" type="number" data-key="minPostsToUpvote" title="Minimum posts to upvote">
                        </div>
                        <!-- (MIN_DAYS_TO_UPVOTE) -->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Minimum amount of days since registration to upvote:</label>
                            <input class="form-control" type="number" data-key="minDaysToUpvote" title="Minimum days to upvote">
                        </div>
                        <!-- (UPVOTE_EXTRA_PERCENTAGE) -->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Percentage of voter's reputation that is added as extra (upvote weigh):</label>
                            <input class="form-control" type="number" data-key="upvoteExtraPercentage" title="Upvote weigh">
                        </div>
                        <!-- (MAX_POINTS_FOR_UPVOTE) -->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Max upvote weigh (points):</label>
                            <input class="form-control" type="number" data-key="maxUpvoteWeigh" title="Max upvote points">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <h3>Downvoting</h3>
                    <div class="form-group">
                        <!-- (MIN_POSTS_TO_DOWNVOTE) -->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Minimum amount of posts to downvote:</label>
                            <input class="form-control" type="number" data-key="minPostsToDownvote" title="Minimum posts to downvote">
                        </div>
                        <!-- (MIN_DAYS_TO_DOWNVOTE) -->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Minimum amount of days since registration to downvote:</label>
                            <input class="form-control" type="number" data-key="minDaysToDownvote" title="Minimum days to downvote">
                        </div>
                        <!-- (MIN_REPUTATION_TO_DOWNVOTE) -->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Minimum amount of reputation to downvote:</label>
                            <input class="form-control" type="number" data-key="minReputationToDownvote" title="Minimum reputation to downvote">
                        </div>
                        <!-- (DOWNVOTE_EXTRA_PERCENTAGE) -->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Percentage of voter's reputation that is substracted to post author (downvote weigh):</label>
                            <input class="form-control" type="number" data-key="downvoteExtraPercentage" title="Downvote weigh">
                        </div>
                        <!-- (DOWNVOTE_PENALIZATION) -->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Downvote penalization (amount of points to remove from user who downvotes):</label>
                            <input class="form-control" type="number" data-key="downvotePenalization" title="Downvote penalization">
                        </div>
                        <!-- (MAX_POINTS_FOR_DOWNVOTE) -->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Max downvote weigh (points):</label>
                            <input class="form-control" type="number" data-key="maxDownvoteWeigh" title="Max downvote points">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <h3>Global settings</h3>
                    <div class="form-group">
                        <!-- (MAX_VOTES_PER_USER_AND_THREAD) -->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Maximum votes allowed per user in a single thread:</label>
                            <input class="form-control" type="number" data-key="maxVotesPerUserInThread" title="Maximum amount of votes per user and thread">
                        </div>
                        <!--(MAX_VOTES_TO_SAME_USER_PER_MONTH)-->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Maximum amount of votes allowed to the same user each month:</label>
                            <input class="form-control" type="number" data-key="maxVotesToSameUserInMonth" title="Maximum amount of votes allowed per month to the same user">
                        </div>
                        <!-- (REP_LOG_NAMESPACE) -->
                        <!--<div class="col-xs-12 col-md-6 form-group">
                            <label>Name of the reputation log namespace:</label>
                            <input class="form-control" type="text" data-key="repLogNamespace" title="Namespace of reputation log">
                        </div>-->
                        <!-- (DISABLED_CATEGORIES_IDS) -->
                        <div class="col-xs-12 col-md-6 form-group">
                            <label>Lists of category ids where the reputation system must be disabled:</label>
                            <div data-key="disabledCategoriesIds" data-attributes='{"data-type":"input", "style":"width:80%;margin-bottom:10px;"}' data-split="<br>" data-new='' style="width:100%;"></div>
                            <!--<input class="form-control" type="text" data-key="disabledCategoriesIds" title="Lists disabled categories">-->
                        </div>
                    </div>
                    <div class="clearfix"></div>
					<div class="form-group">
					    <div class="col-xs-12 col-md-6 form-group">
                            <button type="button" class="btn btn-success form-control" id="save">
                                <i class="fa fa-fw fa-save"></i> Save Configuration
                            </button>
                        </div>
                        <div class="col-xs-12 col-md-6 form-group">
                            <button type="button" class="btn btn-info form-control" id="reload">
                                <i class="fa fa-fw fa-refresh"></i> Reload NodeBB
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

<script type="text/javascript">

require(['settings'], function(settings) {

    settings.sync('reputation-rules', $('#reputation-rules'));
    
    $('#reset').click( function (event) {
        $('#reputation-rules')[0].reset();
    });
    
    $('#clear').click( function (event) {
        $('#reputation-rules').find('input').val('');
    });


    var wrapper = $("#reputation-rules");
    settings.sync('reputation-rules', wrapper);
    $('#save').click(function(event){
        event.preventDefault();
        settings.persist('reputation-rules', wrapper, function() {
            socket.emit('admin.settings.syncReputationRules');
        });
    });

    $('#reload').click(function(event) {
        event.preventDefault();
        require(['admin/modules/instance'], function(instance) {
            instance.reload();
        });
    });

});

</script>
