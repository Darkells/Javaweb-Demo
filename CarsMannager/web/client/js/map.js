var map = new BMap.Map("map");//创建地图对象
	map.centerAndZoom("广州",13)//初始化地图var map=new BMap.Map("map");    //创建百度地图对象
map.setCurrentCity("广州");        //设置地图城市
map.enableScrollWheelZoom();    //开启 鼠标滚轮改变地图显示级别 功能
map.enableDragging();       //开启鼠标拖拽功能
    //以下四句是地图的添加控件方法 和 控件实例
map.addControl(new BMap.ScaleControl({anchor:BMAP_ANCHOR_TOP_LEFT}));   //添加一个比例尺控件
map.addControl(new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT}));  //添加一个平移缩放控件
map.addControl(new BMap.MapTypeControl({anchor:BMAP_ANCHOR_TOP_RIGHT}));    //添加一个切换地图类型的控件
map.addControl(new BMap.OverviewMapControl({isOpen:true})); //添加一个地图缩略图控件
//移除控件的方法是：removeControl(control)

var geocoder=new BMap.Geocoder();   //Geocoder服务类，它的getPoint()方法可获取指定地理位置的经纬度坐标
geocoder.getPoint("广东技术师范学院",function(point){
    //point是一个基础类Point(lng,lat)，以经、纬度来表示一个地理点坐标。
    //这里地址解析成功的话point形参指经纬地理坐标，否则为Null
    map.centerAndZoom(point,13);    //设置百度地图的中心点坐标 和 显示级别
    var marker=new BMap.Marker(point);  //创建地图上一个图像标注（覆盖物、在中心点point位置）
    map.addOverlay(marker);     //覆盖物方法，将覆盖物添加到地图中
    marker.setAnimation(BMAP_ANIMATION_BOUNCE); //为图像标注添加动画效果
    var info=new BMap.InfoWindow("地址：广东技术师范学院",{
        width:250,
        height:60,
        title:"昌盛大厦"
    }); //创建弹出信息的窗口（覆盖物类）
    marker.addEventListener("click",function(){ //点击图像标注时弹出信息窗口
        map.openInfoWindow(info,point); //在指定点（此处为point中心点）弹出信息窗口
    });
},"广州");