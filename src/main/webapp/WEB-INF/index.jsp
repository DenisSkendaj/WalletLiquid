<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <head>
        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="/css/style.css">
    </head>
<body>

<style>
    @media screen and(max-width: 768px) {
        #desc-container{
            width: 75%;
            font-size: 150px;
        }
        #nav-text{
            display: none;
        }
    }
</style>

<nav class="d-flex align-items-center p-2">
    <div id="nav-1" class="d-flex align-items-center nav-logo">
        <a class="d-flex" href="#"><img id="nav-logo-img" src="${pageContext.request.contextPath}/images/hyperliquid1.gif"></a>
        <a class="d-flex text-decoration-none text-white" href="#"><h3>Wallet<h3 style="font-style: italic;">liquid</h3></h3></a>
    </div>
    <div id="nav-2" class="nav-container">
        <!-- TradingView Widget BEGIN -->
        <div class="tradingview-widget-container">
            <div class="tradingview-widget-container__widget"></div>
            <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js" async>
                {
                    "symbols": [
                    {
                        "description": "BTC - USD",
                        "proName": "BINANCE:BTCUSD"
                    },
                    {
                        "description": "ETH - USD",
                        "proName": "BINANCE:ETHUSD"
                    },
                    {
                        "description": "UNI - USD",
                        "proName": "BINANCE:UNIUSD"
                    },
                    {
                        "description": "XRP - USD",
                        "proName": "BINANCE:XRPUSD"
                    },
                    {
                        "description": "LINK - USD",
                        "proName": "BINANCE:LINKUSD"
                    },
                    {
                        "description": "HBAR - USD",
                        "proName": "BINANCE:HBARUSD"
                    },
                    {
                        "description": "NXRA - USD",
                        "proName": "BITFINEX:NXRAUSD"
                    },
                    {
                        "description": "RBN - USD",
                        "proName": "COINBASE:RBNUSD"
                    },
                    {
                        "description": "QNT - USD",
                        "proName": "BINANCE:QNTUSD"
                    },
                    {
                        "description": "LCX - USD",
                        "proName": "COINBASE:LCXUSD"
                    },
                    {
                        "description": "EWT - USD",
                        "proName": "KRAKEN:EWTUSD"
                    },
                    {
                        "description": "DAG - USD",
                        "proName": "CRYPTO:DAGUSD"
                    },
                    {
                        "description": "MNW - USD",
                        "proName": "CRYPTO:MNWUSD"
                    }
                ],
                    "showSymbolLogo": true,
                    "colorTheme": "dark",
                    "isTransparent": true,
                    "displayMode": "compact",
                    "locale": "en"
                }
            </script>
        </div>
        <!-- TradingView Widget END -->
    </div>
    <a id="nav-3" href="/login"><button class="p-2 nav-btn">Get Started</button></a>
</nav>
<main class="d-flex">
    <div id="desc-container">
        <h1>
            Derivatives<br>
            Paper<br>
            Trading Has<br>
            Arrived
        </h1>
    </div>
</main>
<footer class="d-flex justify-content-between p-4">
    <div class="w-50">
        <p class="text-muted footer-text">Trade crypto futures on the world's first</p>
        <p class="text-muted footer-text">derivatives paper trading platform.</p>
    </div>
    <div>
        <a title="Github" href="https://github.com/DenisSkendaj" target="_blank" rel="noreferrer" class="githubsvg">
            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" stroke="#A5A5A8" xmlns="http://www.w3.org/2000/svg">
                <path d="M6.00016 12.6667C2.66683 13.6667 2.66683 11 1.3335 10.6667M10.6668 14.6667V12.0867C10.6918 11.7688 10.6489 11.4492 10.5408 11.1492C10.4328 10.8492 10.2621 10.5756 10.0402 10.3467C12.1335 10.1133 14.3335 9.32 14.3335 5.68C14.3333 4.74922 13.9753 3.85413 13.3335 3.18C13.6374 2.36567 13.6159 1.46557 13.2735 0.666666C13.2735 0.666666 12.4868 0.433332 10.6668 1.65333C9.13884 1.23921 7.52816 1.23921 6.00016 1.65333C4.18016 0.433332 3.3935 0.666666 3.3935 0.666666C3.05108 1.46557 3.02959 2.36567 3.3335 3.18C2.68691 3.85913 2.32851 4.76231 2.3335 5.7C2.3335 9.31333 4.5335 10.1067 6.62683 10.3667C6.40749 10.5933 6.23834 10.8636 6.13037 11.1599C6.0224 11.4563 5.97803 11.772 6.00016 12.0867V14.6667" stroke-linecap="round" stroke-linejoin="round"></path>
            </svg>
            <p class="github-text">GitHub</p>
        </a>
    </div>
</footer>

</body>
</html>
