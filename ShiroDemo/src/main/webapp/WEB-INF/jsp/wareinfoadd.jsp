<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>新增商品基础信息 <i class="fa fa-user"></i><small>${userSession.usercode}</small></h2>
             <div class="clearfix"></div>
      </div>
      <div class="x_content">
	 
           <div class="clearfix"></div>
        <form class="form-horizontal form-label-left" action="${pageContext.request.contextPath}/doaddware" method="post" enctype="multipart/form-data">
          
          <input type="hidden" id="path" value="${pageContext.request.contextPath}">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">商品名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="softwarename" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" name="warename"  required="required"
               placeholder="请输入商品名称" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">商品价格 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="APKName" class="form-control col-md-7 col-xs-12" onkeyup="value=value.replace(/[^\d]/g,'')"
              	data-validate-length-range="20" data-validate-words="1" name="price"   required="required"
              	placeholder="请输入商品价格" type="text">
            </div>
          </div>
          
        
          <div class="ln_solid"></div>
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
              <button id="send" type="submit" class="btn btn-success">保存</button>
              <button type="button" class="btn btn-primary" id="back">返回</button>
              <br/><br/>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<%@include file="common/footer.jsp"%>
<%-- <script src="${pageContext.request.contextPath }/statics/localjs/appinfoadd.js"></script> --%>