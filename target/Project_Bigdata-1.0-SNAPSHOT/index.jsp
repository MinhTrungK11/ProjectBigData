<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home </title>
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="https://www.isbn-us.com/wp-content/themes/isnbus/favicon.ico">
    <link rel="icon" href="https://www.isbn-us.com/wp-content/themes/isnbus/favicon.ico">
    <link rel="stylesheet" href="https://www.isbn-us.com/wp-content/themes/isnbus/style.css" type="text/css">
    <link type="text/css" rel="stylesheet" media="screen"
        href="https://www.isbn-us.com/wp-content/themes/isnbus/splashstyle.css">
    <link type="text/css" rel="stylesheet" media="screen"
        href="https://www.isbn-us.com/wp-content/themes/isnbus/css/bootstrap-theme.css">
    <link type="text/css" rel="stylesheet" media="screen"
        href="https://www.isbn-us.com/wp-content/themes/isnbus/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" media="screen"
        href="https://www.isbn-us.com/wp-content/themes/isnbus/css/responsive.css">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet" type="text/css">
    <script type="text/javascript" async=""
        src="//commondatastorage.googleapis.com/code.snapengage.com/js/a82ed9de-0717-4ae1-af4b-520520f39c56.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script id="yui__dyn_0" type="text/javascript"
        src="https://www.snapengage.com/chatjs/ServiceGetConfig?w=a82ed9de-0717-4ae1-af4b-520520f39c56"></script>
    
</head>


<body class="">
    <div class="bookonlinedb header">
        <div class="mainContainer">
            <div class="logo">
                <a href="">
                    <img src="https://bookdatabase.online/images/logo.png?0.8553666448628738" alt="">
                </a>
            </div>
        </div>

        <div class="admin">
            <a href="./manager" style="font-size: 20px; float: right; margin-right: 40px; margin-top: 15px;">Đến trang Admin</a>
        </div>
    </div>
    <div id="page-wrap" class="container_12">
        <div id="main-body">

            <div class="container bookonline">
                <div class="author_book_containt">
                    <h2>Search. Find. Explore</h2>
                    <p>GLOBAL BOOK ONLINE DATABASE offers a unique database for searching book titles. Search by
                        Author Name or Book Title.</p>
                    <div class="search_box">
                        <div class="isbn_title">Search by Title or Author Name</div>
                        <div class="form-group">
                            <form action="searchByAuthor">
                                <div class="input-group below24 bias-input-group">
                                    <div class="input-group-btn bs-dropdown-to-select-group">
                                        <div class="selector">
                                            <div id="selectField">
                                                <select name="optionsearch" class="form-select" aria-label="Default select example">
                                                    <option >Author</option>
                                                    <option >Title</option>
                                                </select>
                                            </div>
