{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<h1>{$attribute.content.streaming}</h1>

    	{switch match=$attribute.content.streaming}
    		{case match=file}
    	<a
    		 href={concat("content/download/",$attribute.contentobject_id,"/",$attribute.content.contentobject_attribute_id,"/",$attribute.content.original_filename)|ezurl} 
			 style="display:block;width:{$attribute.content.width}px;height:{$attribute.content.height}px"  
			 id="{$attribute.contentobject_id}">
		</a>
		<script>
			flowplayer("{$attribute.contentobject_id}", "{'images/flowplayer-3.0.7.swf'|ezdesign(no)}", {ldelim} clip: {ldelim} autoPlay:{if $attribute.content.is_autoplay} true,{else} false,{/if} autoBuffering: true  {rdelim} {rdelim});
		</script>
			{/case}
		{case match=http}
    	<a
    		 href={$attribute.content.url}
			 style="display:block;width:{$attribute.content.width}px;height:{$attribute.content.height}px"  
			 id="{$attribute.contentobject_id}">
		</a>
		<script>
			flowplayer("{$attribute.contentobject_id}", "{'images/flowplayer-3.0.7.swf'|ezdesign(no)}", {ldelim} clip: {ldelim} autoPlay:{if $attribute.content.is_autoplay} true,{else} false,{/if} autoBuffering: true  {rdelim} {rdelim});
		</script>
			{/case}
		{case match=rtmp}
    	<a
    		 class="player" 
			 style="display:block;width:{$attribute.content.width}px;height:{$attribute.content.height}px"  
			 id="{$attribute.contentobject_id}">
		</a>
		<script>
			flowplayer("{$attribute.contentobject_id}", "{'images/flowplayer-3.0.7.swf'|ezdesign(no)}", 
			{ldelim} 
			clip: {ldelim}
				url: '{$attribute.content.movie}',
				provider: 'rtmp',
				autoPlay:{if $attribute.content.is_autoplay} true,{else} false,{/if} 
				autoBuffering: true 
					{rdelim},
			plugins:
					{ldelim}
						rtmp: {ldelim}
							url: '{'images/flowplayer.rtmp-3.0.2.swf'|ezdesign(no)}',
							netConnectionUrl: '{$attribute.content.url}'
							{rdelim}
					{rdelim}
			{rdelim});
		</script>
			{/case}
		{/switch}
		