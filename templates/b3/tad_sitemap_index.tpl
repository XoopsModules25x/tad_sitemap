<{$toolbar}>

<{if $now_op=="list_tad_sitemap"}>
  <h1><{$smarty.const._MD_TADSITEMA_SMNAME1}></h1>
  <{$about_site}>
  <{if $all_content}>
    <{assign var="i" value=0}>
    <table class="table">
    <{foreach from=$all_content item=map}>
      <{assign var="i" value=$i+1}>
      <{assign var="j" value=0}>
      <tr>
        <th><{$i}>.<{$map.name}></th>
        <td>
          <{if $map.item}>
            <{foreach from=$map.item item=sub}>
              <{if $sub.name}>
                <{assign var="j" value=$j+1}>
                <div>
                  <span class="label label-info"><{$i}>-<{$j}></span>
                  <a href="<{$xoops_url}>/modules/<{$map.dirname}>/<{$sub.url}>"><{$sub.name}></a>
                  <{if $sub.description}>  : <{$sub.description}><{/if}>
                </div>
              <{/if}>
            <{/foreach}>
          <{/if}>
        </td>
      </tr>
    <{/foreach}>
    </table>

  <{else}>
    <{if $isAdmin}>
      <div class="jumbotron text-center">
        <a href="<{$xoops_url}>/modules/tad_sitemap/admin/main.php" class="btn btn-info"><{$smarty.const._TAD_ADD}></a>
      </div>
    <{/if}>
  <{/if}>
<{/if}>
