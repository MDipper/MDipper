<meta charset="UTF-8">
<title>Basic Tree - jQuery EasyUI Demo</title>
<link rel="stylesheet" type="text/css" href="${js}/jquery-easyui-1.4.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href=".${js}/jquery-easyui-1.4.5/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${js}/jquery-easyui-1.4.5/demo.css">
<script type="text/javascript" src="${js}/jquery-easyui-1.4.5/jquery.min.js"></script>
<script type="text/javascript" src="${js}/jquery-easyui-1.4.5/jquery.easyui.min.js"></script>
<div id="navigator" class="easyui-panel" style="padding:5px">
		<ul class="easyui-tree">
			<li>
				<span>My Documents</span>
				<ul>
					<li data-options="state:'closed'">
						<span>Photos</span>
						<ul>
							<li>
								<span>Friend</span>
							</li>
							<li>
								<span>Wife</span>
							</li>
							<li>
								<span>Company</span>
							</li>
						</ul>
					</li>
					<li>
						<span>Program Files</span>
						<ul>
							<li>Intel</li>
							<li>Java</li>
							<li>Microsoft Office</li>
							<li>Games</li>
						</ul>
					</li>
					<li>index.html</li>
					<li>about.html</li>
					<li>welcome.html</li>
				</ul>
			</li>
		</ul>
	</div>
 