<!--                                            <ul  id="list" class="hide">
                                                <li class="options">
                                                    <p>Author</p>
                                                </li>
                                                <li class="options">
                                                    <p>Title</p>
                                                </li>
                                            </ul>-->
                                        </div>
                                    </div>
                                    <div class="input_search">
                                        <input type="text" name="searchauthor" class="form-control" placeholder="" value="">
                                    </div>
                                    <div class="butn">
                                        <input class="btn_search" value="Search" type="submit">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


                <div class="resent_title">
                    <div class="col-md-12 col-sm-12 post_title">Recently Added Titles</div>
                    <div class="clearfix"></div>
                    <div class="resent_post_img 1">
                        <ul>
                            <c:forEach items="${Listbook}" var="i" >
                                <li class="book-1" style="height: 387.573px;"><a
                                    href="${i.link}"><img
                                        src="${i.img}"></a>
                                    <h4>${i.title}</h4>
                                    <span class="author_by">By : ${i.author}</span>
                                    <p><a class="viewmore"
                                        href="description?id=${i.id}">View More</a>
                                    </p>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <script type="text/javascript">
                $(document).ready(function () {
                    $(".resent_title .resent_post_img li a").each(function () {
                        $(this).removeAttr("target");
                    });
                });
            </script>
            <div class="clear"></div>
        </div> <!--end of #main-body-->
    </div><!--end of #page-wrap-->

    <div id="footer">
        <div class="container_12">
            <div id="footer-info" class="col-md-3 col-sm-6 col-lg-3">
                <div id="text-8" class="widget widget_text">
                    <h2>Company</h2>
                    <div class="textwidget">Publisher Services<br>65 E. Wacker Pl #1800
                        <br>
                        Chicago, IL 60601
                        <br>
                        <div class="bbb-verify-img">
                            <!-- (c) 2005, 2012. Authorize.Net is a registered trademark of CyberSource Corporation -->
                            <div class="footer-bbb" style="margin-bottom:1rem;">
                                <a href="https://www.bbb.org/us/il/chicago/profile/bar-coding/bar-code-graphics-inc-0654-12016489/#sealclick"
                                    target="_blank" rel="nofollow noopener"><img
                                        src="https://seal-chicago.bbb.org/seals/blue-seal-150-110-whitetxt-bbb-12016489.png?0.37742511959435654"
                                        style="border: 0;" alt="Bar Code Graphics, Inc. BBB Business Review"></a>
                            </div>
                            <div class="seal-godaddy"><a href="https://www.shopperapproved.com/reviews/isbn-us.com/"
                                    onclick="var nonwin=navigator.appName!='Microsoft Internet Explorer'?'yes':'no'; var certheight=screen.availHeight-90; window.open(this.href,'shopperapproved','location='+nonwin+',scrollbars=yes,width=620,height='+certheight+',menubar=no,toolbar=no'); return false;"><img
                                        src="https://c683207.ssl.cf2.rackcdn.com/20823-m.gif?0.49016377198163164"
                                        style="border: 0" alt=""
                                        oncontextmenu="var d = new Date(); alert('Copying Prohibited by Law - This image and all included logos are copyrighted by Shopper Approved \251 '+d.getFullYear()+'.'); return false;"></a>
                            </div>
                            <div class="seal-godaddy"><img
                                    src="https://www.isbn-us.com/wp-content/themes/isnbus/images/footer_logo3.png?0.31652752164937525"
                                    alt="footer_logo3" width="auto" border="0" height="auto"></div>
                            <a href="https://www.isbn-us.com/reviews/">Reviews</a>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-md-3 col-sm-6 col-lg-3">
                <div id="nav_menu-2" class="widget widget_nav_menu">
                    <h2>Links</h2>
                    <div class="menu-footer-links-menu-container">
                        <ul id="menu-footer-links-menu" class="menu">
                            <li id="menu-item-8820"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8820"><a
                                    href="https://www.isbn-us.com/publisherservices/">Services</a></li>
                            <li id="menu-item-8822"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8822"><a
                                    href="https://www.isbn-us.com/about/">About Us</a></li>
                            <li id="menu-item-8823"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8823"><a
                                    href="https://www.isbn-us.com/instructions/">How To Order</a></li>
                            <li id="menu-item-8830"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8830"><a
                                    href="https://www.isbn-us.com/faqs/">FAQs</a></li>
                            <li id="menu-item-8831"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8831"><a
                                    href="https://www.isbn-us.com/testimonials/">Testimonials</a></li>
                            <li id="menu-item-8834"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8834"><a
                                    href="https://www.isbn-us.com/terms-conditions/">Terms &amp; Conditions</a></li>
                            <li id="menu-item-8835"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8835"><a
                                    href="https://www.isbn-us.com/warning/">A Warning About ISBN Resellers</a></li>
                            <li id="menu-item-16598"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16598"><a
                                    href="https://www.isbn-us.com/blog/">Blog</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 col-lg-3 withouttitle">
                <h2>&nbsp;</h2>
                <div id="nav_menu-3" class="widget widget_nav_menu">
                    <div class="menu-footer-link-menu-right-container">
                        <ul id="menu-footer-link-menu-right" class="menu">
                            <li id="menu-item-20359"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-20359"><a
                                    href="https://www.isbn-us.com/book-sales-page/">Book Sales Page</a></li>
                            <li id="menu-item-16589"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16589"><a
                                    href="https://www.isbn-us.com/publisherservices/book-printing/">Book Printing</a>
                            </li>
                            <li id="menu-item-16590"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16590"><a
                                    href="https://www.isbn-us.com/publisherservices/book-formatting/">Interior Book
                                    Formatting</a></li>
                            <li id="menu-item-16591"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16591"><a
                                    href="https://www.isbn-us.com/publisherservices/book-cover-design/">Book Cover
                                    Design</a></li>
                            <li id="menu-item-16592"
                                class="menu-item menu-item-type-custom menu-item-object-custom menu-item-16592"><a
                                    href="https://www.ebookconversion.pro">Ebook Conversion</a></li>
                            <li id="menu-item-16593"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16593"><a
                                    href="https://www.isbn-us.com/publisherservices/kindlesetup/">Ebook Kindle Upload
                                    Services</a></li>
                            <li id="menu-item-16594"
                                class="menu-item menu-item-type-custom menu-item-object-custom menu-item-16594"><a
                                    href="https://yourfirstreview.com/">Book Review Service</a></li>
                            <li id="menu-item-25507"
                                class="menu-item menu-item-type-custom menu-item-object-custom menu-item-25507"><a
                                    href="https://www.isbn-us.com/copyright-registration-2/">Copyright Registration</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>


            <div class="col-md-3 col-sm-6 col-lg-3 widget_text">
                <div id="latest_tweets_widget-3" class="widget widget_latest_tweets_widget">
                    <h2>Twitter</h2>
                    <div class="latest-tweets">
                        <ul>
                            <li>
                                <p class="tweet-text">I just uploaded “GS1 GTIN Licensing - Next Steps” to <a
                                        class="twitter-hashtag"
                                        href="https://twitter.com/search?q=%23Vimeo&amp;src=hash" target="_blank"
                                        rel="nofollow">#Vimeo</a>: <a href="https://vimeo.com/741632862" target="_blank"
                                        rel="nofollow">vimeo.com/741632862</a></p>
                                <p class="tweet-details"><a
                                        href="https://twitter.com/PubServices/status/1561398010181025793"
                                        target="_blank"><time datetime="2022-08-21 17:01:09-0500">August 21, 2022 5:01
                                            pm</time></a></p>
                            </li>
                            <li>
                                <p class="tweet-text">I just uploaded “<a href="http://GTIN.Cloud" target="_blank"
                                        rel="nofollow">GTIN.Cloud</a> Overview” to <a class="twitter-hashtag"
                                        href="https://twitter.com/search?q=%23Vimeo&amp;src=hash" target="_blank"
                                        rel="nofollow">#Vimeo</a>: <a href="https://vimeo.com/738759602" target="_blank"
                                        rel="nofollow">vimeo.com/738759602</a></p>
                                <p class="tweet-details"><a
                                        href="https://twitter.com/PubServices/status/1557832869896134656"
                                        target="_blank"><time datetime="2022-08-11 20:54:33-0500">August 11, 2022 8:54
                                            pm</time></a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>


            <div class="clear"></div>

        </div>
        <div class="clear"></div>
        <div id="copyright">
            <div class="container">
                <div class="footer-bottom-cnt">
                    ©2022 Publisher Services | Publisher Services is a division of <a
                        href="https://www.barcode.graphics/" target="_blank">Bar Code Graphics, Inc.</a> | <a
                        href="https://www.isbn-us.com/privacy-policy/"
                        style="font-size: 12px;color: #a7a7a7; text-decoration: none;">Privacy Policy</a>
                </div>
            </div>
        </div>
    </div>

    <script>
        var selectField = document.getElementById("selectField");
        var selectText = document.getElementById("selectText");
        var options = document.getElementsByClassName("options");
        var list = document.getElementById("list");
        var arrowIcon = document.getElementById("arrowIcon");

        selectField.onclick = function() {
            list.classList.toggle("hide");
        }

        for(option of options){
            option.onclick = function() {
                selectText.innerHTML = this.textContent;
                list.classList.toggle("hide");
            }
        }
        
    </script>

    <!-- begin SnapEngage code -->
    <script
        type="text/javascript">(function () { var se = document.createElement('script'); se.type = 'text/javascript'; se.async = true; se.src = '//commondatastorage.googleapis.com/code.snapengage.com/js/a82ed9de-0717-4ae1-af4b-520520f39c56.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(se, s); })();</script>
    <!-- end SnapEngage code -->
    <script type="text/javascript"
        src="https://www.isbn-us.com/wp-content/plugins/isbn/js/isbn-front.js?ver=682c169c4b28b146943f102dd6aa3339"
        id="isbns-js-js"></script>

    <!-- Don't forget analytics -->
    <script>
        $(document).ready(function () {
            $("#premium-pricing option[value='Free Trial']").remove();
        });
    </script>

    <script>
        var returnedSuggestion = ''
        let editor, doc, cursor, line, pos
        document.addEventListener("keydown", (event) => {
            setTimeout(() => {
                editor = event.target.closest('.CodeMirror');
                if (editor) {
                    doc = editor.CodeMirror.getDoc()
                    cursor = doc.getCursor()
                    line = doc.getLine(cursor.line)
                    pos = { line: cursor.line, ch: line.length }
                    if (event.key == "Enter") {
                        var query = doc.getRange({ line: Math.max(0, cursor.line - 10), ch: 0 }, { line: cursor.line, ch: 0 })
                        window.postMessage({ source: 'getSuggestion', payload: { data: query } })
                        //displayGrey(query)
                    }
                    else if (event.key == "ArrowRight") {
                        acceptTab(returnedSuggestion)
                    }
                }
            }, 0)
        })

        function acceptTab(text) {
            if (suggestionDisplayed) {
                doc.replaceRange(text, pos)
                suggestionDisplayed = false
            }
        }
        function displayGrey(text) {
            var element = document.createElement('span')
            element.innerText = text
            element.style = 'color:grey'
            var lineIndex = pos.line;
            editor.getElementsByClassName('CodeMirror-line')[lineIndex].appendChild(element)
            suggestionDisplayed = true
        }
        window.addEventListener('message', (event) => {
            if (event.source !== window) return
            if (event.data.source == 'return') {
                returnedSuggestion = event.data.payload.data
                displayGrey(event.data.payload.data)
            }
        })
    </script>
</body>
</html>