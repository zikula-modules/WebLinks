{adminheader}
<div class="z-admin-content-pagetitle">
    {icon type="regenerate" size="small"}
    <h3>{gt text='Link Validation'}</h3>
</div>

{if $cid == 0}
<h2>{gt text="Link Validation: All"}</h2>
{/if}
{if $cid != 0}
<h2>{gt text="Link Validation: by Category"}</h2>
{/if}

<table class="z-admintable">
    <thead>
        <tr>
            <th>{gt text="Status"}</th>
            <th>{gt text="Link title"}</th>
            <th>{gt text="Functions"}</th>
        </tr>
    </thead>
    <tbody>
        {foreach from=$links item='links'}
        <tr class="{cycle values="z-odd,z-even" name=abacs}">
            {if !$links.fp}
            <td>{img modname='core' src='editdelete.png' set='icons/extrasmall' __alt="Failed!" __title="Failed!"}</td>
            <td><a href="{$links.url|safetext}" target="new">{$links.title|safetext}</a></td>
            <td>[&nbsp;<a href="{modurl modname='Weblinks' type='admin' func='modlink' lid=$links.lid authid=$authid}">{img modname='core' src='xedit.png' set='icons/extrasmall' __alt="Edit" __title="Edit"}</a>&nbsp;|&nbsp;<a href="{modurl modname='Weblinks' type='admin' func='dellink' lid=$links.lid authid=$authid}">{img modname='core' src='14_layer_deletelayer.png' set='icons/extrasmall' __alt="Delete" __title="Delete"}</a>&nbsp;]</td>
            {/if}

            {if $links.fp}
            <td>{img modname='core' src='button_ok.png' set='icons/extrasmall' __alt="OK" __title="OK"}</td>
            <td><a href="{$links.url|safetext}" target="new">{$links.title|safetext}</a></td>
            <td>{gt text="None"}</td>
            {/if}
        </tr>
        {foreachelse}
        <tr>
            <td colspan="3">{gt text="No link found"}</td>
        </tr>
        {/foreach}
    </tbody>
</table>