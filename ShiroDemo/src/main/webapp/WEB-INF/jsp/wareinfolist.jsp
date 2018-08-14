
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
	<div class="col-md-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>
					商品信息查看 <i class="fa fa-user"></i><small><shiro:principal></shiro:principal>
					<shiro:guest>游客，<a href="${pageContext.request.contextPath }/tologin">去登陆</a></shiro:guest>
						- 您可以查看并删除。^_^</small>
				</h2>
				<div class="clearfix"></div>
			</div>
			
	</div>
</div>
<div class="col-md-12 col-sm-12 col-xs-12">
	<div class="x_panel">
		<div class="x_content">
			<p class="text-muted font-13 m-b-30"></p>
			<div id="datatable-responsive_wrapper"
				class="dataTables_wrapper form-inline dt-bootstrap no-footer">
				<div class="row">
					<div class="col-sm-12">

						<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline collapsed"
							cellspacing="0" width="100%" role="grid" aria-describedby="datatable-responsive_info" style="width: 100%;">
							<thead>
								<tr role="row">
									<th class="sorting_asc" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										aria-label="First name: activate to sort column descending"
										aria-sort="ascending">商品名称</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										aria-label="Last name: activate to sort column ascending">
										商品价格</th>
							
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 124px;"
										aria-label="Last name: activate to sort column ascending">
										操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="ware" items="${wares}" varStatus="status">
									<tr role="row" class="odd">
										<td tabindex="0" class="sorting_1">${ware.warename}</td>
										<td>${ware.price }</td>
										
										<td>

										<div class="btn-group">
                      <button type="button" class="btn btn-danger">点击操作</button>
                      <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <span class="caret"></span>
                        <span class="sr-only">Toggle Dropdown</span>
                      </button>
                      <ul class="dropdown-menu" role="menu">
                      
						<li>
							<a  class="deleteApp" href="${pageContext.request.contextPath }/delware?id=${ware.id }"  data-toggle="tooltip" data-placement="top" >删除</a>
						</li>
                      </ul>
                    </div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				
			</div>

		</div>
	</div>
</div>
</div>
<%@include file="common/footer.jsp"%>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath }/statics/localjs/applist.js"></script> --%>

<%-- <script src="${pageContext.request.contextPath }/statics/localjs/rollpage.js"></script>
<script src="${pageContext.request.contextPath}/statics/localjs/appinfolist.js"></script> --%>